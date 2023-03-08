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
    /// Unprotects the account profile using a security code.
    /// The confirmation method field will specify how this code was
    /// communicated with the account owner.
    /// </summary>
    /// <param name="authToken"></param>
    /// <param name="securityCode"></param>
    public static string Unprotect(string authToken, string securityCode) {
        var profile = AccountProfile.Parser.ParseFrom(Base64Url.DecodeBytes(authToken));

        UnBlindOberonTokenRequest request = new() { Token = profile.AuthToken };
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

        BlindOberonTokenRequest request = new() { Token = profile.AuthToken };
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
    /// Gets the underlying grpc client
    /// </summary>
    private Account.AccountClient Client { get; }

    /// <summary>
    /// Logs in to the specified account; a new account will be created if it does not exist.
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<LoginResponse> LoginAsync(LoginRequest request) {
        if (string.IsNullOrWhiteSpace(request.EcosystemId))
            request.EcosystemId = DefaultEcosystem;

        var response = await Client.LoginAsync(request, await BuildMetadataAsync());

        if (response.ResponseCase == LoginResponse.ResponseOneofCase.Profile)
        {
            await TokenProvider.SaveAsync(Base64Url.Encode(response.Profile.ToByteArray()));
        }

        return response;
    }

    /// <summary>
    /// Logs in to the specified account; a new account will be created if it does not exist.
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public LoginResponse Login(LoginRequest request) {
        if (string.IsNullOrWhiteSpace(request.EcosystemId))
            request.EcosystemId = DefaultEcosystem;

        var response = Client.Login(request, BuildMetadata());

        if (response.ResponseCase == LoginResponse.ResponseOneofCase.Profile)
        {
            TokenProvider.Save(Base64Url.Encode(response.Profile.ToByteArray()));
        }

        return response;
    }

    /// <summary>
    /// Finalizes login from a previous `LoginRequest`.
    /// </summary>
    /// <param name="challenge">Challenge received from call to `Login`</param>
    /// <param name="authCode">Plaintext authentication code sent to account email</param>
    /// <returns>Auth token on success; null on failure</returns>
    public async Task<string?> LoginConfirmAsync(ByteString challenge, string authCode) {
        var hashed = Okapi.Hashing.Blake3.Hash(
            new() {
                Data = ByteString.CopyFromUtf8(authCode)
            }
        );

        var request = new LoginConfirmRequest() {
            Challenge = challenge,
            ConfirmationCodeHashed = hashed.Digest
        };

        var response = await Client.LoginConfirmAsync(request, await BuildMetadataAsync());

        if (response?.Profile == null)
            return null;

        var token = Base64Url.Encode(response.Profile.ToByteArray());

        // If profile is protected (it should be), unprotect it
        if (response.Profile.Protection?.Enabled ?? false)
            token = Unprotect(token, authCode);

        await TokenProvider.SaveAsync(token);
        return token;
    }

    /// <summary>
    /// Finalizes login from a previous `LoginRequest`.
    /// </summary>
    /// <param name="challenge">Challenge received from call to `Login`</param>
    /// <param name="authCode">Plaintext authentication code sent to account email</param>
    /// <returns>Auth token on success; null on failure</returns>
    public string? LoginConfirm(ByteString challenge, string authCode) {
        var hashed = Okapi.Hashing.Blake3.Hash(
            new() {
                Data = ByteString.CopyFromUtf8(authCode)
            }
        );

        var request = new LoginConfirmRequest() {
            Challenge = challenge,
            ConfirmationCodeHashed = hashed.Digest
        };

        var response = Client.LoginConfirm(request, BuildMetadata());

        if (response?.Profile == null)
            return null;

        var token = Base64Url.Encode(response.Profile.ToByteArray());

        // If profile is protected (it should be), unprotect it
        if (response.Profile.Protection?.Enabled ?? false)
            token = Unprotect(token, authCode);

        TokenProvider.Save(token);
        return token;
    }

    /// <summary>
    /// Creates an anonymous account in the current ecosystem
    /// </summary>
    /// <returns>Auth token for newly-created account; null on failure</returns>
    public string? LoginAnonymous(string ecosystemId = DefaultEcosystem) {
        var response = Login(new() { EcosystemId = ecosystemId });

        // `Profile` is returned on anonymous login only
        if (response.ResponseCase != LoginResponse.ResponseOneofCase.Profile)
            return null;

        // If profile is protected, this is clearly not an anonymous login
        if (response.Profile?.Protection?.Enabled ?? true)
            return null;

        var token = Base64Url.Encode(response.Profile.ToByteArray());
        TokenProvider.Save(token);

        return token;
    }

    /// <summary>
    /// Creates an anonymous account in the given ecosystem
    /// </summary>
    /// <returns>Auth token for newly-created account; null on failure</returns>
    public async Task<string?> LoginAnonymousAsync(string ecosystemId = DefaultEcosystem) {
        var response = await LoginAsync(new() { EcosystemId = ecosystemId });

        // `Profile` is returned on anonymous login only
        if (response.ResponseCase != LoginResponse.ResponseOneofCase.Profile)
            return null;

        // If profile is protected, this is clearly not an anonymous login
        if (response.Profile?.Protection?.Enabled ?? true)
            return null;

        var token = Base64Url.Encode(response.Profile.ToByteArray());
        await TokenProvider.SaveAsync(token);

        return token;
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

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dotnet/Trinsic/AccountService.cs

	/// <summary>
    /// Get account information
    /// </summary>
    
    public AccountInfoResponse Info() {
        var request = new AccountInfoRequest();
        return Client.Info(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Get account information
    /// </summary>
    
    public async Task<AccountInfoResponse> InfoAsync() {
        var request = new AccountInfoRequest();
        return await Client.InfoAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Authorize Ecosystem to receive webhook events
    /// </summary>
    
    public AuthorizeWebhookResponse AuthorizeWebhook(AuthorizeWebhookRequest request) {
        
        return Client.AuthorizeWebhook(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Authorize Ecosystem to receive webhook events
    /// </summary>
    
    public async Task<AuthorizeWebhookResponse> AuthorizeWebhookAsync(AuthorizeWebhookRequest request) {
        
        return await Client.AuthorizeWebhookAsync(request, await BuildMetadataAsync(request));
    }

// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}