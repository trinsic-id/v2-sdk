using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Options;
using Trinsic.Services.UniversalWallet.V1;
using Trinsic.Sdk.Options.V1;

namespace Trinsic;

public class WalletService : ServiceBase
{
    public WalletService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public WalletService() {
        Client = new(Channel);
    }

    internal WalletService(ITokenProvider tokenProvider)
        : this(tokenProvider, Microsoft.Extensions.Options.Options.Create(new ServiceOptions())) { }

    internal WalletService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    private UniversalWallet.UniversalWalletClient Client { get; }

    /// <summary>
    /// Search the wallet for records matching the specified criteria
    /// </summary>
    /// <remarks>
    /// See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
    /// </remarks>
    /// <returns></returns>
    public async Task<SearchResponse> SearchAsync(SearchRequest request) {
        if (String.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT * FROM c";
        
        var response = await Client.SearchAsync(request, await BuildMetadataAsync(request));
        return response;
    }

    /// <summary>
    /// Search the wallet for records matching the specified criteria
    /// </summary>
    /// <remarks>
    /// See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
    /// </remarks>
    /// <returns></returns>
    public SearchResponse Search(SearchRequest request) {
        if (String.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT * FROM c";
        
        var response = Client.Search(request, BuildMetadata(request));
        return response;
    }

    /// <summary>
    /// Insert an item into the personal wallet
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<string> InsertItemAsync(InsertItemRequest request) {
        var response = await Client.InsertItemAsync(
            request,
            await BuildMetadataAsync(request));
        return response.ItemId;
    }

    /// <summary>
    /// Insert an item into the personal wallet
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public string InsertItem(InsertItemRequest request) {
        var response = Client.InsertItem(
            request,
            BuildMetadata(request));
        return response.ItemId;
    }

    public async Task<DeleteItemResponse> DeleteItemAsync(DeleteItemRequest request) {
        return await Client.DeleteItemAsync(request, await BuildMetadataAsync(request));
    }

    public DeleteItemResponse DeleteItem(DeleteItemRequest request) {
        return Client.DeleteItem(request, BuildMetadata(request));
    }
}
