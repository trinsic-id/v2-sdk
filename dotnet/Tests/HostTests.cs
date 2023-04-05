using System.Diagnostics.CodeAnalysis;
using System.Threading.Tasks;
using FluentAssertions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Trinsic;
using Trinsic.Services.Common.V1;
using Xunit;

namespace Tests;

[SuppressMessage("ReSharper", "InconsistentNaming")]
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
        accountService.Options.AuthToken.Should().Be(string.Empty);

        await host.StopAsync();
    }

    [Fact(DisplayName = "Test configured service host")]
    public async Task TestConfiguredGenericHost() {
        var host = Host
            .CreateDefaultBuilder()
            .ConfigureServices(services => {
                services.AddTrinsic(options => {
                    options.ServiceOptions.AuthToken = "auth";
                    options.ServiceOptions.ServerEndpoint = "example.com";
                    options.ServiceOptions.ServerPort = 42;
                    options.ServiceOptions.ServerUseTls = true;
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
        accountService.Options.AuthToken.Should().Be("auth");

        await host.StopAsync();
    }

    [Fact(DisplayName = "Test disabled token persistence")]
    public async Task TestDisableTokenPersistence() {
        var host = Host
            .CreateDefaultBuilder()
            .ConfigureServices(services => {
                services.AddTrinsic(options => {

                });
            }).Build();

        await host.StartAsync();

        await host.StopAsync();
    }
}