using System;
using System.Threading.Tasks;
using Google.Protobuf;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Provider.V1;

namespace Trinsic;

public class ProviderService : ServiceBase
{
    public ProviderService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public ProviderService() {
        Client = new(Channel);
    }

    internal ProviderService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
        Client = new(Channel);
    }

    internal ProviderService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    private Provider.ProviderClient Client { get; }

    /// <summary>
    /// Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<(Ecosystem ecosystem, string authToken)> CreateEcosystemAsync(CreateEcosystemRequest request) {
        request.Details ??= new();

        var response = await Client.CreateEcosystemAsync(request, await BuildMetadataAsync(request));
        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? true)
        {
            Options.AuthToken = authToken;
            await TokenProvider.SaveAsync(authToken);
        }
        return (response.Ecosystem, authToken);
    }

    /// <summary>
    /// Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public (Ecosystem ecosystem, string authToken) CreateEcosystem(CreateEcosystemRequest request) {
        request.Details ??= new();

        var response = Client.CreateEcosystem(request, BuildMetadata(request));
        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? true)
        {
            Options.AuthToken = authToken;
            TokenProvider.Save(authToken);
        }
        return (response.Ecosystem, authToken);
    }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: ..\sdk\dotnet\Trinsic\providerService.cs

	/// <summary>
    /// Update an existing ecosystem
    /// </summary>	
    public UpdateEcosystemResponse UpdateEcosystem(UpdateEcosystemRequest request) {
        return Client.UpdateEcosystem(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Update an existing ecosystem
    /// </summary>	
    public async Task<UpdateEcosystemResponse> UpdateEcosystemAsync(UpdateEcosystemRequest request) {
        return await Client.UpdateEcosystemAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Grant authorization to ecosystem resources
    /// </summary>	
    public GrantAuthorizationResponse GrantAuthorization(GrantAuthorizationRequest request) {
        return Client.GrantAuthorization(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Grant authorization to ecosystem resources
    /// </summary>	
    public async Task<GrantAuthorizationResponse> GrantAuthorizationAsync(GrantAuthorizationRequest request) {
        return await Client.GrantAuthorizationAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Revoke authorization to ecosystem resources
    /// </summary>	
    public RevokeAuthorizationResponse RevokeAuthorization(RevokeAuthorizationRequest request) {
        return Client.RevokeAuthorization(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Revoke authorization to ecosystem resources
    /// </summary>	
    public async Task<RevokeAuthorizationResponse> RevokeAuthorizationAsync(RevokeAuthorizationRequest request) {
        return await Client.RevokeAuthorizationAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Retreive the list of permissions for this particular account/ecosystem
    /// </summary>	
    public GetAuthorizationsResponse GetAuthorizations(GetAuthorizationsRequest request) {
        return Client.GetAuthorizations(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Retreive the list of permissions for this particular account/ecosystem
    /// </summary>	
    public async Task<GetAuthorizationsResponse> GetAuthorizationsAsync(GetAuthorizationsRequest request) {
        return await Client.GetAuthorizationsAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Add a webhook endpoint to the ecosystem
    /// </summary>	
    public AddWebhookResponse AddWebhook(AddWebhookRequest request) {
        return Client.AddWebhook(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Add a webhook endpoint to the ecosystem
    /// </summary>	
    public async Task<AddWebhookResponse> AddWebhookAsync(AddWebhookRequest request) {
        return await Client.AddWebhookAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Delete a webhook endpoint from the ecosystem
    /// </summary>	
    public DeleteWebhookResponse DeleteWebhook(DeleteWebhookRequest request) {
        return Client.DeleteWebhook(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Delete a webhook endpoint from the ecosystem
    /// </summary>	
    public async Task<DeleteWebhookResponse> DeleteWebhookAsync(DeleteWebhookRequest request) {
        return await Client.DeleteWebhookAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Get ecosystem information
    /// </summary>	
    public EcosystemInfoResponse EcosystemInfo(EcosystemInfoRequest request) {
        return Client.EcosystemInfo(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Get ecosystem information
    /// </summary>	
    public async Task<EcosystemInfoResponse> EcosystemInfoAsync(EcosystemInfoRequest request) {
        return await Client.EcosystemInfoAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Generates an unprotected authentication token that can be used to
    ///  configure server side applications
    /// </summary>	
    public GenerateTokenResponse GenerateToken(GenerateTokenRequest request) {
        return Client.GenerateToken(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Generates an unprotected authentication token that can be used to
    ///  configure server side applications
    /// </summary>	
    public async Task<GenerateTokenResponse> GenerateTokenAsync(GenerateTokenRequest request) {
        return await Client.GenerateTokenAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Invite a user to the ecosystem
    /// </summary>	
    public InviteResponse Invite(InviteRequest request) {
        return Client.Invite(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Invite a user to the ecosystem
    /// </summary>	
    public async Task<InviteResponse> InviteAsync(InviteRequest request) {
        return await Client.InviteAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Check the invitation status
    /// </summary>	
    public InvitationStatusResponse InvitationStatus(InvitationStatusRequest request) {
        return Client.InvitationStatus(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Check the invitation status
    /// </summary>	
    public async Task<InvitationStatusResponse> InvitationStatusAsync(InvitationStatusRequest request) {
        return await Client.InvitationStatusAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Returns the public key being used to create/verify oberon tokens
    /// </summary>	
    public GetOberonKeyResponse GetOberonKey(GetOberonKeyRequest request) {
        return Client.GetOberonKey(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Returns the public key being used to create/verify oberon tokens
    /// </summary>	
    public async Task<GetOberonKeyResponse> GetOberonKeyAsync(GetOberonKeyRequest request) {
        return await Client.GetOberonKeyAsync(request, await BuildMetadataAsync(request));
    }

	/// <summary>
    /// Generate a signed token (JWT) that can be used to connect to the message bus
    /// </summary>	
    public GetEventTokenResponse GetEventToken(GetEventTokenRequest request) {
        return Client.GetEventToken(request, BuildMetadata(request));
    }
	
	/// <summary>
    /// Generate a signed token (JWT) that can be used to connect to the message bus
    /// </summary>	
    public async Task<GetEventTokenResponse> GetEventTokenAsync(GetEventTokenRequest request) {
        return await Client.GetEventTokenAsync(request, await BuildMetadataAsync(request));
    }

// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
public class ExperimentalAttribute : Attribute
{
    // TODO - Experimental attribute object
}
