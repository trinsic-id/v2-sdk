using Trinsic.Sdk.Options.V1;

namespace Microsoft.Extensions.DependencyInjection;

public class DefaultTrinsicBuilder : ITrinsicBuilder
{
    internal DefaultTrinsicBuilder(IServiceCollection services) {
        Services = services;
        ServiceOptions = new();
    }

    /// <inheritdoc/>
    public IServiceCollection Services { get; }

    /// <inheritdoc/>
    public bool TokenPersistenceEnabled { get; set; } = true;

    /// <inheritdoc/>
    public ServiceOptions ServiceOptions { get; set; }
}