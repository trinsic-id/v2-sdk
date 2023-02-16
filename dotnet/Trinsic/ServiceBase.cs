using System.Diagnostics.CodeAnalysis;
using System.Reflection;
using System.Runtime.CompilerServices;
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
    internal const string DefaultEcosystem = "";
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

    private MetadataResponse? _okapiMetadata;
    /// <summary>
    /// The cached metadata of the Okapi library being used.
    /// </summary>
    private MetadataResponse CachedOkapiMetadata
    {
        get
        {
            _okapiMetadata ??= OkapiMetadata.GetMetadata();
            return _okapiMetadata;
        }
    }

    /// <summary>
    /// Create call metadata by setting authentication and version headers
    /// </summary>
    /// <param name="request">Protobuf request message to create headers for</param>
    /// <returns></returns>
    protected async Task<Metadata> BuildMetadataAsync(IMessage? request = null) {
        var headers = new Metadata() {
            {"TrinsicSDKLanguage", "dotnet"},
            {"TrinsicSDKVersion", GetSdkVersion()},
            {"TrinsicOkapiVersion", CachedOkapiMetadata.Version}
        };

        // If no authentication needed, return early
        if (request == null)
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
    /// Create call metadata by setting the required authentication and version headers for provided request
    /// </summary>
    /// <param name="request">Protobuf request message to create headers for</param>
    /// <returns></returns>
    protected Metadata BuildMetadata(IMessage? request = null) {
        var headers = new Metadata() {
            {"TrinsicSDKLanguage", "dotnet"},
            {"TrinsicSDKVersion", GetSdkVersion()},
            {"TrinsicOkapiVersion", CachedOkapiMetadata.Version}
        };

        // If no authentication needed, return early
        if (request == null)
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
    protected internal string GetSdkVersion() {
        // This will always be 1.0.0.0 on local builds, since the version number is set on the github action during publish.
        return Assembly.GetAssembly(typeof(ServiceBase))?.GetName().Version?.ToString(3) ?? "unknown";
    }
}