using System;
using Grpc.Core;
using Google.Protobuf;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Account.V1;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Sdk.Options.V1;
#if __BROWSER__
using System.Net.Http;
using Grpc.Net.Client.Web;
#endif

namespace Trinsic;

public abstract class ServiceBase
{
    private const string DefaultEcosystem = "default";
    private const bool DefaultServerUseTls = true;
    private const int DefaultServerPort = 443;
    private const string DefaultServerEndpoint = "prod.trinsic.cloud";
    
    protected internal ServiceBase() {
        Options = new();
        EnsureOptionDefaults();
        Channel = CreateChannel(Options);
    }

    protected internal ServiceBase(ServiceOptions options) {
        Options = options;
        EnsureOptionDefaults();
        Channel = CreateChannel(options);
    }

    private void EnsureOptionDefaults() {
        if (string.IsNullOrWhiteSpace(Options.ServerEndpoint)) {
            Options.ServerEndpoint = DefaultServerEndpoint;
        }
        if (Options.ServerPort == default) {
            Options.ServerPort = DefaultServerPort;
        }
        if (Options.ServerPort == DefaultServerPort) {
            Options.ServerUseTls = DefaultServerUseTls;
        }
        if (string.IsNullOrWhiteSpace(Options.DefaultEcosystem)) {
            Options.DefaultEcosystem = DefaultEcosystem;
        }
    }

    private static GrpcChannel CreateChannel(ServiceOptions options) {
#if __BROWSER__
        var httpClient = new HttpClient(new GrpcWebHandler(GrpcWebMode.GrpcWeb, new HttpClientHandler()));
        return GrpcChannel.ForAddress(options.FormatUrl(), new GrpcChannelOptions { HttpClient = httpClient });
#else
        return GrpcChannel.ForAddress(options.FormatUrl());
#endif
    }

    private readonly ISecurityProvider _securityProvider = new OberonSecurityProvider();

    public ServiceOptions Options { get; protected set; }

    /// <summary>
    /// Gets the gRPC channel used by this service. This channel can be reused
    /// by passing this instance to other service constructors.
    /// </summary>
    public GrpcChannel Channel { get; set; }

    /// <summary>
    /// Create call metadata by setting the required authentication headers
    /// </summary>
    /// <returns></returns>
    protected async Task<Metadata> BuildMetadataAsync(IMessage request) {
        if (Options is null || string.IsNullOrWhiteSpace(Options.AuthToken)) {
            throw new("Cannot call authenticated endpoint: auth token must be set in service options");
        }

        var profile = AccountProfile.Parser.ParseFrom(Convert.FromBase64String(Options.AuthToken));

        return new() {
            {"Authorization", await _securityProvider.GetAuthHeaderAsync(profile, request)}
        };
    }

    /// <summary>
    /// Create call metadata by setting the required authentication headers
    /// </summary>
    /// <returns></returns>
    protected Metadata BuildMetadata(IMessage request) {
        if (Options is null || string.IsNullOrWhiteSpace(Options.AuthToken)) {
            throw new("Cannot call authenticated endpoint: auth token must be set in service options");
        }

        var profile = AccountProfile.Parser.ParseFrom(Convert.FromBase64String(Options.AuthToken));

        return new() {
            {"Authorization", _securityProvider.GetAuthHeader(profile, request)}
        };
    }
}