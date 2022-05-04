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
    public async Task<AddFrameworkResponse> RegisterGovernanceFrameworkAsync(AddFrameworkRequest request) {
        if (!Uri.TryCreate(request.GovernanceFramework.GovernanceFrameworkUri, UriKind.Absolute, out _)) throw new("Invalid URI string");

        return await Client.AddFrameworkAsync(request, await BuildMetadataAsync(request));
    }

    public void RegisterGovernanceFramework(AddFrameworkRequest request) {
        if (!Uri.TryCreate(request.GovernanceFramework.GovernanceFrameworkUri, UriKind.Absolute, out _)) throw new("Invalid URI string");
        
        Client.AddFramework(request, BuildMetadata(request));
    }

    public async Task<RemoveFrameworkResponse> RemoveGovernanceFrameworkAsync(RemoveFrameworkRequest request) {
        return await Client.RemoveFrameworkAsync(request, await BuildMetadataAsync(request));
    }

    public RemoveFrameworkResponse RemoveGovernanceFramework(RemoveFrameworkRequest request) {
        return Client.RemoveFramework(request, BuildMetadata(request));
    }

    /// <summary>
    /// Register a DID as authoritative issuer with the configured governance framework.
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns></returns>
    public async Task<RegisterIssuerResponse> RegisterIssuerAsync(RegisterIssuerRequest request) {
        return await Client.RegisterIssuerAsync(request, await BuildMetadataAsync(request));
    }

    public RegisterIssuerResponse RegisterIssuer(RegisterIssuerRequest request) {
        return Client.RegisterIssuer(request, BuildMetadata(request));
    }

    public async Task<UnregisterIssuerResponse> UnregisterIssuerAsync(UnregisterIssuerRequest request) {
        return await Client.UnregisterIssuerAsync(request, await BuildMetadataAsync(request));
    }

    public UnregisterIssuerResponse UnregisterIssuer(UnregisterIssuerRequest request) {
        return Client.UnregisterIssuer(request, BuildMetadata(request));
    }

    /// <summary>
    /// Register a DID as authoritative verifier with the configured governance framework.
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns></returns>
    public async Task<RegisterVerifierResponse> RegisterVerifierAsync(RegisterVerifierRequest request) {
        return await Client.RegisterVerifierAsync(request, await BuildMetadataAsync(request));
    }

    public RegisterVerifierResponse RegisterVerifier(RegisterVerifierRequest request) {
        return Client.RegisterVerifier(request, BuildMetadata(request));
    }

    public async Task<UnregisterVerifierResponse> UnregisterVerifierAsync(UnregisterVerifierRequest request) {
        return await Client.UnregisterVerifierAsync(request, await BuildMetadataAsync(request));
    }

    public void UnregisterVerifier(UnregisterVerifierRequest request) {
        var response= Client.UnregisterVerifier(request, BuildMetadata(request));
    }

    /// <summary>
    /// Checks the status of the issuer for a given credential type in the given governance framework
    /// </summary>
    /// <param name="request">The request object</param>
    public async Task<CheckIssuerStatusResponse> CheckIssuerStatusAsync(CheckIssuerStatusRequest request) {
        return await Client.CheckIssuerStatusAsync(request, await BuildMetadataAsync(request));
    }

    public CheckIssuerStatusResponse CheckIssuerStatus(CheckIssuerStatusRequest request) {
        return Client.CheckIssuerStatus(request, BuildMetadata(request));
    }

    /// <summary>
    /// Checks the status of the verifier for a given presentation type in the given governance framework
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns>The status of the registration</returns>
    public async Task<CheckVerifierStatusResponse> CheckVerifierStatusAsync(CheckVerifierStatusRequest request) {
        return await Client.CheckVerifierStatusAsync(request, await BuildMetadataAsync(request));
    }

    public CheckVerifierStatusResponse CheckVerifierStatus(CheckVerifierStatusRequest request) {
        return Client.CheckVerifierStatus(request, BuildMetadata(request));
    }

    /// <summary>
    /// Search the trust registry
    /// </summary>
    /// <returns></returns>
    public async Task<SearchRegistryResponse> SearchRegistryAsync(SearchRegistryRequest request) {
        if (String.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT * FROM c LIMIT 100";
        
        var response = await Client.SearchRegistryAsync(request, await BuildMetadataAsync(request));
        return response;
    }

    public SearchRegistryResponse SearchRegistry(SearchRegistryRequest request) {
        if (String.IsNullOrWhiteSpace(request.Query))
            request.Query = "SELECT * FROM c LIMIT 100";
        
        return Client.SearchRegistry(request, BuildMetadata(request));
    }

    public IAsyncStreamReader<FetchDataResponse> FetchData(FetchDataRequest request) {
        return Client.FetchData(request, BuildMetadata(request)).ResponseStream;
    }
}
