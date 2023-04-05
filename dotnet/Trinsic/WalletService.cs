using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.UniversalWallet.V1;

namespace Trinsic;

public class WalletService : ServiceBase
{
    public WalletService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    private UniversalWallet.UniversalWalletClient Client { get; }

    /// <summary>
    ///     Search the wallet for records matching the specified criteria
    /// </summary>
    /// <remarks>
    ///     See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
    /// </remarks>
    /// <returns></returns>
    public async Task<SearchResponse> SearchWalletAsync(SearchRequest request) {
        if (string.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100";

        return await SearchAsync(request);
    }

    /// <summary>
    ///     Search the wallet for records matching the specified criteria
    /// </summary>
    /// <remarks>
    ///     See https://docs.microsoft.com/en-us/azure/cosmos-db/sql-query-select
    /// </remarks>
    /// <returns></returns>
    public SearchResponse SearchWallet(SearchRequest request) {
        if (string.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100";

        return Search(request);
    }


    // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
    // target: /home/runner/work/sdk/sdk/dotnet/Trinsic/WalletService.cs

    /// <summary>
    /// Retrieve an item from the wallet with a given item identifier
    /// </summary>

    public GetItemResponse GetItem(GetItemRequest request) {

        return Client.GetItem(request, BuildMetadata(request));
    }

    /// <summary>
    /// Retrieve an item from the wallet with a given item identifier
    /// </summary>

    public async Task<GetItemResponse> GetItemAsync(GetItemRequest request) {

        return await Client.GetItemAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Search the wallet using a SQL syntax
    /// </summary>

    public SearchResponse Search(SearchRequest request) {

        return Client.Search(request, BuildMetadata(request));
    }

    /// <summary>
    /// Search the wallet using a SQL syntax
    /// </summary>

    public async Task<SearchResponse> SearchAsync(SearchRequest request) {

        return await Client.SearchAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Insert an item into the wallet
    /// </summary>

    public InsertItemResponse InsertItem(InsertItemRequest request) {

        return Client.InsertItem(request, BuildMetadata(request));
    }

    /// <summary>
    /// Insert an item into the wallet
    /// </summary>

    public async Task<InsertItemResponse> InsertItemAsync(InsertItemRequest request) {

        return await Client.InsertItemAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Update an item in the wallet
    /// </summary>

    public UpdateItemResponse UpdateItem(UpdateItemRequest request) {

        return Client.UpdateItem(request, BuildMetadata(request));
    }

    /// <summary>
    /// Update an item in the wallet
    /// </summary>

    public async Task<UpdateItemResponse> UpdateItemAsync(UpdateItemRequest request) {

        return await Client.UpdateItemAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Delete an item from the wallet permanently
    /// </summary>

    public DeleteItemResponse DeleteItem(DeleteItemRequest request) {

        return Client.DeleteItem(request, BuildMetadata(request));
    }

    /// <summary>
    /// Delete an item from the wallet permanently
    /// </summary>

    public async Task<DeleteItemResponse> DeleteItemAsync(DeleteItemRequest request) {

        return await Client.DeleteItemAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Delete a wallet and its credentials
    /// </summary>

    public DeleteWalletResponse DeleteWallet(DeleteWalletRequest request) {

        return Client.DeleteWallet(request, BuildMetadata(request));
    }

    /// <summary>
    /// Delete a wallet and its credentials
    /// </summary>

    public async Task<DeleteWalletResponse> DeleteWalletAsync(DeleteWalletRequest request) {

        return await Client.DeleteWalletAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Create a new wallet and generate an auth token for access
    /// </summary>

    public CreateWalletResponse CreateWallet(CreateWalletRequest request) {

        return Client.CreateWallet(request, BuildMetadata(request));
    }

    /// <summary>
    /// Create a new wallet and generate an auth token for access
    /// </summary>

    public async Task<CreateWalletResponse> CreateWalletAsync(CreateWalletRequest request) {

        return await Client.CreateWalletAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Retrieve wallet details and configuration
    /// </summary>

    public GetWalletInfoResponse GetWalletInfo(GetWalletInfoRequest request) {

        return Client.GetWalletInfo(request, BuildMetadata(request));
    }

    /// <summary>
    /// Retrieve wallet details and configuration
    /// </summary>

    public async Task<GetWalletInfoResponse> GetWalletInfoAsync(GetWalletInfoRequest request) {

        return await Client.GetWalletInfoAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Retrieve wallet details and configuration about the currently authenticated wallet
    /// </summary>

    public GetMyInfoResponse GetMyInfo(GetMyInfoRequest request) {

        return Client.GetMyInfo(request, BuildMetadata(request));
    }

    /// <summary>
    /// Retrieve wallet details and configuration about the currently authenticated wallet
    /// </summary>

    public async Task<GetMyInfoResponse> GetMyInfoAsync(GetMyInfoRequest request) {

        return await Client.GetMyInfoAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Generate new token for a given wallet and add it to the collection of known auth tokens.
    ///  This endpoint requires authentication and will return a new token ID and auth token.
    ///  Use this endpoint if you want to authorize another device, without having to share your
    ///  existing auth token.
    /// </summary>

    public GenerateAuthTokenResponse GenerateAuthToken(GenerateAuthTokenRequest request) {

        return Client.GenerateAuthToken(request, BuildMetadata(request));
    }

    /// <summary>
    /// Generate new token for a given wallet and add it to the collection of known auth tokens.
    ///  This endpoint requires authentication and will return a new token ID and auth token.
    ///  Use this endpoint if you want to authorize another device, without having to share your
    ///  existing auth token.
    /// </summary>

    public async Task<GenerateAuthTokenResponse> GenerateAuthTokenAsync(GenerateAuthTokenRequest request) {

        return await Client.GenerateAuthTokenAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Revokes a previously issued auth token and updates the collection of known auth tokens.
    ///  This endpoint requires authentication.
    /// </summary>

    public RevokeAuthTokenResponse RevokeAuthToken(RevokeAuthTokenRequest request) {

        return Client.RevokeAuthToken(request, BuildMetadata(request));
    }

    /// <summary>
    /// Revokes a previously issued auth token and updates the collection of known auth tokens.
    ///  This endpoint requires authentication.
    /// </summary>

    public async Task<RevokeAuthTokenResponse> RevokeAuthTokenAsync(RevokeAuthTokenRequest request) {

        return await Client.RevokeAuthTokenAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
    ///  This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
    /// </summary>

    public AddExternalIdentityInitResponse AddExternalIdentityInit(AddExternalIdentityInitRequest request) {

        return Client.AddExternalIdentityInit(request, BuildMetadata(request));
    }

    /// <summary>
    /// Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
    ///  This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
    /// </summary>

    public async Task<AddExternalIdentityInitResponse> AddExternalIdentityInitAsync(AddExternalIdentityInitRequest request) {

        return await Client.AddExternalIdentityInitAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Confirm identity added to the current wallet using `AddIdentity`
    /// </summary>

    public AddExternalIdentityConfirmResponse AddExternalIdentityConfirm(AddExternalIdentityConfirmRequest request) {

        return Client.AddExternalIdentityConfirm(request, BuildMetadata(request));
    }

    /// <summary>
    /// Confirm identity added to the current wallet using `AddIdentity`
    /// </summary>

    public async Task<AddExternalIdentityConfirmResponse> AddExternalIdentityConfirmAsync(AddExternalIdentityConfirmRequest request) {

        return await Client.AddExternalIdentityConfirmAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Sign-in to an already existing wallet, using an identity added that was previously registered
    ///  This endpoint does not require authentication, and will return a challenge to be signed or verified
    /// </summary>

    public AuthenticateInitResponse AuthenticateInit(AuthenticateInitRequest request) {

        return Client.AuthenticateInit(request, BuildMetadata(request));
    }

    /// <summary>
    /// Sign-in to an already existing wallet, using an identity added that was previously registered
    ///  This endpoint does not require authentication, and will return a challenge to be signed or verified
    /// </summary>

    public async Task<AuthenticateInitResponse> AuthenticateInitAsync(AuthenticateInitRequest request) {

        return await Client.AuthenticateInitAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Confirm sign-in to an already existing wallet and return authentication token
    /// </summary>

    public AuthenticateConfirmResponse AuthenticateConfirm(AuthenticateConfirmRequest request) {

        return Client.AuthenticateConfirm(request, BuildMetadata(request));
    }

    /// <summary>
    /// Confirm sign-in to an already existing wallet and return authentication token
    /// </summary>

    public async Task<AuthenticateConfirmResponse> AuthenticateConfirmAsync(AuthenticateConfirmRequest request) {

        return await Client.AuthenticateConfirmAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// List all wallets in the ecosystem
    /// </summary>

    public ListWalletsResponse ListWallets(ListWalletsRequest request) {

        return Client.ListWallets(request, BuildMetadata(request));
    }

    /// <summary>
    /// List all wallets in the ecosystem
    /// </summary>

    public async Task<ListWalletsResponse> ListWalletsAsync(ListWalletsRequest request) {

        return await Client.ListWalletsAsync(request, await BuildMetadataAsync(request));
    }

    // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}