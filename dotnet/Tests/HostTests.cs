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
    [Fact(DisplayName = "Test service host")]
    public async Task TestGenericHost() {
        var host = Host
            .CreateDefaultBuilder()
            .ConfigureServices(services => {
                services.AddTrinsic();
            }).Build();

        await host.StartAsync();

        var providerService = host.Services.GetService<ProviderService>();
        var accountService = host.Services.GetService<AccountService>();

        providerService.Should().NotBeNull();
        accountService.Should().NotBeNull();

        await host.StopAsync();
    }
}
