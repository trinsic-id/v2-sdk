using System.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Newtonsoft.Json.Linq;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Account.V1;
using Grpc.Net.Client;
using WalletServiceClient = Trinsic.Services.UniversalWallet.V1.UniversalWallet.UniversalWalletClient;

namespace Trinsic;

public class WalletService : ServiceBase
{
    public WalletService(AccountProfile accountProfile, ServerConfig serverConfig)
        : base(accountProfile, serverConfig) {
        Client = new(Channel);
    }

    public WalletService(AccountProfile accountProfile)
        : base(accountProfile) {
        Client = new(Channel);
    }
    
    public WalletService(AccountProfile accountProfile, GrpcChannel channel)
        : base(accountProfile, channel) {
        Client = new(Channel);
    }

    private WalletServiceClient Client { get; }

    /// <summary>
    /// Search the wallet for records matching the specified criteria
    /// </summary>
    /// <param name="query">The SQL query</param>
    /// <remarks>
    /// See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
    /// </remarks>
    /// <returns></returns>
    public async Task<SearchResponse> SearchAsync(string query = "SELECT * FROM c")
    {
        SearchRequest request = new() { Query = query };
        var response = await Client.SearchAsync(request, await BuildMetadataAsync(request));
        return response;
    }

    /// <summary>
    /// Search the wallet for records matching the specified criteria
    /// </summary>
    /// <param name="query">The SQL query</param>
    /// <remarks>
    /// See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
    /// </remarks>
    /// <returns></returns>
    public SearchResponse Search(string query = "SELECT * FROM c")
    {
        SearchRequest request = new() { Query = query };
        var response = Client.Search(request, BuildMetadata(request));
        return response;
    }

    /// <summary>
    /// Insert an item into the personal wallet
    /// </summary>
    /// <param name="item"></param>
    /// <returns></returns>
    public async Task<string> InsertItemAsync(JObject item) {
        InsertItemRequest request = new() {ItemJson = item.ToString()};

        var response = await Client.InsertItemAsync(
            request: request,
            headers: await BuildMetadataAsync(request));
        return response.ItemId;
    }

    /// <summary>
    /// Insert an item into the personal wallet
    /// </summary>
    /// <param name="item"></param>
    /// <returns></returns>
    public string InsertItem(JObject item) {
        InsertItemRequest request = new() {ItemJson = item.ToString()};

        var response = Client.InsertItem(
            request: request,
            headers: BuildMetadata(request));
        return response.ItemId;
    }

    public async Task<DeleteItemResponse> DeleteItemAsync(DeleteItemRequest request) {
        return await Client.DeleteItemAsync(request, await BuildMetadataAsync(request));
    }

    public DeleteItemResponse DeleteItem(DeleteItemRequest request) {
        return Client.DeleteItem(request, BuildMetadata(request));
    }
}
