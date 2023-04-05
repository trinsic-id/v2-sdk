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

        serviceCollection.AddSingleton<TrinsicService>();

        return serviceCollection;
    }
}