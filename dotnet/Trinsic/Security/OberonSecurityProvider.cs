using System;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Threading.Tasks;
using Blake3Core;
using Google.Protobuf;
using Okapi.Security;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;

namespace Trinsic;

internal class OberonSecurityProvider : ISecurityProvider
{
    private readonly HashAlgorithm _hasher = new Blake3();

    public Task<string> GetAuthHeaderAsync(AccountProfile accountProfile, IMessage message)
    {
        return Task.FromResult(GetAuthHeader(accountProfile, message));
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

    public string GetAuthHeader(AccountProfile accountProfile, IMessage message)
    {
        if (accountProfile.Protection?.Enabled ?? false) throw new("The token must be unprotected before use.");

        // compute the hash of the request and capture current timestamp
        byte[] requestBytes = message.ToByteArray();
        ByteString requestHash = ByteString.Empty;

        if (requestBytes.Any())
        {
            using MemoryStream stream = new(message.ToByteArray());
            requestHash = ByteString.CopyFrom(_hasher.ComputeHash(stream));
        }

        Nonce nonce = new()
        {
            Timestamp = DateTimeOffset.Now.ToUnixTimeMilliseconds(),
            RequestHash = requestHash
        };

        var proof = Oberon.CreateProof(new()
        {
            Token = accountProfile!.AuthToken,
            Data = accountProfile!.AuthData,
            Nonce = nonce.ToByteString()
        });

        var header = $"Oberon " +
            $"ver={1}," +
            $"proof={Base64UrlEncode(proof.Proof.ToByteArray())}," +
            $"data={Base64UrlEncode(accountProfile.AuthData.ToByteArray())}," +
            $"nonce={Base64UrlEncode(nonce.ToByteArray())}";

        return header;
    }
}
