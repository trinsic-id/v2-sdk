using System;
using System.Linq;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Google.Protobuf;
using Newtonsoft.Json.Linq;
using Google.Protobuf.WellKnownTypes;
using Okapi.Keys;
using Okapi.Keys.V1;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.V1;
using Trinsic.Services.Common.V1;

namespace Trinsic
{
    public class WalletService : ServiceBase
    {
        public WalletService()
            : this(new ServerConfig
            {
                Endpoint = "prod.trinsic.cloud",
                Port = 443,
                UseTls = true
            })
        {

        }

        public WalletService(ServerConfig config)
            : this(ServiceBase.CreateChannelIfNeeded($"{(config.UseTls ? "https" : "http")}://{config.Endpoint}:{config.Port}"))
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
            var createWalletResponse = await Client.CreateWalletAsync(new CreateWalletRequest
            {
                SecurityCode = securityCode ?? string.Empty
            });

            // This profile should be stored and supplied later
            return new WalletProfile
            {
                AuthData = createWalletResponse.AuthData,
                AuthToken = createWalletResponse.AuthToken,
                IsProtected = createWalletResponse.IsProtected
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
                IssueRequest request = new()
                {
                    Document = new JsonPayload { JsonStruct = document.ToStruct() }
                };
                var response = await CredentialClient.IssueAsync(request, GetMetadata(request));
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
            SearchRequest request = new() { Query = query };
            var response = await Client.SearchAsync(request, GetMetadata(request));
            return response;

        }

        /// <summary>
        /// Insert an item into the personal wallet
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public async Task<string> InsertItem(JObject item)
        {
            InsertItemRequest request = new()
            {
                Item = new JsonPayload { JsonStruct = item.ToStruct() }
            };
            var response = await Client.InsertItemAsync(
                request: request,
                headers: GetMetadata(request));
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
            SendRequest request = new()
            {
                Email = email,
                Document = new JsonPayload { JsonStruct = document.ToStruct() }
            };
            var response = await CredentialClient.SendAsync(
                request: request,
                headers: GetMetadata(request));
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
            CreateProofRequest request = new()
            {
                DocumentId = documentId,
                RevealDocument = new JsonPayload { JsonStruct = revealDocument.ToStruct() }
            };
            var response = await CredentialClient.CreateProofAsync(
                request: request,
                headers: GetMetadata(request));

            return response.ProofDocument.JsonStruct.ToJObject();
        }

        /// <summary>
        /// Verifies a proof document
        /// </summary>
        /// <param name="proofDocument"></param>
        /// <returns></returns>
        public async Task<bool> VerifyProof(JObject proofDocument)
        {
            VerifyProofRequest request = new()
            {
                ProofDocument = new JsonPayload { JsonString = proofDocument.ToString() }
            };
            var response = await CredentialClient.VerifyProofAsync(
                request: request,
                headers: GetMetadata(request));

            return response.Valid;
        }
    }
}
