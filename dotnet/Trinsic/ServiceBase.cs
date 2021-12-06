using System;
using Grpc.Core;
using Google.Protobuf;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Account.V1;
using System.Threading.Tasks;
using Grpc.Net.Client;
#if __BROWSER__
using System.Net.Http;
using Grpc.Net.Client.Web;
#endif

namespace Trinsic;

public abstract class ServiceBase
{
    protected ServiceBase(AccountProfile? accountProfile, ServerConfig? serverConfig, GrpcChannel? existingChannel)
    {
        Profile = accountProfile;
        Configuration = serverConfig ?? new ServerConfig
        {
            Endpoint = "prod.trinsic.cloud",
            Port = 443,
            UseTls = true
        };

#if __BROWSER__
        var httpClient = new HttpClient(new GrpcWebHandler(GrpcWebMode.GrpcWeb, new HttpClientHandler()));
        Channel = existingChannel ?? GrpcChannel.ForAddress(Configuration.FormatUrl(), new GrpcChannelOptions { HttpClient = httpClient });
#else
        Channel = existingChannel ?? GrpcChannel.ForAddress(Configuration.FormatUrl());
#endif
    }

    private readonly ISecurityProvider securityProvider = new OberonSecurityProvider();

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
