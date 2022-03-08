﻿using System;
using System.Threading.Tasks;
using Google.Protobuf;
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
    public async Task<CreateEcosystemResponse> CreateEcosystemAsync(CreateEcosystemRequest request) {
        if (string.IsNullOrWhiteSpace(request.Name)) throw new("Field 'name' must be specified");
        request.Details ??= new();

        return await Client.CreateEcosystemAsync(request, await BuildMetadataAsync(request));
    }

    /// <summary>
    /// Create new ecosystem and assigns the authenticated user as owner
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    /// <exception cref="Exception"></exception>
    public CreateEcosystemResponse CreateEcosystem(CreateEcosystemRequest request) {
        if (string.IsNullOrWhiteSpace(request.Name)) throw new("Field 'name' must be specified");
        request.Details ??= new();
        
        return Client.CreateEcosystem(request, BuildMetadata(request));
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