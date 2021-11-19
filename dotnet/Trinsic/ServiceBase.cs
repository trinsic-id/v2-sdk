using System;
using Grpc.Core;
using Grpc.Net.Client;
using Google.Protobuf;
using Blake3Core;
using System.IO;
using Okapi.Security;
using Trinsic.Services.Common.V1;
using System.Security.Cryptography;
using Trinsic.Services.Account.V1;
using System.Linq;

namespace Trinsic;

public abstract class ServiceBase
{
    protected ServiceBase(AccountProfile? accountProfile, ServerConfig? serverConfig)
    {
        Profile = accountProfile;
        Configuration = serverConfig ?? new ServerConfig
        {
            Endpoint = "prod.trinsic.cloud",
            Port = 443,
            UseTls = true
        };
        Channel = GrpcChannel.ForAddress(Configuration.FormatUrl());
    }

    private readonly HashAlgorithm hasher = new Blake3();

    public AccountProfile? Profile { get; set; }
    public ServerConfig Configuration { get; private set; }
    public GrpcChannel Channel { get; set; }

    /// <summary>
    /// Create call metadata by setting the required authentication headers
    /// </summary>
    /// <returns></returns>
    protected Metadata BuildMetadata(IMessage request)
    {
        if (Profile is null) throw new Exception("Cannot call authenticated endpoint: profile must be set");
        if (Profile.Protection?.Enabled ?? false) throw new Exception("The token must be unprotected before use.");

        // compute the hash of the request and capture current timestamp
        byte[] requestBytes = request.ToByteArray();
        ByteString requestHash = ByteString.Empty;

        if (requestBytes.Any())
        {
            using MemoryStream stream = new(request.ToByteArray());
            requestHash = ByteString.CopyFrom(hasher.ComputeHash(stream));
        }

        Nonce nonce = new()
        {
            Timestamp = DateTimeOffset.Now.ToUnixTimeMilliseconds(),
            RequestHash = requestHash
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
