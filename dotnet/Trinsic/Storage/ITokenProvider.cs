using System.Diagnostics.CodeAnalysis;
using System.Threading;
using System.Threading.Tasks;

namespace Trinsic;

[SuppressMessage("ReSharper", "ClassNeverInstantiated.Global")]
internal class TokenDefaults
{
    internal const string Name = "dotnet.authtoken";
}
public interface ITokenProvider
{
    Task<string?> GetAsync(string name = TokenDefaults.Name, CancellationToken cancellationToken = default);

    string? Get(string name = TokenDefaults.Name);

    Task SaveAsync(string authToken, string name = TokenDefaults.Name, CancellationToken cancellationToken = default);

    void Save(string authToken, string name = TokenDefaults.Name);
}