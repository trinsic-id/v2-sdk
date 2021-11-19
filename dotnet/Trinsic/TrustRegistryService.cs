using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Newtonsoft.Json.Linq;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.TrustRegistry.V1;

namespace Trinsic;

public class TrustRegistryService : ServiceBase
{
    public TrustRegistryService(AccountProfile accountProfile, ServerConfig serverConfig)
        : base(accountProfile, serverConfig)
    {
        Client = new TrustRegistry.TrustRegistryClient(Channel);
    }

    internal TrustRegistry.TrustRegistryClient Client { get; }

    /// <summary>
    /// Register a Governance Framework with the Trust Registry.
    /// </summary>
    /// <remarks>
    /// Calling this multiple times with the same URI will update the previously registered framework.
    /// </remarks>
    /// <param name="governanceFramework">The governance framework URI</param>
    /// <param name="description">The framework description</param>
    /// <returns></returns>
    public async Task RegisterGovernanceFramework(string governanceFramework, string description)
    {
        if (Uri.TryCreate(governanceFramework, UriKind.Absolute, out _))
        {
            AddFrameworkRequest request = new()
            {
                GovernanceFramework = new GovernanceFramework
                {
                    GovernanceFrameworkUri = governanceFramework,
                    Description = description
                }
            };
            var response = await Client.AddFrameworkAsync(request, BuildMetadata(request));
        }
        throw new Exception("Invalid URI string");
    }

    /// <summary>
    /// Register a DID as authoritative issuer with the configured governance framework.
    /// </summary>
    /// <param name="issuerDid">The issuer DID</param>
    /// <param name="credentialType">The full credential type URI</param>
    /// <param name="governanceFramework">The governance framework URI</param>
    /// <param name="validFrom">Valid from (UTC)</param>
    /// <param name="validUntil">Valid until (UTC)</param>
    /// <returns></returns>
    public async Task RegisterIssuer(string issuerDid, string credentialType, string governanceFramework, DateTimeOffset? validFrom, DateTimeOffset? validUntil)
    {
        RegisterIssuerRequest request = new()
        {
            DidUri = issuerDid,
            CredentialTypeUri = credentialType,
            GovernanceFrameworkUri = governanceFramework,
            ValidFromUtc = (ulong)(validFrom?.ToUnixTimeSeconds() ?? default),
            ValidUntilUtc = (ulong)(validUntil?.ToUnixTimeSeconds() ?? default)
        };
        var response = await Client.RegisterIssuerAsync(request, BuildMetadata(request));
    }

    public Task UnregisterIssuer(string issuerDid, string credentialType, string governanceFramework, DateTimeOffset? validFrom, DateTimeOffset? validUntil)
    {
        throw new NotImplementedException();
    }

    /// <summary>
    /// Register a DID as authoritative verifier with the configured governance framework.
    /// </summary>
    /// <param name="verifierDid">The verifier DID</param>
    /// <param name="presentationType">The full presentation type URI</param>
    /// <param name="governanceFramework">The governance framework URI</param>
    /// <param name="validFrom">Valid from (UTC)</param>
    /// <param name="validUntil">Valid until (UTC)</param>
    /// <returns></returns>
    public async Task RegisterVerifier(string verifierDid, string presentationType, string governanceFramework, DateTimeOffset? validFrom, DateTimeOffset? validUntil)
    {
        RegisterVerifierRequest request = new()
        {
            DidUri = verifierDid,
            PresentationTypeUri = presentationType,
            GovernanceFrameworkUri = governanceFramework,
            ValidFromUtc = (ulong)(validFrom?.ToUnixTimeSeconds() ?? default),
            ValidUntilUtc = (ulong)(validUntil?.ToUnixTimeSeconds() ?? default),
        };
        var response = await Client.RegisterVerifierAsync(request, BuildMetadata(request));
    }

    public Task UnregisterVerifier(string verifierDid, string presentationType, string governanceFramework, DateTimeOffset? validFrom, DateTimeOffset? validUntil)
    {
        throw new NotImplementedException();
    }

    /// <summary>
    /// Checks the status of the issuer for a given credential type in the given governance framework
    /// </summary>
    /// <param name="issuerDid">The issuer DID</param>
    /// <param name="credentialType"></param>
    /// <param name="governanceFramework"></param>
    /// <returns>The status of the registration</returns>
    public async Task<RegistrationStatus> CheckIssuerStatus(string issuerDid, string credentialType, string governanceFramework)
    {
        CheckIssuerStatusRequest request = new()
        {
            DidUri = issuerDid,
            CredentialTypeUri = credentialType,
            GovernanceFrameworkUri = governanceFramework
        };
        var response = await Client.CheckIssuerStatusAsync(request, BuildMetadata(request));

        return response.Status;
    }

    /// <summary>
    /// Checks the status of the verifier for a given presentation type in the given governance framework
    /// </summary>
    /// <param name="verifierDid">The verifier DID</param>
    /// <param name="presentationType">The presentation type URI</param>
    /// <param name="governanceFramework">The governance framework URI</param>
    /// <returns>The status of the registration</returns>
    public async Task<RegistrationStatus> CheckVerifierStatus(string verifierDid, string presentationType, string governanceFramework)
    {
        CheckVerifierStatusRequest request = new()
        {
            DidUri = verifierDid,
            PresentationTypeUri = presentationType,
            GovernanceFrameworkUri = governanceFramework
        };
        var response = await Client.CheckVerifierStatusAsync(request, BuildMetadata(request));

        return response.Status;
    }

    /// <summary>
    /// Search the trust registry
    /// </summary>
    /// <param name="query"></param>
    /// <returns></returns>
    public async Task<IEnumerable<JObject>> SearchRegistry(string query = "SELECT * FROM c")
    {
        SearchRegistryRequest request = new()
        {
            Query = query,
            Options = new RequestOptions { ResponseJsonFormat = JsonFormat.Protobuf }
        };
        var response = await Client.SearchRegistryAsync(request, BuildMetadata(request));

        return response.Items.Select(x => x.JsonStruct.ToJObject()).ToList();
    }
}
