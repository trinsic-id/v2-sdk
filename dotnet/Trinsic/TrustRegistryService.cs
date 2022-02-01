using System;
using System.Threading.Tasks;
using Grpc.Core;
using Grpc.Net.Client;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.TrustRegistry.V1;

namespace Trinsic;

public class TrustRegistryService : ServiceBase
{
    public TrustRegistryService(AccountProfile accountProfile)
        : base(accountProfile) {
        Client = new(Channel);
    }
    
    public TrustRegistryService(AccountProfile accountProfile, GrpcChannel channel)
        : base(accountProfile, channel) {
        Client = new(Channel);
    }
    
    internal TrustRegistryService(AccountProfile accountProfile, ServerConfig serverConfig)
        : base(accountProfile, serverConfig) {
        Client = new(Channel);
    }

    private TrustRegistry.TrustRegistryClient Client { get; }

    /// <summary>
    /// Register a Governance Framework with the Trust Registry.
    /// </summary>
    /// <remarks>
    /// Calling this multiple times with the same URI will update the previously registered framework.
    /// </remarks>
    /// <param name="governanceFramework">The governance framework URI</param>
    /// <param name="description">The framework description</param>
    /// <returns></returns>
    public async Task RegisterGovernanceFrameworkAsync(string governanceFramework, string description) {
        if (!Uri.TryCreate(governanceFramework, UriKind.Absolute, out _)) {
            throw new("Invalid URI string");
        }

        AddFrameworkRequest request = new() {
            GovernanceFramework = new() {
                GovernanceFrameworkUri = governanceFramework,
                Description = description
            }
        };
        var response = await Client.AddFrameworkAsync(request, await BuildMetadataAsync(request));
    }

    public void RegisterGovernanceFramework(string governanceFramework, string description) {
        if (!Uri.TryCreate(governanceFramework, UriKind.Absolute, out _)) {
            throw new("Invalid URI string");
        }
        AddFrameworkRequest request = new() {
            GovernanceFramework = new() {
                GovernanceFrameworkUri = governanceFramework,
                Description = description
            }
        };
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
    public async Task RegisterIssuerAsync(RegisterIssuerRequest request) {
        var response = await Client.RegisterIssuerAsync(request, await BuildMetadataAsync(request));
        if (response.Status != ResponseStatus.Success) {
            throw new($"cannot register issuer: code {response.Status}");
        }
    }

    public void RegisterIssuer(RegisterIssuerRequest request) {
        var response = Client.RegisterIssuer(request, BuildMetadata(request));
        if (response.Status != ResponseStatus.Success) {
            throw new($"cannot register issuer: code {response.Status}");
        }
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
    public async Task RegisterVerifierAsync(RegisterVerifierRequest request) {
        var response = await Client.RegisterVerifierAsync(request, await BuildMetadataAsync(request));
        if (response.Status != ResponseStatus.Success) {
            throw new($"cannot register verifier: code {response.Status}");
        }
    }

    public void RegisterVerifier(RegisterVerifierRequest request) {
        var response = Client.RegisterVerifier(request, BuildMetadata(request));
        if (response.Status != ResponseStatus.Success) {
            throw new($"cannot register verifier: code {response.Status}");
        }
    }

    public async Task<UnregisterVerifierResponse> UnregisterVerifierAsync(UnregisterVerifierRequest request) {
        return await Client.UnregisterVerifierAsync(request, await BuildMetadataAsync(request));
    }

    public UnregisterVerifierResponse UnregisterVerifier(UnregisterVerifierRequest request) {
        return Client.UnregisterVerifier(request, BuildMetadata(request));
    }

    /// <summary>
    /// Checks the status of the issuer for a given credential type in the given governance framework
    /// </summary>
    /// <param name="request">The request object</param>
    public async Task<RegistrationStatus> CheckIssuerStatusAsync(CheckIssuerStatusRequest request) {
        var response = await Client.CheckIssuerStatusAsync(request, await BuildMetadataAsync(request));

        return response.Status;
    }

    public RegistrationStatus CheckIssuerStatus(CheckIssuerStatusRequest request) {
        return Client.CheckIssuerStatus(request, BuildMetadata(request)).Status;
    }

    /// <summary>
    /// Checks the status of the verifier for a given presentation type in the given governance framework
    /// </summary>
    /// <param name="request">The request object</param>
    /// <returns>The status of the registration</returns>
    public async Task<RegistrationStatus> CheckVerifierStatusAsync(CheckVerifierStatusRequest request) {
        var response = await Client.CheckVerifierStatusAsync(request, await BuildMetadataAsync(request));

        return response.Status;
    }
    
    public RegistrationStatus CheckVerifierStatus(CheckVerifierStatusRequest request) {
        return Client.CheckVerifierStatus(request, BuildMetadata(request)).Status;
    }

    /// <summary>
    /// Search the trust registry
    /// </summary>
    /// <param name="query"></param>
    /// <param name="continuationToken">continuation token from a previous search</param>
    /// <returns></returns>
    public async Task<SearchRegistryResponse> SearchRegistryAsync(string query = "SELECT * FROM c", string? continuationToken = null) {
        SearchRegistryRequest request = new() {
            Query = query,
            ContinuationToken = continuationToken ?? string.Empty
        };
        var response = await Client.SearchRegistryAsync(request, await BuildMetadataAsync(request));
        return response;
    }

    public SearchRegistryResponse SearchRegistry(string query = "SELECT * FROM c", string? continuationToken = null) {
        SearchRegistryRequest request = new() {
            Query = query,
            ContinuationToken = continuationToken ?? string.Empty
        };
        return Client.SearchRegistry(request, BuildMetadata(request));
    }

    public IAsyncStreamReader<FetchDataResponse> FetchData(FetchDataRequest request) {
        return Client.FetchData(request, BuildMetadata(request)).ResponseStream;
    }
}