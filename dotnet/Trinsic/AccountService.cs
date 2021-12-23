using System;
using System.Threading.Tasks;
using Google.Protobuf;
using Grpc.Net.Client;
using Okapi.Security;
using Okapi.Security.V1;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using AccountServiceClient = Trinsic.Services.Account.V1.Account.AccountClient;

namespace Trinsic;

/// <summary>
/// Account Service
/// </summary>
public class AccountService : ServiceBase
{
    private AccountProfile? profile;

    public AccountService(ServerConfig? serverConfig = null, GrpcChannel? existingChannel = null)
        : this(null, serverConfig, existingChannel)
    {
    }

    public AccountService(AccountProfile? accountProfile, ServerConfig? serverConfig = null, GrpcChannel? existingChannel = null)
        : base(accountProfile, serverConfig, existingChannel)
    {
        Client = new AccountServiceClient(Channel);
        profile = accountProfile;
    }

    internal AccountServiceClient Client { get; }

    public override AccountProfile? Profile
    {
        get => profile;
        set => profile = value ?? throw new ArgumentNullException(nameof(Profile), "Profile cannot be null");
    }

    /// <summary>
    /// Perform a sign-in to obtain an account profile. If the <see cref="AccountDetails" /> are
    /// specified, they will be used to associate
    /// </summary>
    /// <param name="details"></param>
    /// <returns></returns>
    public async Task<AccountProfile> SignInAsync(AccountDetails? details = null)
    {
        SignInRequest request = new() { Details = details ?? new AccountDetails() };

        SignInResponse response = await Client.SignInAsync(request);

        return response.Profile;
    }

    /// <summary>
    /// Perform a sign-in to obtain an account profile. If the <see cref="AccountDetails" /> are
    /// specified, they will be used to associate
    /// </summary>
    /// <param name="details"></param>
    /// <returns></returns>
    public AccountProfile SignIn(AccountDetails? details = null)
    {
        SignInRequest request = new() { Details = details ?? new AccountDetails() };

        SignInResponse response = Client.SignIn(request);

        return response.Profile;
    }

    /// <summary>
    /// Unprotects the account profile using a security code.
    /// The confirmation method field will specify how this code was
    /// communicated with the account owner.
    /// </summary>
    /// <param name="profile"></param>
    /// <param name="securityCode"></param>
    public static AccountProfile Unprotect(AccountProfile profile, string securityCode)
    {
        var cloned = profile.Clone();

        UnBlindOberonTokenRequest request = new() { Token = cloned.AuthToken };
        request.Blinding.Add(ByteString.CopyFromUtf8(securityCode));
        var result = Oberon.UnblindToken(request);

        cloned.AuthToken = result.Token;
        cloned.Protection = new()
        {
            Enabled = false,
            Method = ConfirmationMethod.None
        };

        return cloned;
    }

    /// <summary>
    /// Protects the account profile with a security code.
    /// The code can be a PIN, password, keychain secret, etc.
    /// </summary>
    /// <param name="profile"></param>
    /// <param name="securityCode"></param>
    public static AccountProfile Protect(AccountProfile profile, string securityCode)
    {
        var cloned = profile.Clone();

        BlindOberonTokenRequest request = new() { Token = cloned.AuthToken };
        request.Blinding.Add(ByteString.CopyFromUtf8(securityCode));
        var result = Oberon.BlindToken(request);

        cloned.AuthToken = result.Token;
        cloned.Protection = new()
        {
            Enabled = true,
            Method = ConfirmationMethod.Other
        };

        return cloned;
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

    /// <summary>
    /// Return the details about the currently active account
    /// </summary>
    /// <returns></returns>
    public InfoResponse GetInfo()
    {
        InfoRequest request = new();
        InfoResponse response = Client.Info(request, BuildMetadata(request));

        return response;
    }
}
