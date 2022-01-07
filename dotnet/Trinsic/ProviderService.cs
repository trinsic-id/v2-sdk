using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
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
    /// Initiates the participant onboarding flow using the input contact method
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<InviteResponse> InviteParticipantAsync(InviteRequest request) {
        if (request.ContactMethodCase == InviteRequest.ContactMethodOneofCase.None) {
            throw new("Contact method must be set.");
        }

        try {
            var response = await Client.InviteAsync(request, await BuildMetadataAsync(request));
            return response;
        } catch(Exception e) {
            Console.WriteLine(e);
            throw;
        }
    }

    public async Task<AcceptInviteResponse> AcceptInviteAsync(AcceptInviteRequest request) {
        return await Client.AcceptInviteAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Gets the status of the onboarding invitation for a given invitation ID
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<InvitationStatusResponse> InvitationStatusAsync(InvitationStatusRequest request) {
        if (string.IsNullOrWhiteSpace(request.InvitationId)) {
            throw new("Onboarding reference ID must be set.");
        }

        try {
            var response = await Client.InvitationStatusAsync(request, await BuildMetadataAsync(request));
            return response;
        } catch(Exception e) {
            Console.WriteLine(e);
            throw;
        }
    }

    /// <summary>
    /// Creates new ecosystem
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<CreateEcosystemResponse> CreateEcosystemAsyncAsync(CreateEcosystemRequest request) {
        var response = await Client.CreateEcosystemAsync(request, await BuildMetadataAsync(request));
        return response;
    }

    /// <summary>
    /// List all ecosystems that are owned by the authorized user
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Ecosystem>> ListEcosystemsAsync() {
        ListEcosystemsRequest request = new();
        var response = await Client.ListEcosystemsAsync(request, await BuildMetadataAsync(request));
        return response.Ecosystem.ToArray();
    }
}