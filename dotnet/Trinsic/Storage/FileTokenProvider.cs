using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

namespace Trinsic;

internal class FileTokenProvider : ITokenProvider
{
    private const string Vendor = "Trinsic";

    public static FileTokenProvider StaticInstance => new();

    private string? _cachedToken;

    public async Task<string?> GetAsync(string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        if (_cachedToken is not null) return _cachedToken;

        var rootPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var filename = Path.Combine(rootPath, Vendor, name);

        try {
            _cachedToken = await File.ReadAllTextAsync(filename, cancellationToken);
        } catch {
            // ignored
        }
        return _cachedToken;
    }
    public string? Get(string name = TokenDefaults.Name) {
        if (_cachedToken is not null) return _cachedToken;

        var rootPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var filename = Path.Combine(rootPath, Vendor, name);

        try {
            _cachedToken = File.ReadAllText(filename);
        } catch {
            // ignored
        }
        return _cachedToken;
    }

    public Task SaveAsync(string authToken, string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        var rootPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var filename = Path.Combine(rootPath, Vendor, name);

        Directory.CreateDirectory(Path.Combine(rootPath, Vendor));

        _cachedToken = authToken;

        return File.WriteAllTextAsync(filename, authToken, cancellationToken);
    }
    public void Save(string authToken, string name = TokenDefaults.Name) {
        var rootPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var filename = Path.Combine(rootPath, Vendor, name);

        Directory.CreateDirectory(Path.Combine(rootPath, Vendor));

        _cachedToken = authToken;

        File.WriteAllText(filename, authToken);
    }
}
