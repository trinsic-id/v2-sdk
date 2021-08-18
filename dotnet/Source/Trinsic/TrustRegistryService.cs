using System;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services;

namespace Trinsic
{
    public class TrustRegistryService : ServiceBase
    {
        public TrustRegistryService(string serviceAddress = "http://localhost:5000")
            : this(GrpcChannel.ForAddress(serviceAddress, new GrpcChannelOptions()))
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
        /// <param name="governanceFrameworkUri">The governane framework URI</param>
        /// <param name="description">The framework description</param>
        /// <returns></returns>
        public async Task RegisterGovernanceFramework(string governanceFrameworkUri, string description)
        {
            if (Uri.TryCreate(governanceFrameworkUri, UriKind.Absolute, out _))
            {
                var response = await Client.AddFrameworkAsync(new AddFrameworkRequest
                {
                    GovernanceFramework = new GovernanceFramework
                    {
                        GovernanceFrameworkUri = governanceFrameworkUri,
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
    }
}
