using System.Threading;
using System.Threading.Tasks;

namespace Trinsic;

public class NoOpTokenProvider : ITokenProvider
{
    public Task<string?> GetAsync(string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        return Task.FromResult(default(string));
    }
    public string? Get(string name = TokenDefaults.Name) {
        return default;
    }
    public Task SaveAsync(string authToken, string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        return Task.CompletedTask;
    }
    public void Save(string authToken, string name = TokenDefaults.Name) {
    }
}