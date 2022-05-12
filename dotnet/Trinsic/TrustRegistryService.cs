using System;
using System.Threading.Tasks;
using Grpc.Core;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.TrustRegistry.V1;

namespace Trinsic;

public class TrustRegistryService : ServiceBase
{
    public TrustRegistryService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public TrustRegistryService() {
        Client = new(Channel);
    }

    internal TrustRegistryService(ITokenProvider tokenProvider)
        : this(tokenProvider, Microsoft.Extensions.Options.Options.Create(new ServiceOptions())) { }

    internal TrustRegistryService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    private TrustRegistry.TrustRegistryClient Client { get; }

    /// <summary>
    /// Register a Governance Framework with the Trust Registry.
    /// </summary>
    /// <remarks>
    /// Calling this multiple times with the same URI will update the previously registered framework.
    /// </remarks>
    /// <returns></returns>
    public async Task<AddFrameworkResponse> AddFrameworkAsync(AddFrameworkRequest request) {
        if (!Uri.TryCreate(request.GovernanceFrameworkUri, UriKind.Absolute, out _)) throw new("Invalid URI string");

        return await Client.AddFrameworkAsync(request, await BuildMetadataAsync(request));
    }

    public void AddFramework(AddFrameworkRequest request) {
        if (!Uri.TryCreate(request.GovernanceFrameworkUri, UriKind.Absolute, out _)) throw new("Invalid URI string");
        
        Client.AddFramework(request, BuildMetadata(request));
    }

    public async Task<RemoveFrameworkResponse> RemoveFrameworkAsync(RemoveFrameworkRequest request) {
        return await Client.RemoveFrameworkAsync(request, await BuildMetadataAsync(request));
    }

    public RemoveFrameworkResponse RemoveFramework(RemoveFrameworkRequest request) {
        return Client.RemoveFramework(request, BuildMetadata(request));
    }

    /// <summary>
    /// Register a DID as authoritative member with the configured governance framework.
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns></returns>
    public async Task<RegisterMemberResponse> RegisterMemberAsync(RegisterMemberRequest request) {
        return await Client.RegisterMemberAsync(request, await BuildMetadataAsync(request));
    }

    public RegisterMemberResponse RegisterMember(RegisterMemberRequest request) {
        return Client.RegisterMember(request, BuildMetadata(request));
    }

    public async Task<UnregisterMemberResponse> UnregisterMemberAsync(UnregisterMemberRequest request) {
        return await Client.UnregisterMemberAsync(request, await BuildMetadataAsync(request));
    }

    public UnregisterMemberResponse UnregisterMember(UnregisterMemberRequest request) {
        return Client.UnregisterMember(request, BuildMetadata(request));
    }

    /// <summary>
    /// Checks the status of the issuer for a given credential type in the given governance framework
    /// </summary>
    /// <param name="request">The request object</param>
    public async Task<GetMembershipStatusResponse> GetMembershipStatusAsync(GetMembershipStatusRequest request) {
        return await Client.GetMembershipStatusAsync(request, await BuildMetadataAsync(request));
    }

    public GetMembershipStatusResponse GetMembershipStatus(GetMembershipStatusRequest request) {
        return Client.GetMembershipStatus(request, BuildMetadata(request));
    }

    /// <summary>
    /// Search the trust registry
    /// </summary>
    /// <returns></returns>
    public async Task<SearchRegistryResponse> SearchRegistryAsync(SearchRegistryRequest request) {
        if (String.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT * FROM _ OFFSET 0 LIMIT 100";
        
        var response = await Client.SearchRegistryAsync(request, await BuildMetadataAsync(request));
        return response;
    }

    public SearchRegistryResponse SearchRegistry(SearchRegistryRequest request) {
        if (String.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT * FROM _ OFFSET 0 LIMIT 100";
        
        return Client.SearchRegistry(request, BuildMetadata(request));
    }

    public IAsyncStreamReader<FetchDataResponse> FetchData(FetchDataRequest request) {
        return Client.FetchData(request, BuildMetadata(request)).ResponseStream;
    }
}
