using System;
using System.Diagnostics.CodeAnalysis;
using System.Reflection;
using Grpc.Core;
using Google.Protobuf;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Account.V1;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Okapi.Metadata;
using Trinsic.Sdk.Options.V1;
#if __BROWSER__
using System.Net.Http;
using Grpc.Net.Client.Web;
#endif

namespace Trinsic;

[SuppressMessage("Usage", "CA2211:Non-constant fields should not be visible")]
public abstract class ServiceBase
{
    internal const string DefaultEcosystem = "default";
    internal const bool DefaultServerUseTls = true;
    internal const int DefaultServerPort = 443;
    internal const string DefaultServerEndpoint = "prod.trinsic.cloud";

    protected internal readonly ITokenProvider TokenProvider;

    protected internal ServiceBase() : this(new()) { }

    protected internal ServiceBase(ServiceOptions options) {
        Options = options;
        EnsureOptionDefaults();
        Channel = CreateChannel(Options);

#if __IOS__
        TokenProvider = KeyChainTokenProvider.StaticInstance;
#else
        TokenProvider = FileTokenProvider.StaticInstance;
#endif
    }

    protected internal ServiceBase(ServiceOptions options, ITokenProvider tokenProvider) : this(options) {
        TokenProvider = tokenProvider;
    }

    private void EnsureOptionDefaults() {
        if (string.IsNullOrWhiteSpace(Options.ServerEndpoint)) Options.ServerEndpoint = DefaultServerEndpoint;
        if (Options.ServerPort == default) Options.ServerPort = DefaultServerPort;
        if (Options.ServerPort == DefaultServerPort) Options.ServerUseTls = DefaultServerUseTls;
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

    /// <summary>
    /// Gets the options set on this service.
    /// </summary>
    public ServiceOptions Options { get; }

    /// <summary>
    /// Gets the gRPC channel used by this service. This channel can be reused
    /// by passing this instance to other service constructors.
    /// </summary>
    protected GrpcChannel Channel { get; }

    /// <summary>
    /// The cached metadata of the Okapi library being used.
    ///
    /// Do not read this variable directly -- use `GetOkapiMetadata()`.
    /// </summary>
    private MetadataResponse? CachedOkapiMetadata { get; set; } = null;

    /// <summary>
    /// Create call metadata by setting authentication and version headers
    ///
    /// TODO: `request` only has relevance if `authenticated` == true. Decide what to do about that.
    /// </summary>
    /// <param name="request">Protobuf request message to create headers for</param>
    /// <param name="authenticated">If true, authentication headers will be built for request -- and exception will be thrown if no authentication token is available to do so</param>
    /// <returns></returns>
    protected async Task<Metadata> BuildMetadataAsync(IMessage request, bool authenticated = true) {
        var headers = new Metadata() {
            {"TrinsicSDKLanguage", "dotnet"},
            {"TrinsicSDKVersion", GetSdkVersion()},
            {"TrinsicOkapiVersion", GetOkapiMetadata().Version}
        };

        // If no authentication needed, return early
        if (!authenticated)
            return headers;

        // Build Authentication header
        var authToken = string.IsNullOrWhiteSpace(Options.AuthToken)
            ? await TokenProvider.GetAsync()
            : Options.AuthToken;

        if (authToken is null)
            throw new("Cannot call authenticated endpoint before signing in");

        var profile = AccountProfile.Parser.ParseFrom(Base64Url.DecodeBytes(authToken));

        headers.Add("Authorization", await _securityProvider.GetAuthHeaderAsync(profile, request));
        return headers;
    }

    /// <summary>
    /// Create call metadata by setting the required authentication and version headers
    ///
    /// TODO: `request` only has relevance if `authenticated` == true. Decide what to do about that.
    /// </summary>
    /// <param name="request">Protobuf request message to create headers for</param>
    /// <param name="authenticated">If true, authentication headers will be built for request -- and exception will be thrown if no authentication token is available to do so</param>
    /// <returns></returns>
    protected Metadata BuildMetadata(IMessage request, bool authenticated = true) {
        var headers = new Metadata() {
            {"TrinsicSDKLanguage", "dotnet"},
            {"TrinsicSDKVersion", GetSdkVersion()},
            {"TrinsicOkapiVersion", GetOkapiMetadata().Version}
        };

        // If no authentication needed, return early
        if (!authenticated)
            return headers;

        // Build authentication header
        var authToken = string.IsNullOrWhiteSpace(Options.AuthToken)
            ? TokenProvider.Get()
            : Options.AuthToken;
        
        if (authToken is null)
            throw new("Cannot call authenticated endpoint before signing in");

        var profile = AccountProfile.Parser.ParseFrom(Base64Url.DecodeBytes(authToken));

        headers.Add("Authorization", _securityProvider.GetAuthHeader(profile, request));
        return headers;
    }

    /// <summary>
    /// Fetches the current version of the SDK
    /// </summary>
    /// <returns></returns>
    private string GetSdkVersion() {
        // TODO: this is always returning `1.0.0.0` because that's what's specified in the project settings. Figure out how to get the actual version number.
        return Assembly.GetAssembly(typeof(ServiceBase))?.GetName().Version?.ToString() ?? "unknown";
    }

    /// <summary>
    /// Returns metadata from the Okapi library, caching in-memory to avoid repeat requests
    /// </summary>
    /// <returns></returns>
    private MetadataResponse GetOkapiMetadata() {
        return CachedOkapiMetadata ??= OkapiMetadata.GetMetadata();
    }
}
