using System;
using System.IO;
using System.Threading.Tasks;
using Google.Protobuf;
using Grpc.Net.Client;
using Newtonsoft.Json.Linq;
using Trinsic.Server.Tests;
using Trinsic.Services;
using Xunit;
using W3C.CCG.SecurityVocabulary;
using DIDComm.Messaging;
using System.Linq;
using FluentAssertions;
using Google.Protobuf.WellKnownTypes;
using Microsoft.Extensions.DependencyInjection;
using LinkedDataProofs;

namespace Trinsic.Sdk.Tests
{
    [Collection(HostFixture.CollectionDefinitionName)]
    public class WalletTests
    {
        private readonly WalletService walletService;
        private readonly ProviderService providerService;
        private readonly HostFixture hostFixture;

        public WalletTests(HostFixture hostFixture)
        {
            walletService = new WalletService(hostFixture.Channel);
            providerService = new ProviderService(hostFixture.Channel);
            this.hostFixture = hostFixture;
        }

        [Fact]
        public async Task CreateWalletProfile()
        {
            var profile = await walletService.CreateWallet();

            var homePath = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);
            Directory.CreateDirectory(Path.Combine(homePath, ".trinsic"));
            var path = Path.Combine(homePath, ".trinsic","profile.bin");
            File.WriteAllBytes(path, profile.ToByteArray());

            Assert.NotNull(profile);
        }

        [Fact]
        public async Task CanGetProviderConfiguration()
        {
            var client = new Wallet.WalletClient(hostFixture.Channel);

            var configuration = await client.GetProviderConfigurationAsync(new GetProviderConfigurationRequest());

            Assert.NotNull(configuration);
            Assert.NotNull(configuration.DidDocument);
            Assert.NotNull(configuration.KeyAgreementKeyId);
        }

        [Fact]
        public void GenerateProofWithJcs()
        {
            var capabilityDocument = new JObject
            {
                { "@context", Constants.SECURITY_CONTEXT_V2_URL },
                { "target", "urn:trinsic:wallets:noop" },
                { "proof", new JObject
                    {
                        { "proofPurpose", "capabilityInvocation" },
                        { "created", DateTimeOffset.UtcNow.ToString("s") },
                        { "capability", "urn:trinsic:wallets:noop" }
                    }
                }
            };

            var key = DIDKey.Generate(new GenerateKeyRequest { KeyType = KeyType.Ed25519 });
            var signingKey = key.Key.First(x => x.Crv == "Ed25519");

            var proofResponse = LDProofs.CreateProof(new DIDComm.Messaging.CreateProofRequest
            {
                Key = signingKey,
                Document = capabilityDocument.ToStruct(),
                Suite = LdSuite.JcsEd25519Signature2020
            });

            proofResponse.Should().NotBeNull();
            proofResponse.SignedDocument.Should().NotBeNull();
        }

        [Fact(DisplayName = "Demo: create wallet, set profile, search records, issue credential")]
        public async Task Demo_CreateWallet_SetProfile_SearchRecords()
        {
            // Create new wallet
            var profile = await walletService.CreateWallet();

            profile.Should().NotBeNull();

            // Set the profile for the current service
            walletService.SetProfile(profile);

            // Issue credential
            var unsignedDocument = new JObject
            {
                { "@context", "https://w3id.org/security/v3-unstable" },
                { "id", "https://issuer.oidp.uscis.gov/credentials/83627465" }
            };

            var issueResponse = await walletService.IssueCredential(unsignedDocument);

            // Insert document to personal wallet
            var itemId = await walletService.InsertItem(issueResponse);

            itemId.Should().NotBeNullOrWhiteSpace();

            // Search record responses
            var items = await walletService.Search();

            items.Should().NotBeNull();
            items.Items.Should().HaveCountGreaterThan(0);

            // Derive proof revaling all
            var proof = await walletService.CreateProof(itemId, new JObject { { "@context", "https://w3id.org/security/v3-unstable" } });

            proof.Should().NotBeNull();

            // Verify proof document
            var valid = await walletService.VerifyProof(proof);

            valid.Should().BeTrue();
        }

        [Fact(DisplayName = "Create wallet with provider invitation")]
        public async Task CreateWalletWithInvite()
        {
            var providerProfile = await walletService.CreateWallet();
            providerService.SetProfile(providerProfile);

            // Provider creates initial wallet for Alice
            var invitationResponse = await providerService.InviteParticipant(new InviteRequest
            {
                Description = "Alice's Wallet",
                Email = "alice@example.com"
            });

            // Alice accepts the invitation and creates the wallet
            var createResponse = await walletService.CreateWallet(invitationResponse.InvitationId);
            walletService.SetProfile(createResponse);

            // Alice's searches for wallet records
            var search = await walletService.Search();

            search.Should().NotBeNull();
            search.Items.Should().BeEmpty();
        }
    }
}
