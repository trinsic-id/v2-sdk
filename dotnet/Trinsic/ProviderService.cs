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

        var response = await Client.CreateEcosystemAsync(request);

        var authToken = Convert.ToBase64String(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? false) {
            Options.AuthToken = authToken;
        }
        return (response.Ecosystem, authToken);
    }

    /// <summary>
    /// Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    /// <exception cref="Exception"></exception>
    public (Ecosystem ecosystem, string authToken) CreateEcosystem(CreateEcosystemRequest request) {
        request.Details ??= new();

        var response = Client.CreateEcosystem(request);
        var authToken = Convert.ToBase64String(response.Profile.ToByteArray());

        if (!response.Profile.Protection?.Enabled ?? true) {
            Options.AuthToken = authToken;
        }
        return (response.Ecosystem, authToken);
    }

    /// <summary>
    /// Generates an unprotected authentication token that can be used
    /// to configure server side applications
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<string> GenerateTokenAsync(GenerateTokenRequest request) {
        var response = await Client.GenerateTokenAsync(request, await BuildMetadataAsync(request));

        return Convert.ToBase64String(response.ToByteArray());
    }

    /// <summary>
    /// Generates an unprotected authentication token that can be used
    /// to configure server side applications
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public string GenerateToken(GenerateTokenRequest request) {
        var response = Client.GenerateToken(request, BuildMetadata(request));

        return Convert.ToBase64String(response.ToByteArray());
    }
}