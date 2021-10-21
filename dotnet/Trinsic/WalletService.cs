using System;
using System.Linq;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services;
using Google.Protobuf;
using Newtonsoft.Json.Linq;
using Google.Protobuf.WellKnownTypes;
using Okapi.Keys;
using Okapi.Transport;
using Pbmse;
using Okapi.Keys.V1;
using Okapi.Transport.V1;
using Pbmse.V1;

namespace Trinsic
{
    public class WalletService : ServiceBase
    {
        public WalletService(string serviceAddress = "http://localhost:5000")
            : this(ServiceBase.CreateChannelIfNeeded(serviceAddress))
        {
        }

        public WalletService(GrpcChannel channel)
        {
            Channel = channel;
            Client = new Wallet.WalletClient(Channel);
            CredentialClient = new Credential.CredentialClient(Channel);
        }

        public GrpcChannel Channel { get; }
        public Wallet.WalletClient Client { get; }
        public Credential.CredentialClient CredentialClient { get; }

        public async Task RegisterOrConnect(string email)
        {
            await Client.ConnectExternalIdentityAsync(new ConnectRequest { Email = email });
        }

        public async Task<WalletProfile> CreateWallet(string securityCode = null)
        {
            // Generate new DID used by the current device
            var myKey = DIDKey.Generate(new GenerateKeyRequest { KeyType = KeyType.Ed25519 });
            var myDidDocument = myKey.DidDocument.ToJObject();

            // Invoke create wallet using encrypted message
            // Call the server endpoint with encrypted message
            var createWalletResponse = await Client.CreateWalletAsync(new CreateWalletRequest
            {
                Controller = myDidDocument["id"].ToString(),
                SecurityCode = securityCode ?? string.Empty
            });

            // This profile should be stored and supplied later
            return new WalletProfile
            {
                WalletId = createWalletResponse.WalletId,
                Capability = createWalletResponse.Capability,
                DidDocument = new JsonPayload { JsonStruct = myKey.DidDocument },
                Invoker = createWalletResponse.Invoker,
                InvokerJwk = myKey.Key.First().ToByteString()
            };
        }

        /// <summary>
        /// Signs an input credential
        /// </summary>
        /// <param name="document"></param>
        /// <returns></returns>
        public async Task<JObject> IssueCredential(JObject document)
        {
            try
            {
                var response = await CredentialClient.IssueAsync(new IssueRequest { Document = new JsonPayload { JsonStruct = document.ToStruct() } }, GetMetadata());
                return response.Document.JsonStruct.ToJObject();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        /// <summary>
        /// Search the wallet for records matching the specified criteria
        /// </summary>
        /// <param name="query">The SQL query</param>
        /// <remarks>
        /// See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
        /// </remarks>
        /// <returns></returns>
        public async Task<SearchResponse> Search(string query = "SELECT * from c")
        {
            var response = await Client.SearchAsync(new SearchRequest { Query = query }, GetMetadata());
            return response;

        }

        /// <summary>
        /// Insert an item into the personal wallet
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public async Task<string> InsertItem(JObject item)
        {
            var response = await Client.InsertItemAsync(
                request: new InsertItemRequest
                {
                    Item = new JsonPayload { JsonStruct = item.ToStruct() }
                },
                headers: GetMetadata());
            return response.ItemId;
        }

        /// <summary>
        /// Sends a document to the specified destination
        /// </summary>
        /// <param name="document"></param>
        /// <param name="email"></param>
        /// <returns></returns>
        public async Task Send(JObject document, string email)
        {
            var response = await CredentialClient.SendAsync(
                request: new SendRequest
                {
                    Email = email,
                    Document = new JsonPayload { JsonStruct = document.ToStruct() }
                },
                headers: GetMetadata());
        }

        /// <summary>
        /// Derive a proof from an existing document in the wallet using
        /// an input reveal document frame
        /// </summary>
        /// <param name="documentId"></param>
        /// <param name="revealDocument"></param>
        /// <returns></returns>
        public async Task<JObject> CreateProof(string documentId, JObject revealDocument)
        {
            var response = await CredentialClient.CreateProofAsync(
                request: new Services.CreateProofRequest
                {
                    DocumentId = documentId,
                    RevealDocument = new JsonPayload { JsonStruct = revealDocument.ToStruct() }
                },
                headers: GetMetadata());

            return response.ProofDocument.JsonStruct.ToJObject();
        }

        /// <summary>
        /// Verifies a proof document
        /// </summary>
        /// <param name="proofDocument"></param>
        /// <returns></returns>
        public async Task<bool> VerifyProof(JObject proofDocument)
        {
            var response = await CredentialClient.VerifyProofAsync(
                request: new VerifyProofRequest
                {
                    ProofDocument = new JsonPayload { JsonString = proofDocument.ToString() }
                },
                headers: GetMetadata());

            return response.Valid;
        }
    }
}
