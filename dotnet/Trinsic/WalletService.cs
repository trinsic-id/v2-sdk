using System.Threading.Tasks;
using Newtonsoft.Json.Linq;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Account.V1;
using WalletServiceClient = Trinsic.Services.UniversalWallet.V1.WalletService.WalletServiceClient;

namespace Trinsic;

public class WalletService : ServiceBase
{
    public WalletService(AccountProfile walletProfile, ServerConfig? serverConfig) : base(walletProfile, serverConfig)
    {
        Client = new WalletServiceClient(Channel);
    }

    internal WalletServiceClient Client { get; }

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
        var response = await Client.SearchAsync(request, await BuildMetadataAsync(request));
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
            headers: await BuildMetadataAsync(request));
        return response.ItemId;
    }
}
