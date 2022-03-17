using System;
using Microsoft.Extensions.DependencyInjection;
using Trinsic.Sdk.Options.V1;

namespace Trinsic.Services.Common.V1;

public static class ServiceOptionsExtensions
{
    public static string FormatUrl(this ServiceOptions options) =>
        $"{(options.ServerUseTls ? "https" : "http")}://{options.ServerEndpoint}:{options.ServerPort}";
}

public static class ServiceCollectionExtensions
{
    public static IServiceCollection AddTrinsic(this IServiceCollection services, Action<ServiceOptions>? configure = default) {

        services.Configure(configure);

        services.AddSingleton<AccountService>();
        services.AddSingleton<ProviderService>();
        services.AddSingleton<CredentialsService>();
        services.AddSingleton<WalletService>();
        services.AddSingleton<TemplateService>();
        services.AddSingleton<TrustRegistryService>();
        return services;
    }
}