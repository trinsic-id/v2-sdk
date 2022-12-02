using System;
using System.Diagnostics.CodeAnalysis;
using System.Reflection;
using System.Threading.Tasks;
using Google.Protobuf;
using Grpc.Core;
using Grpc.Core.Interceptors;
using Grpc.Net.Client;
using Okapi.Metadata;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
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

    private readonly ISecurityProvider _securityProvider = new OberonSecurityProvider();

    protected internal readonly ITokenProvider TokenProvider;

    /// <summary>
    ///     Gets the options set on this service.
    /// </summary>
    public ServiceOptions Options { get; }
    protected CallInvoker Invoker { get; set; }

    private MetadataResponse? _okapiMetadata;
    /// <summary>
    ///     The cached metadata of the Okapi library being used.
    /// </summary>
    private MetadataResponse CachedOkapiMetadata
    {
        get
        {
            _okapiMetadata ??= OkapiMetadata.GetMetadata();
            return _okapiMetadata;
        }
    }

    protected internal ServiceBase() : this(null, null, null) { }

    protected internal ServiceBase(ServiceOptions options) : this(null, options, null) {
    }

    protected internal ServiceBase(ServiceOptions options, ITokenProvider tokenProvider) : this(tokenProvider, options, null) {
    }

    protected internal ServiceBase(ITokenProvider? tokenProvider, ServiceOptions? options, CallInvoker? invoker) {
        TokenProvider = tokenProvider ?? GetDefaultTokenProvider();
        Options = options ?? new();
        EnsureOptionDefaults();
        Invoker = (invoker ?? CreateChannel(Options).CreateCallInvoker())
            .Intercept(metadata => {
                var headers = new Metadata {
                {"TrinsicSDKLanguage", "dotnet"},
                {"TrinsicSDKVersion", GetSdkVersion()},
                {"TrinsicOkapiVersion", CachedOkapiMetadata.Version}
            };
                foreach (var x in metadata) headers.Add(x);
                return headers;
            });
    }

    public void AddInterceptor(Func<Metadata, Metadata> interceptor) {
        Invoker = Invoker.Intercept(interceptor);
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

    private static ITokenProvider GetDefaultTokenProvider() {
#if __IOS__
        return KeyChainTokenProvider.StaticInstance;
#else
        return FileTokenProvider.StaticInstance;
#endif
    }

    /// <summary>
    ///     Create call metadata by setting authentication and version headers
    /// </summary>
    /// <param name="request">Protobuf request message to create headers for</param>
    /// <returns></returns>
    protected async Task<Metadata> BuildMetadataAsync(IMessage? request = null) {
        var headers = new Metadata();
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
    ///     Create call metadata by setting the required authentication and version headers for provided request
    /// </summary>
    /// <param name="request">Protobuf request message to create headers for</param>
    /// <returns></returns>
    protected Metadata BuildMetadata(IMessage? request = null) {
        var headers = new Metadata();
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
    ///     Fetches the current version of the SDK
    /// </summary>
    /// <returns></returns>
    private string GetSdkVersion() {
        // This will always be 1.0.0.0 on local builds, since the version number is set on the github action during publish.
        return Assembly.GetAssembly(typeof(ServiceBase))?.GetName().Version?.ToString() ?? "unknown";
    }
}