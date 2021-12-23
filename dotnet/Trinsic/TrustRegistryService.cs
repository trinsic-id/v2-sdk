using System;
using System.Threading.Tasks;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.TrustRegistry.V1;

namespace Trinsic;

public class TrustRegistryService : ServiceBase
{
    public TrustRegistryService(AccountProfile accountProfile, ServerConfig? serverConfig = null, Grpc.Net.Client.GrpcChannel? existingChannel = null)
        : base(accountProfile, serverConfig, existingChannel) {
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

    public Task UnregisterIssuer(string issuerDid, string credentialType, string governanceFramework, DateTimeOffset? validFrom, DateTimeOffset? validUntil) {
        throw new NotImplementedException();
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

    public Task UnregisterVerifier(string verifierDid, string presentationType, string governanceFramework, DateTimeOffset? validFrom, DateTimeOffset? validUntil) {
        throw new NotImplementedException();
    }

    /// <summary>
    /// Checks the status of the issuer for a given credential type in the given governance framework
    /// </summary>
    /// <param name="request">The request object</param>
    public async Task<RegistrationStatus> CheckIssuerStatusAsync(CheckIssuerStatusRequest request) {
        var response = await Client.CheckIssuerStatusAsync(request, await BuildMetadataAsync(request));

        return response.Status;
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

    /// <summary>
    /// Search the trust registry
    /// </summary>
    /// <param name="query"></param>
    /// <returns></returns>
    public async Task<SearchRegistryResponse> SearchRegistryAsync(string query = "SELECT * FROM c", string? continuationToken = null) {
        SearchRegistryRequest request = new() {
            Query = query,
            ContinuationToken = continuationToken ?? string.Empty
        };
        var response = await Client.SearchRegistryAsync(request, await BuildMetadataAsync(request));
        return response;
    }
}