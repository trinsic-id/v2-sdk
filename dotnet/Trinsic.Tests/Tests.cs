using System;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using Okapi.Security;
using Trinsic.Services.Common.V1;
using Xunit;
using Xunit.Abstractions;

namespace Trinsic.Tests
{
    public class Tests
    {
        private readonly ITestOutputHelper _testOutputHelper;
        private const string ServerAddressName = "TRINSIC_SERVER_ADDRESS";

        public Tests(ITestOutputHelper testOutputHelper)
        {
            _testOutputHelper = testOutputHelper;
        }

        private static string __FILE__([CallerFilePath] string fileName = "") => fileName;

        private string TestDataPath =>
            Path.GetFullPath(Path.Join(__FILE__(), "..", "..", "..", "devops", "testdata"));

        private string VaccinationCertificateUnsigned =>
            Path.GetFullPath(Path.Join(TestDataPath, "vaccination-certificate-unsigned.jsonld"));
        private string VaccinationCertificateFrame =>
            Path.GetFullPath(Path.Join(TestDataPath, "vaccination-certificate-frame.jsonld"));

        [Theory]
        [InlineData("localhost", false)]
        [InlineData("localhost:5000", false)]
        [InlineData("http://localhost", false)]
        [InlineData("http://20.75.134.127", false)]
        [InlineData("https://localhost:5000", true)]
        [InlineData("http://localhost:5000", true)]
        [InlineData("http://localhost:80", true)]
        [InlineData("http://20.75.134.127:80", true)]
        public void TestParseURL(string url, bool isValid)
        {
            if (!isValid)
                Assert.Throws<ArgumentException>(() => ServiceBase.CreateChannelIfNeeded(url));
            else
                Assert.NotNull(ServiceBase.CreateChannelIfNeeded(url));
        }

        [Fact]
        public async Task TestWalletService()
        {
            var walletService = new WalletService(new ServerConfig
            {
                Endpoint = Environment.GetEnvironmentVariable("TEST_SERVER_ENDPOINT") ?? "localhost",
                Port = int.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_PORT"), out var port) ? port : 5000,
                UseTls = bool.TryParse(Environment.GetEnvironmentVariable("TEST_SERVER_USE_TLS"), out var useTls) ? useTls : false
            });

            // SETUP ACTORS
            // Create 3 different profiles for each participant in the scenario
            var allison = await walletService.CreateWallet();
            var clinic = await walletService.CreateWallet();
            var airline = await walletService.CreateWallet();

            // ISSUE CREDENTIAL
            // Sign a credential as the clinic and send it to Allison
            walletService.SetProfile(clinic);

            var credentialJson = await File.ReadAllTextAsync(VaccinationCertificateUnsigned);
            var credential = await walletService.IssueCredential(document: JObject.Parse(credentialJson));

            _testOutputHelper.WriteLine("Credential:");
            _testOutputHelper.WriteLine(credential.ToString(Formatting.Indented));

            // STORE CREDENTIAL
            // Alice stores the credential in her cloud wallet.
            walletService.SetProfile(allison);

            var itemId = await walletService.InsertItem(credential);

            // SHARE CREDENTIAL
            // Allison shares the credential with the venue.
            // The venue has communicated with Allison the details of the credential
            // that they require expressed as a JSON-LD frame.
            walletService.SetProfile(allison);

            var proofRequestJson = File.ReadAllText(VaccinationCertificateFrame);
            var credentialProof = await walletService.CreateProof(itemId, JObject.Parse(proofRequestJson));

            _testOutputHelper.WriteLine("Proof:");
            _testOutputHelper.WriteLine(credentialProof.ToString(Formatting.Indented));


            // VERIFY CREDENTIAL
            // The airline verifies the credential
            walletService.SetProfile(airline);

            var valid = await walletService.VerifyProof(credentialProof);

            _testOutputHelper.WriteLine($"Verification result: {valid}");
            Assert.True(valid);
        }

        // TODO - Create trust registry unit test and then add commands to documentation reference
        [Fact]
        public void TestTrustRegistry()
        {
            //Given

            //When

            //Then
        }

    }
}