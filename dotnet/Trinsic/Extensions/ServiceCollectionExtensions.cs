using System;
using System.Diagnostics.CodeAnalysis;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Microsoft.Extensions.Options;
using Trinsic;
using Trinsic.Sdk.Options.V1;

// ReSharper disable once CheckNamespace
namespace Microsoft.Extensions.DependencyInjection;

[SuppressMessage("ReSharper", "MemberCanBePrivate.Global")]
[SuppressMessage("ReSharper", "UnusedType.Global")]
[SuppressMessage("ReSharper", "UnusedMember.Global")]
public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddTrinsic(this IServiceCollection serviceCollection, Action<ITrinsicBuilder> configureBuilder) {
        DefaultTrinsicBuilder builder = new(serviceCollection);
        configureBuilder(builder);
        serviceCollection.Configure((ServiceOptions options) => options.MergeFrom(builder.ServiceOptions));

        if (!builder.TokenPersistenceEnabled)
        {
            builder.Services.AddSingleton<ITokenProvider, NoOpTokenProvider>();
        }

        AddTrinsic(serviceCollection);

        return serviceCollection;
    }

    /// <summary>
    /// Registers Trinsic SDK services and dependencies
    /// </summary>
    /// <param name="services"></param>
    /// <returns></returns>
    public static IServiceCollection AddTrinsic(this IServiceCollection services) {
#if __IOS__
        services.TryAddSingleton<ITokenProvider, KeyChainTokenProvider>();
#elif __BROWSER__
        services.TryAddSingleton<ITokenProvider, BrowserTokenProvider>();
#else
        services.TryAddSingleton<ITokenProvider, FileTokenProvider>();
#endif
        services.AddSingleton<AccountService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<ProviderService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        services.AddSingleton<CredentialService>(provider =>
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
        services.AddSingleton<TrinsicService>(provider =>
            new(provider.GetRequiredService<ITokenProvider>(),
                provider.GetRequiredService<IOptions<ServiceOptions>>()));
        return services;
    }
}