
#if __IOS__

using System.Threading.Tasks;
using Google.Protobuf;
using Trinsic.Services.Account.V1;
using Foundation;
using Security;
using System.Threading;
using Intents;

namespace Trinsic;

internal class KeyChainTokenProvider : ITokenProvider
{
    public static KeyChainTokenProvider StaticInstance => new();
    
    public Task<string?> GetAsync(string name, CancellationToken cancellationToken = default) {
        return Task.Run(() => Get(name), cancellationToken);
    }
    public string? Get(string name) {
        var rec = new SecRecord(SecKind.GenericPassword) {
            Generic = NSData.FromString(name)
        };

        var @record = SecKeyChain.QueryAsRecord(rec, out var res);
        return res != SecStatusCode.Success ? null : @record!.ValueData!.ToString();
    }

    public Task SaveAsync(string authToken, string name = "default", CancellationToken cancellationToken = default) {
        return Task.Run(() => Save(authToken, name), cancellationToken);
    }

    public void Save(string authToken, string name = "default") {
        var rec = new SecRecord(SecKind.GenericPassword) {
            Generic = NSData.FromString(name)
        };
        _ = SecKeyChain.QueryAsRecord(rec, out SecStatusCode res);
        if (res != SecStatusCode.Success) {
            var s = new SecRecord(SecKind.GenericPassword) {
                Label = $"Account Profile: {name}",
                Description = "Oberon Account Profile",
                Account = "Account",
                Service = "Service",
                Comment = "Your comment here",
                ValueData = NSData.FromString(authToken),
                Generic = NSData.FromString(name)
            };

            var err = SecKeyChain.Add(s);
            if (err != SecStatusCode.Success) {
                throw new($"error saving token: {err:G}");
            }
        }
        else {
            throw new("Profile already exists");
        }
    }
}

#endif
