using System;
using System.Threading.Tasks;
using Google.Protobuf;
using Microsoft.Extensions.Options;
using Okapi.Security;
using Okapi.Security.V1;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Account.V1;

namespace Trinsic;

/// <summary>
/// Account Service
/// </summary>
public class AccountService : ServiceBase
{
    public AccountService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public AccountService() {
        Client = new(Channel);
    }

    internal AccountService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
        Client = new(Channel);
    }

    internal AccountService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    /// <summary>
    /// Gets the underlying grpc client
    /// </summary>
    private Account.AccountClient Client { get; }

    /// <summary>
    /// Perform a sign-in to obtain an account profile. If the <see cref="AccountDetails" /> are
    /// specified, they will be used to associate
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<string> SignInAsync(SignInRequest request) {
        if (string.IsNullOrWhiteSpace(request.EcosystemId)) request.EcosystemId = Options.DefaultEcosystem;
        var response = await Client.SignInAsync(request);

        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? true) await TokenProvider.SaveAsync(authToken);
        return authToken;
    }

    /// <summary>
    /// Perform a sign-in to obtain an account profile. If the <see cref="AccountDetails" /> are
    /// specified, they will be used to associate
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public string SignIn(SignInRequest request) {
        if (string.IsNullOrWhiteSpace(request.EcosystemId)) request.EcosystemId = Options.DefaultEcosystem;
        var response = Client.SignIn(request);

        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? true) TokenProvider.Save(authToken);
        return authToken;
    }

    /// <summary>
    /// Unprotects the account profile using a security code.
    /// The confirmation method field will specify how this code was
    /// communicated with the account owner.
    /// </summary>
    /// <param name="authToken"></param>
    /// <param name="securityCode"></param>
    public static string Unprotect(string authToken, string securityCode) {
        var profile = AccountProfile.Parser.ParseFrom(Base64Url.DecodeBytes(authToken));

        UnBlindOberonTokenRequest request = new() {Token = profile.AuthToken};
        request.Blinding.Add(ByteString.CopyFromUtf8(securityCode));
        var result = Oberon.UnblindToken(request);

        profile.AuthToken = result.Token;
        profile.Protection = new() {
            Enabled = false,
            Method = ConfirmationMethod.None
        };

        return Base64Url.Encode(profile.ToByteArray());
    }

    /// <summary>
    /// Protects the account profile with a security code.
    /// The code can be a PIN, password, keychain secret, etc.
    /// </summary>
    /// <param name="authToken"></param>
    /// <param name="securityCode"></param>
    public static string Protect(string authToken, string securityCode) {
        var profile = AccountProfile.Parser.ParseFrom(Base64Url.DecodeBytes(authToken));

        BlindOberonTokenRequest request = new() {Token = profile.AuthToken};
        request.Blinding.Add(ByteString.CopyFromUtf8(securityCode));
        var result = Oberon.BlindToken(request);

        profile.AuthToken = result.Token;
        profile.Protection = new() {
            Enabled = true,
            Method = ConfirmationMethod.Other
        };

        return Base64Url.Encode(profile.ToByteArray());
    }

    /// <summary>
    /// Return the details about the currently active account
    /// </summary>
    /// <returns></returns>
    public async Task<AccountInfoResponse> GetInfoAsync() {
        AccountInfoRequest request = new();
        var response = await Client.InfoAsync(new(), await BuildMetadataAsync(request));

        return response;
    }

    /// <summary>
    /// Return the details about the currently active account
    /// </summary>
    /// <returns></returns>
    public AccountInfoResponse GetInfo() {
        AccountInfoRequest request = new();
        var response = Client.Info(request, BuildMetadata(request));

        return response;
    }

    public async Task<ListDevicesResponse> ListDevicesAsync() {
        ListDevicesRequest request = new();
        return await Client.ListDevicesAsync(request, await BuildMetadataAsync(request));
    }

    public ListDevicesResponse ListDevices() {
        ListDevicesRequest request = new();
        return Client.ListDevices(request, BuildMetadata(request));
    }

    public async Task<RevokeDeviceResponse> RevokeDeviceAsync() {
        RevokeDeviceRequest request = new();
        return await Client.RevokeDeviceAsync(request, await BuildMetadataAsync(request));
    }

    public RevokeDeviceResponse RevokeDevice() {
        RevokeDeviceRequest request = new();
        return Client.RevokeDevice(request, BuildMetadata(request));
    }
}
