using System;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.Provider.V1;

namespace Trinsic;

public class ProviderService : ServiceBase
{
    public ProviderService(AccountProfile accountProfile, ServerConfig serverConfig)
        : base(accountProfile, serverConfig) {
        Client = new(Channel);
    }

    public ProviderService(AccountProfile accountProfile)
        : base(accountProfile) {
        Client = new(Channel);
    }

    public ProviderService(AccountProfile accountProfile, GrpcChannel channel)
        : base(accountProfile, channel) {
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
    ///     Creates new ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<CreateEcosystemResponse> CreateEcosystemAsync(CreateEcosystemRequest request) {
        if (string.IsNullOrWhiteSpace(request.Name)) throw new("Field 'name' must be specified");
        request.Details ??= new();

        return await Client.CreateEcosystemAsync(request, await BuildMetadataAsync(request));
    }

    public CreateEcosystemResponse CreateEcosystem(CreateEcosystemRequest request) {
        if (string.IsNullOrWhiteSpace(request.Name)) throw new("Field 'name' must be specified");
        request.Details ??= new();
        
        return Client.CreateEcosystem(request, BuildMetadata(request));
    }
}