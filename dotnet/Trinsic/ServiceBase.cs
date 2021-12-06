using System;
using Grpc.Core;
using Google.Protobuf;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Account.V1;
using System.Threading.Tasks;
using Grpc.Net.Client;

namespace Trinsic;

public abstract class ServiceBase
{
    protected ServiceBase(AccountProfile? accountProfile, ServerConfig? serverConfig, GrpcChannel? existingChannel)
    {
        profile = accountProfile;
        Configuration = serverConfig ?? new ServerConfig
        {
            Endpoint = "prod.trinsic.cloud",
            Port = 443,
            UseTls = true
        };
        Channel = existingChannel ?? GrpcChannel.ForAddress(Configuration.FormatUrl());
    }

    private readonly ISecurityProvider securityProvider = new OberonSecurityProvider();
    private AccountProfile? profile;

    public virtual AccountProfile? Profile { get => profile; set => profile = value; }
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

    /// <summary>
    /// Create call metadata by setting the required authentication headers
    /// </summary>
    /// <returns></returns>
    protected Metadata BuildMetadata(IMessage request)
    {
        if (Profile is null) throw new Exception("Cannot call authenticated endpoint: profile must be set");

        return new Metadata
        {
            { "Authorization", securityProvider.GetAuthHeader(Profile, request) }
        };
    }
}
