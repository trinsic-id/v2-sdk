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
    ///     Initiates the participant onboarding flow using the input contact method
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<InviteResponse> InviteParticipantAsync(InviteRequest request) {
        return await Client.InviteAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Invite a user to the ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public InviteResponse InviteParticipant(InviteRequest request) {
        return Client.Invite(request, BuildMetadata(request));
    }

    /// <summary>
    ///     Gets the status of the onboarding invitation for a given invitation ID
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<InvitationStatusResponse> InvitationStatusAsync(InvitationStatusRequest request) {
        if (string.IsNullOrWhiteSpace(request.InvitationId)) throw new("Onboarding reference ID must be set.");

        return await Client.InvitationStatusAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Gets the status of the onboarding invitation for a given invitation ID
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    /// <exception cref="Exception"></exception>
    public InvitationStatusResponse InvitationStatus(InvitationStatusRequest request) {
        if (string.IsNullOrWhiteSpace(request.InvitationId)) throw new("Onboarding reference ID must be set.");
        return Client.InvitationStatus(request, BuildMetadata(request));
    }

    /// <summary>
    /// Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<(Ecosystem ecosystem, string authToken)> CreateEcosystemAsync(CreateEcosystemRequest request) {
        request.Details ??= new();

        var response = !string.IsNullOrWhiteSpace(request.Name) || !string.IsNullOrWhiteSpace(request.Details?.Email)
            ? await Client.CreateEcosystemAsync(request, await BuildMetadataAsync(request))
            : await Client.CreateEcosystemAsync(request);

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

        var response = !string.IsNullOrWhiteSpace(request.Name) || !string.IsNullOrWhiteSpace(request.Details?.Email)
            ? Client.CreateEcosystem(request, BuildMetadata(request))
            : Client.CreateEcosystem(request);
        var authToken = Base64Url.Encode(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? true)
        {
            Options.AuthToken = authToken;
            TokenProvider.Save(authToken);
        }
        return (response.Ecosystem, authToken);
    }

    /// <summary>
    /// Updates ecosystem ID and/or Description
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<UpdateEcosystemResponse> UpdateEcosystemAsync(UpdateEcosystemRequest request) {
        return await Client.UpdateEcosystemAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Updates ecosystem ID and/or Description
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public UpdateEcosystemResponse UpdateEcosystem(UpdateEcosystemRequest request) {
        return Client.UpdateEcosystem(request, BuildMetadata(request));
    }

    /// <summary>
    /// Fetches information about the given ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<EcosystemInfoResponse> EcosystemInfoAsync(EcosystemInfoRequest request) {
        return await Client.EcosystemInfoAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Fetches information about the given ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public EcosystemInfoResponse EcosystemInfo(EcosystemInfoRequest request) {
        return Client.EcosystemInfo(request, BuildMetadata(request));
    }

    /// <summary>
    /// Adds a webhook to the ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<AddWebhookResponse> AddWebhookAsync(AddWebhookRequest request) {
        return await Client.AddWebhookAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Adds a webhook to the ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public AddWebhookResponse AddWebhook(AddWebhookRequest request) {
        return Client.AddWebhook(request, BuildMetadata(request));
    }

    /// <summary>
    /// Deletes a webhook from the ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<DeleteWebhookResponse> DeleteWebhookAsync(DeleteWebhookRequest request) {
        return await Client.DeleteWebhookAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Deletes a webhook from the ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public DeleteWebhookResponse DeleteWebhook(DeleteWebhookRequest request) {
        return Client.DeleteWebhook(request, BuildMetadata(request));
    }

    /// <summary>
    /// Gets an event token for event streaming
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<GetEventTokenResponse> GetEventTokenAsync(GetEventTokenRequest request) {
        return await Client.GetEventTokenAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Gets an event token for event streaming
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public GetEventTokenResponse GetEventToken(GetEventTokenRequest request) {
        return Client.GetEventToken(request, BuildMetadata(request));
    }

    /// <summary>
    /// Fetches the public key used to verify Oberon authentication tokens
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<GetOberonKeyResponse> GetOberonKeyAsync(GetOberonKeyRequest request) {
        return await Client.GetOberonKeyAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Fetches the public key used to verify Oberon authentication tokens
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public GetOberonKeyResponse GetOberonKey(GetOberonKeyRequest request) {
        return Client.GetOberonKey(request, BuildMetadata(request));
    }


    /// <summary>
    /// Generates an unprotected authentication token that can be used
    /// to configure server side applications
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    [Experimental]
    public async Task<string> GenerateTokenAsync(GenerateTokenRequest request) {
        var response = await Client.GenerateTokenAsync(request, await BuildMetadataAsync(request));

        return Base64Url.Encode(response.ToByteArray());
    }

    /// <summary>
    /// Generates an unprotected authentication token that can be used
    /// to configure server side applications
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    [Experimental]
    public string GenerateToken(GenerateTokenRequest request) {
        var response = Client.GenerateToken(request, BuildMetadata(request));

        return Base64Url.Encode(response.ToByteArray());
    }
}
public class ExperimentalAttribute : Attribute
{
    // TODO - Experimental attribute object
}
