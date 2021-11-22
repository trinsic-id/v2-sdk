using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Google.Protobuf;
using Multiformats.Base;
using Trinsic.Services.Account.V1;

namespace Trinsic;

internal class FileProfileProvider : IProfileProvider
{
    public async Task<AccountProfile> GetAsync(string name, CancellationToken cancellationToken = default)
    {
        var rootPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var filename = Path.Combine(
            rootPath,
            Multibase.Base58.Encode(SHA256.Create().ComputeHash(Encoding.UTF8.GetBytes(name))));

        return AccountProfile.Parser.ParseFrom(
            await File.ReadAllBytesAsync(filename, cancellationToken));
    }

    public Task SaveAsync(string name, AccountProfile accountProfile, CancellationToken cancellationToken = default)
    {
        var rootPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var filename = Path.Combine(
            rootPath,
            Multibase.Base58.Encode(SHA256.Create().ComputeHash(Encoding.UTF8.GetBytes(name))));

        return File.WriteAllBytesAsync(filename, accountProfile.ToByteArray(), cancellationToken);
    }
}