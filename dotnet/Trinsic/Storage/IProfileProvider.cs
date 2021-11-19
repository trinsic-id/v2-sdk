using System.Threading;
using System.Threading.Tasks;
using Trinsic.Services.Account.V1;

namespace Trinsic;

public interface IProfileProvider
{
    Task<AccountProfile> GetAsync(string name, CancellationToken cancellationToken = default);

    Task SaveAsync(string name, AccountProfile accountProfile, CancellationToken cancellationToken = default);
}
