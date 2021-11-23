using System.Threading.Tasks;
using Google.Protobuf;
using Grpc.Core;
using Okapi.Security;
using Okapi.Security.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using AccountServiceClient = Trinsic.Services.Account.V1.AccountService.AccountServiceClient;

namespace Trinsic;

/// <summary>
/// Account Service
/// </summary>
public class AccountService : ServiceBase
{
    public AccountService(AccountProfile? accountProfile, ServerConfig? serverConfig)
        : base(accountProfile, serverConfig)
    {
        Client = new AccountServiceClient(Channel);
    }

    internal AccountServiceClient Client { get; }

    /// <summary>
    /// Perform a sign-in to obtain an account profile. If the <see cref="AccountDetails" /> are
    /// specified, they will be used to associate
    /// </summary>
    /// <param name="details"></param>
    /// <returns></returns>
    public async Task<(AccountProfile accountProfile, ConfirmationMethod confirmationMethod)> SignInAsync(AccountDetails details)
    {
        SignInRequest request = new() { Details = details };

        SignInResponse response = await Client.SignInAsync(request);

        return (response.Profile, response.ConfirmationMethod);
    }

    /// <summary>
    /// Unprotects the account profile using a security code.
    /// The confirmation method field will specify how this code was
    /// communicated with the account owner.
    /// </summary>
    /// <param name="profile"></param>
    /// <param name="securityCode"></param>
    public void Unprotect(ref AccountProfile profile, string securityCode)
    {
        UnBlindOberonTokenRequest request = new() { Token = profile.AuthToken };
        request.Blinding.Add(ByteString.CopyFromUtf8(securityCode));
        var result = Oberon.UnblindToken(request);

        profile.AuthToken = result.Token;
        profile.Protection = new()
        {
            Enabled = false,
            Method = ConfirmationMethod.None
        };
    }

    /// <summary>
    /// Protects the account profile with a security code.
    /// The code can be a PIN, password, keychain secret, etc.
    /// </summary>
    /// <param name="profile"></param>
    /// <param name="securityCode"></param>
    public void Protect(ref AccountProfile profile, string securityCode)
    {
        BlindOberonTokenRequest request = new() { Token = profile.AuthToken };
        request.Blinding.Add(ByteString.CopyFromUtf8(securityCode));
        var result = Oberon.BlindToken(request);

        profile.AuthToken = result.Token;
        profile.Protection = new()
        {
            Enabled = true,
            Method = ConfirmationMethod.Other
        };
    }

    /// <summary>
    /// Return the details about the currently active account
    /// </summary>
    /// <returns></returns>
    public async Task<InfoResponse> GetInfoAsync()
    {
        InfoRequest request = new();
        InfoResponse response = await Client.InfoAsync(request, await BuildMetadataAsync(request));

        return response;
    }
}
