using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Grpc.Net.Client;
using Newtonsoft.Json.Linq;
using Trinsic.Services.Common.V1;
using Trinsic.Services.TrustRegistry.V1;

namespace Trinsic
{
    public class TrustRegistryService : ServiceBase
    {
        public TrustRegistryService(string serviceAddress = "http://localhost:5000")
            : this(ServiceBase.CreateChannelIfNeeded(serviceAddress))
        {
        }

        public TrustRegistryService(GrpcChannel channel)
        {
            Channel = channel;
            Client = new TrustRegistry.TrustRegistryClient(Channel);
        }

        public GrpcChannel Channel { get; }
        public TrustRegistry.TrustRegistryClient Client { get; }

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
                var response = await Client.AddFrameworkAsync(new AddFrameworkRequest
                {
                    GovernanceFramework = new GovernanceFramework
                    {
                        GovernanceFrameworkUri = governanceFramework,
                        Description = description
                    }
                }, GetMetadata());
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
            var response = await Client.RegisterIssuerAsync(new RegisterIssuerRequest
            {
                DidUri = issuerDid,
                CredentialTypeUri = credentialType,
                GovernanceFrameworkUri = governanceFramework,
                ValidFromUtc = (ulong)validFrom?.ToUnixTimeSeconds(),
                ValidUntilUtc = (ulong)validUntil?.ToUnixTimeSeconds()
            }, GetMetadata());
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
            var response = await Client.RegisterVerifierAsync(new RegisterVerifierRequest
            {
                DidUri = verifierDid,
                PresentationTypeUri = presentationType,
                GovernanceFrameworkUri = governanceFramework,
                ValidFromUtc = (ulong)validFrom?.ToUnixTimeSeconds(),
                ValidUntilUtc = (ulong)validUntil?.ToUnixTimeSeconds()
            }, GetMetadata());
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
            var response = await Client.CheckIssuerStatusAsync(new CheckIssuerStatusRequest
            {
                DidUri = issuerDid,
                CredentialTypeUri = credentialType,
                GovernanceFrameworkUri = governanceFramework
            }, GetMetadata());

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
            var response = await Client.CheckVerifierStatusAsync(new CheckVerifierStatusRequest
            {
                DidUri = verifierDid,
                PresentationTypeUri = presentationType,
                GovernanceFrameworkUri = governanceFramework
            }, GetMetadata());

            return response.Status;
        }

        /// <summary>
        /// Search the trust registry
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public async Task<IEnumerable<JObject>> SearchRegistry(string query = "SELECT * FROM c")
        {
            var response = await Client.SearchRegistryAsync(new SearchRegistryRequest
            {
                Query = query,
                Options = new RequestOptions { ResponseJsonFormat = JsonFormat.Protobuf }
            }, GetMetadata());

            return response.Items.Select(x => x.JsonStruct.ToJObject()).ToList();
        }
    }
}
