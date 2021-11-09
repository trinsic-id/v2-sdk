using System.Threading.Tasks;
using Newtonsoft.Json.Linq;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.VerifiableCredentials.V1;
using Trinsic.Services.Common.V1;

namespace Trinsic
{
    public class WalletService : ServiceBase
    {
        public WalletService(WalletProfile? walletProfile, ServerConfig? serverConfig) : base(walletProfile, serverConfig)
        {
            Client = new Wallet.WalletClient(Channel);
        }

        public Wallet.WalletClient Client { get; }

        public async Task RegisterOrConnect(string email)
        {
            await Client.ConnectExternalIdentityAsync(new ConnectRequest { Email = email });
        }

        public async Task<WalletProfile> CreateWallet(string? securityCode = null)
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
        /// Search the wallet for records matching the specified criteria
        /// </summary>
        /// <param name="query">The SQL query</param>
        /// <remarks>
        /// See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
        /// </remarks>
        /// <returns></returns>
        public async Task<SearchResponse> Search(string query = "SELECT * FROM c")
        {
            SearchRequest request = new() { Query = query };
            var response = await Client.SearchAsync(request, BuildMetadata(request));
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
                headers: BuildMetadata(request));
            return response.ItemId;
        }
    }
}
