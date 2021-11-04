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
using Okapi.Keys.V1;
using Okapi.Proofs.V1;
using Trinsic.Services.UniversalWallet.V1;
using Google.Protobuf;
using Blake3Core;
using System.IO;
using Okapi.Security;
using Okapi.Security.V1;
using Trinsic.Services.Common.V1;
using System.Security.Cryptography;

namespace Trinsic
{
    public abstract class ServiceBase
    {
        private readonly HashAlgorithm hasher = new Blake3();

        public WalletProfile Profile { get; private set; }

        /// <summary>
        /// Create call metadata by setting the required authentication headers
        /// </summary>
        /// <returns></returns>
        protected Metadata GetMetadata(IMessage request)
        {
            // compute the hash of the request and capture current timestamp
            using MemoryStream stream = new(request.ToByteArray());
            var requestHash = hasher.ComputeHash(stream);
            var timestamp = DateTimeOffset.Now.ToUnixTimeMilliseconds();

            Nonce nonce = new()
            {
                Timestamp = timestamp,
                RequestHash = ByteString.CopyFrom(requestHash)
            };

            var proof = Oberon.CreateProof(new CreateOberonProofRequest
            {
                Token = Profile.AuthToken,
                Data = Profile.AuthData,
                Nonce = nonce.ToByteString()
            });

            return new Metadata
            {
                { "Authorization", $"Oberon " +
                    $"proof={Base64UrlEncode(proof.Proof.ToByteArray())}," +
                    $"data={Base64UrlEncode(Profile.AuthData.ToByteArray())}," +
                    $"nonce={Base64UrlEncode(nonce.ToByteArray())}"
                }
            };
        }

        /// <summary>
        /// Set the profile that will be used for authenticated requests
        /// </summary>
        /// <param name="profile">The profile data</param>
        public void SetProfile(WalletProfile profile)
        {
            Profile = profile;
        }

        internal static GrpcChannel CreateChannelIfNeeded(string serviceAddress)
        {
            try
            {
                var url = new Uri(serviceAddress);
                AssertPortIsProvided(serviceAddress, url);
                return GrpcChannel.ForAddress(serviceAddress, new GrpcChannelOptions());
            }
            catch (UriFormatException ufe)
            {
                throw new ArgumentException("Invalid service address", ufe);
            }
        }

        protected static void AssertPortIsProvided(string serviceAddress, Uri url)
        {
            // If port not provided, it will mismatch as a string
            var rebuiltUri = new UriBuilder(url.Scheme, url.Host, url.Port, url.AbsolutePath);
            // Remove trailing '/'
            if (!serviceAddress.TrimEnd('/').StartsWith(rebuiltUri.ToString().TrimEnd('/')))
                throw new ArgumentException("GRPC Port and scheme required");
        }

        /// <summary>
        /// Encoded a byte array to base64url string without padding
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        protected static string Base64UrlEncode(byte[] data) => Convert.ToBase64String(data)
            .Replace('+', '-')
            .Replace('/', '_')
            .Trim('=');
    }
}
