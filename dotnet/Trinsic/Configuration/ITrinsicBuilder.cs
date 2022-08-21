using Trinsic.Sdk.Options.V1;

// ReSharper disable once CheckNamespace
namespace Microsoft.Extensions.DependencyInjection;

public interface ITrinsicBuilder
{
    /// <summary>
    /// Service collection
    /// </summary>
    IServiceCollection Services { get; }

    /// <summary>
    /// Enables or disables automatic token persistence
    /// </summary>
    bool TokenPersistenceEnabled { get; set; }

    /// <summary>
    /// Gets or sets the network endpoint service options
    /// </summary>
    ServiceOptions ServiceOptions { get; set; }
}