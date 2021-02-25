using System;
using System.Linq;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services;
using DIDComm.Messaging;
using DComm = DIDComm.Messaging.DIDComm;
using Google.Protobuf;

namespace Trinsic.Sdk
{
    public class WalletService
    {
        public WalletService(string serviceAddress = "http://localhost:5000")
        {
            Channel = GrpcChannel.ForAddress(serviceAddress);
            Client = new Wallet.WalletClient(Channel);
        }

        public GrpcChannel Channel { get; }
        public Wallet.WalletClient Client { get; }

        public async Task<WalletProfile> CreateWallet()
        {
            // Generate new DID used by the current device
            var key = DIDKey.Generate(new GenerateKeyRequest
            {
                KeyType = KeyType.Ed25519
            });

            // Sign something to prove ownership
            var signed = DComm.Sign(new SignRequest
            {
                Key = key.Key.First(),
                Payload = key.DidDocument.ToByteString()
            });

            // Invoke create wallet
            var response = await Client.CreateWalletAsync(new CreateWalletRequest
            {
                Description = "My Cloud Wallet"
            });

            // This profile should be stored and supplied later
            return new WalletProfile
            {
                WalletId = response.WalletId,
                DidDocument = key.DidDocument,
                Invoker = key.Key.First().Kid
            };
        }
    }
}