using System;
using System.Diagnostics.CodeAnalysis;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;

namespace Trinsic.Services.Common.V1;

public static class ServiceOptionsExtensions
{
    public static string FormatUrl(this ServiceOptions options) =>
        $"{(options.ServerUseTls ? "https" : "http")}://{options.ServerEndpoint}:{options.ServerPort}";
}

[SuppressMessage("ReSharper", "MemberCanBePrivate.Global")]
public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddTrinsic(this IServiceCollection services, Action<ServiceOptions> configure) {
        services.Configure(configure);

        return AddTrinsic(services);
    }
    
    /// <summary>
    /// Registers Trinsic SDK services and dependencies
    /// </summary>
    /// <param name="services"></param>
    /// <returns></returns>
    public static IServiceCollection AddTrinsic(this IServiceCollection services) {
#if __IOS__
        services.AddSingleton<ITokenProvider, KeyChainTokenProvider>();
#else
        services.AddSingleton<ITokenProvider, FileTokenProvider>();
#endif
        services.AddSingleton<AccountService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<ProviderService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<CredentialsService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<WalletService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<TemplateService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<TrustRegistryService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        return services;
    }
}