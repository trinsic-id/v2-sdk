using Microsoft.Extensions.DependencyInjection;
using Trinsic.Browser;
using Trinsic.Sdk.Options.V1;

namespace Trinsic;

public static class Extensions
{
    /// <summary>
    /// Add Trinsic SDK services and dependencies
    /// </summary>
    /// <param name="services"></param>
    /// <param name="configure"></param>
    /// <returns></returns>
    public static IServiceCollection AddTrinsicBrowser(this IServiceCollection services, Action<ServiceOptions>? configure = default) {

        services.Configure(configure);

        services.AddSingleton<BrowserTokenProvider>();
        services.AddSingleton<AccountService>(provider => new(provider.GetRequiredService<BrowserTokenProvider>()));
        services.AddSingleton<ProviderService>(provider => new(provider.GetRequiredService<BrowserTokenProvider>()));
        services.AddSingleton<CredentialsService>(provider => new(provider.GetRequiredService<BrowserTokenProvider>()));
        services.AddSingleton<WalletService>(provider => new(provider.GetRequiredService<BrowserTokenProvider>()));
        ;
        services.AddSingleton<TemplateService>(provider => new(provider.GetRequiredService<BrowserTokenProvider>()));
        services.AddSingleton<TrustRegistryService>(provider => new(provider.GetRequiredService<BrowserTokenProvider>()));
        return services;
    }
}
