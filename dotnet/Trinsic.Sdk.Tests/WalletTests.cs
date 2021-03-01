using System;
using System.IO;
using System.Threading.Tasks;
using Google.Protobuf;
using Grpc.Net.Client;
using Trinsic.Identity.Server.Tests;
using Trinsic.Services;
using Xunit;

namespace Trinsic.Sdk.Tests
{
    [Collection(HostFixture.CollectionDefinitionName)]
    public class WalletTests
    {
        private readonly WalletService service;
        private readonly HostFixture hostFixture;

        public WalletTests(HostFixture hostFixture)
        {
            service = new WalletService(hostFixture.Channel);
            this.hostFixture = hostFixture;
        }

        [Fact]
        public async Task Test1()
        {
            var profile = await service.CreateWallet();

            File.WriteAllBytes("~/.trinsic/profile.bin", profile.ToByteArray());

            Assert.NotNull(profile);
        }

        [Fact]
        public async Task CanGetProviderConfiguration()
        {
            var channel = GrpcChannel.ForAddress("http://localhost:5000/");
            var client = new Wallet.WalletClient(channel);

            var configuration = await client.GetProviderConfigurationAsync(new GetProviderConfigurationRequest());

            Assert.NotNull(configuration);
            Assert.NotNull(configuration.DidDocument);
            Assert.NotNull(configuration.KeyAgreementKeyId);
        }
    }
}
