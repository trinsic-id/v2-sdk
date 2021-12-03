using System;
using System.Threading.Tasks;
using Google.Protobuf.WellKnownTypes;
using Trinsic.Services.Account.V1;
using Trinsic.Services.Common.V1;

namespace Trinsic;

public class ProviderService : ServiceBase
{
    public ProviderService(AccountProfile accountProfile, ServerConfig? serverConfig, Grpc.Net.Client.GrpcChannel? existingChannel = null)
        : base(accountProfile, serverConfig, existingChannel)
    {
        Client = new Provider.ProviderClient(Channel);
    }

    internal Provider.ProviderClient Client { get; }

    /// <summary>
    /// Initiates the participant onboarding flow using the input contact method
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<InviteResponse> InviteParticipant(InviteRequest request)
    {
        if (request.ContactMethodCase == InviteRequest.ContactMethodOneofCase.None)
        {
            throw new Exception("Contact method must be set.");
        }

        try
        {
            var response = await Client.InviteAsync(request, await BuildMetadataAsync(request));
            return response;
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            throw;
        }
    }

    /// <summary>
    /// Gets the status of the onboarding invitation for a given invitation ID
    /// </summary>
    /// <param name="request"></param>
    /// <returns></returns>
    public async Task<InvitationStatusResponse> InvitationStatus(InvitationStatusRequest request)
    {
        if (string.IsNullOrWhiteSpace(request.InvitationId))
        {
            throw new Exception("Onboarding reference ID must be set.");
        }

        try
        {
            var response = await Client.InvitationStatusAsync(request, await BuildMetadataAsync(request));
            return response;
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
            throw;
        }
    }
}
