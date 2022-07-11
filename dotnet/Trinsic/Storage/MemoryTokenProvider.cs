using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Trinsic;

public class MemoryTokenProvider : ITokenProvider
{
    public static MemoryTokenProvider StaticInstance => new();
    
    private Dictionary<string, string> tokens = new();
    public Task<string?> GetAsync(string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        return Task.FromResult(tokens[name])!;
    }
    public string? Get(string name = TokenDefaults.Name) {
        return tokens[name];
    }
    public Task SaveAsync(string authToken, string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        tokens[name] = authToken;
        return Task.CompletedTask;
    }
    public void Save(string authToken, string name = TokenDefaults.Name) {
        tokens[name] = authToken;
    }
}
