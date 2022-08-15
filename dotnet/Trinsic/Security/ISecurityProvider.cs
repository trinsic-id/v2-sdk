using System.Threading.Tasks;
using Google.Protobuf;
using Trinsic.Services.Account.V1;

namespace Trinsic;

public interface ISecurityProvider
{
    Task<string> GetAuthHeaderAsync(AccountProfile accountProfile, IMessage message);

    string GetAuthHeader(AccountProfile accountProfile, IMessage message);
}