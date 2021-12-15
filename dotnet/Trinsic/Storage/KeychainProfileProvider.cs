
#if __IOS__

using System.Threading.Tasks;
using Google.Protobuf;
using Trinsic.Services.Account.V1;
using Foundation;
using Security;
using System.Threading;
using System;
using Multiformats.Base;
using System.Security.Cryptography;
using System.Text;

namespace Trinsic;

internal class KeychainProfileProvider : IProfileProvider
{
	public Task<AccountProfile> GetAsync(string name, CancellationToken cancellationToken = default)
	{
		var nameSerialized = Multibase.Base58.Encode(SHA256.Create().ComputeHash(Encoding.UTF8.GetBytes(name)));

		var rec = new SecRecord(SecKind.GenericPassword)
		{
			Generic = NSData.FromString(nameSerialized)
		};

		var match = SecKeyChain.QueryAsRecord(rec, out SecStatusCode res);
		if (res != SecStatusCode.Success)
		{
			throw new Exception("Profile not found");
		}

		return Task.FromResult(AccountProfile.Parser.ParseFrom(rec.ValueData!.ToArray()));
	}

    public Task SaveAsync(string name, AccountProfile accountProfile, CancellationToken cancellationToken = default)
    {
		var nameSerialized = Multibase.Base58.Encode(SHA256.Create().ComputeHash(Encoding.UTF8.GetBytes(name)));

		var rec = new SecRecord(SecKind.GenericPassword)
		{
			Generic = NSData.FromString(nameSerialized)
		};
        _ = SecKeyChain.QueryAsRecord(rec, out SecStatusCode res);
        if (res != SecStatusCode.Success)
		{
			var s = new SecRecord(SecKind.GenericPassword)
			{
				Label = $"Account Profile: {name}",
				Description = "Oberon Account Profile",
				Account = "Account",
				Service = "Service",
				Comment = "Your comment here",
				ValueData = NSData.FromArray(accountProfile.ToByteArray()),
				Generic = NSData.FromString(nameSerialized)
			};

			var err = SecKeyChain.Add(s);
		}
		else
        {
			throw new Exception("Profile already exists");
        }

		return Task.CompletedTask;
	}
}

#endif
