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
using System.Threading.Tasks;

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
    private ISecurityProvider securityProvider = new OberonSecurityProvider();

    public AccountProfile? Profile { get; set; }
    public ServerConfig Configuration { get; private set; }
    public GrpcChannel Channel { get; set; }

    /// <summary>
    /// Create call metadata by setting the required authentication headers
    /// </summary>
    /// <returns></returns>
    protected async Task<Metadata> BuildMetadataAsync(IMessage request)
    {
        if (Profile is null) throw new Exception("Cannot call authenticated endpoint: profile must be set");

        return new Metadata
        {
            { "Authorization", await securityProvider.GetAuthHeaderAsync(Profile, request) }
        };
    }
}
