using System;
using System.Diagnostics.CodeAnalysis;
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
    /// <summary>
    /// Add Trinsic Service dependencies and optionally configure the service options
    /// </summary>
    /// <param name="serviceCollection"></param>
    /// <param name="configureOptions"></param>
    /// <returns></returns>
    public static IServiceCollection AddTrinsic(this IServiceCollection serviceCollection, Action<TrinsicOptions>? configureOptions = null) {
        if (configureOptions is not null)
        {
            serviceCollection.Configure(configureOptions);
        }

        return serviceCollection.AddSingleton(provider => new TrinsicService(provider.GetService<IOptions<TrinsicOptions>>()?.Value ?? new TrinsicOptions()));
    }
}