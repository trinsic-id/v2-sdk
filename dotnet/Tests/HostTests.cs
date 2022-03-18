using System.Threading.Tasks;
using FluentAssertions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Trinsic;
using Trinsic.Services.Common.V1;
using Xunit;

namespace Tests;

public class HostTests
{
    [Fact(DisplayName = "Test default service host")]
    public async Task TestGenericHost() {
        var host = Host
            .CreateDefaultBuilder()
            .ConfigureServices(services => {
                services.AddTrinsic();
            }).Build();

        await host.StartAsync();

        var providerService = host.Services.GetService<ProviderService>();
        var accountService = host.Services.GetRequiredService<AccountService>();

        providerService.Should().NotBeNull();
        accountService.Should().NotBeNull();

        accountService.Options.ServerEndpoint.Should().Be(ServiceBase.DefaultServerEndpoint);
        accountService.Options.ServerPort.Should().Be(ServiceBase.DefaultServerPort);
        accountService.Options.ServerUseTls.Should().Be(ServiceBase.DefaultServerUseTls);
        accountService.Options.DefaultEcosystem.Should().Be(ServiceBase.DefaultEcosystem);
        accountService.Options.AuthToken.Should().Be(string.Empty);
        accountService.TokenProvider.Should().BeOfType<FileTokenProvider>();

        await host.StopAsync();
    }

    [Fact(DisplayName = "Test configured service host")]
    public async Task TestConfiguredGenericHost() {
        var host = Host
            .CreateDefaultBuilder()
            .ConfigureServices(services => {
                services.AddTrinsic(options => {
                    options.AuthToken = "auth";
                    options.DefaultEcosystem = "eco";
                    options.ServerEndpoint = "example.com";
                    options.ServerPort = 42;
                    options.ServerUseTls = true;
                });
            }).Build();

        await host.StartAsync();

        var providerService = host.Services.GetService<ProviderService>();
        var accountService = host.Services.GetRequiredService<AccountService>();

        providerService.Should().NotBeNull();
        accountService.Should().NotBeNull();

        accountService.Options.ServerEndpoint.Should().Be("example.com");
        accountService.Options.ServerPort.Should().Be(42);
        accountService.Options.ServerUseTls.Should().BeTrue();
        accountService.Options.DefaultEcosystem.Should().Be("eco");
        accountService.Options.AuthToken.Should().Be("auth");

        await host.StopAsync();
    }
}