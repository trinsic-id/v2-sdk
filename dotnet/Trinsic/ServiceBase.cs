using System;
using Grpc.Core;
using Grpc.Net.Client;
using Trinsic.Services.UniversalWallet.V1;
using Google.Protobuf;
using Blake3Core;
using System.IO;
using Okapi.Security;
using Trinsic.Services.Common.V1;
using System.Security.Cryptography;

namespace Trinsic
{
    public abstract class ServiceBase
    {
        protected ServiceBase(WalletProfile? walletProfile, ServerConfig? serverConfig)
        {
            Profile = walletProfile;
            Configuration = serverConfig ?? new ServerConfig
            {
                Endpoint = "prod.trinsic.cloud",
                Port = 443,
                UseTls = true
            };
            Channel = GrpcChannel.ForAddress($"{(Configuration.UseTls ? "https" : "http")}://{Configuration.Endpoint}:{Configuration.Port}");
        }

        private readonly HashAlgorithm hasher = new Blake3();

        public WalletProfile? Profile { get; set; }
        public ServerConfig Configuration { get; private set; }
        public GrpcChannel Channel { get; set; }

        /// <summary>
        /// Create call metadata by setting the required authentication headers
        /// </summary>
        /// <returns></returns>
        protected Metadata BuildMetadata(IMessage request)
        {
            if (Profile is null) throw new Exception("Cannot call authenticated endpoint: profile must be set");

            // compute the hash of the request and capture current timestamp
            using MemoryStream stream = new(request.ToByteArray());
            byte[] requestHash = hasher.ComputeHash(stream);

            Nonce nonce = new()
            {
                Timestamp = DateTimeOffset.Now.ToUnixTimeMilliseconds(),
                RequestHash = ByteString.CopyFrom(requestHash)
            };

            var proof = Oberon.CreateProof(new()
            {
                Token = Profile!.AuthToken,
                Data = Profile!.AuthData,
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
