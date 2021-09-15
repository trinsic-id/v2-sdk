using System;
using System.Text;
using Okapi;
using Google.Protobuf.WellKnownTypes;
using Grpc.Core;
using Grpc.Net.Client;
using Newtonsoft.Json.Linq;
using Trinsic.Services;
using Okapi.Proofs;
using Okapi.Keys;

namespace Trinsic
{
    public abstract class ServiceBase
    {
        public string CapInvocation;

        /// <summary>
        /// Create call metadata by setting the required authentication headers
        /// </summary>
        /// <returns></returns>
        protected Metadata GetMetadata() => new Metadata
        {
            { "Capability-Invocation", CapInvocation ?? throw new Exception("Profile not set.") }
        };


        /// <summary>
        /// Set the profile that will be used for authenticated requests
        /// </summary>
        /// <param name="profile">The profile data</param>
        public void SetProfile(WalletProfile profile)
        {
            // Create new capability invocation for this session, that
            // will be used as authenticated header
            var capabilityDocument = new JObject
            {
                { "@context", "https://w3id.org/security/v2" },
                { "invocationTarget", profile.WalletId },
                { "proof", new JObject
                    {
                        { "proofPurpose", "capabilityInvocation" },
                        { "created", DateTimeOffset.UtcNow.ToString("s") },
                        { "capability", profile.Capability }
                    }
                }
            };

            var proofResponse = LDProofs.CreateProof(new Okapi.Proofs.CreateProofRequest
            {
                Key = JsonWebKey.Parser.ParseFrom(profile.InvokerJwk),
                Document = capabilityDocument.ToStruct(),
                Suite = LdSuite.JcsEd25519Signature2020
            });

            // Set the auth field to the signed document by converting it back
            // to JSON and encoding it in base64
            CapInvocation = Convert.ToBase64String(Encoding.UTF8.GetBytes(
                    proofResponse.SignedDocument.ToJObject().ToString()));
        }
        
        public static GrpcChannel CreateChannelIfNeeded(string serviceAddress)
        {
            var url = new Uri(serviceAddress);
            if (url.IsDefaultPort) throw new ArgumentException("GRPC Port and scheme required");
            if ("https".Equals(url.Scheme)) throw new ArgumentException("HTTPS not yet supported");
            return GrpcChannel.ForAddress(serviceAddress, new GrpcChannelOptions());
        }
    }
}
