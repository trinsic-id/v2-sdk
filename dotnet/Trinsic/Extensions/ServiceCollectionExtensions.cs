using System;
using System.Diagnostics.CodeAnalysis;
using Microsoft.Extensions.Options;
using Trinsic;
using Trinsic.Sdk.Options.V1;

namespace Microsoft.Extensions.DependencyInjection;

[SuppressMessage("ReSharper", "MemberCanBePrivate.Global")]
[SuppressMessage("ReSharper", "UnusedType.Global")]
[SuppressMessage("ReSharper", "UnusedMember.Global")]
public static class ServiceCollectionExtensions
{
    /// <summary>
    /// Registers Trinsic SDK services and dependencies
    /// </summary>
    /// <param name="services"></param>
    /// <param name="configure"></param>
    /// <returns></returns>
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
#elif __BROWSER__
        services.AddSingleton<ITokenProvider, BrowserTokenProvider>();
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
