using System;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services.Common.V1;

namespace Trinsic
{
    public class ProviderService : ServiceBase
    {
        public ProviderService()
            : this(new ServerConfig
            {
                Endpoint = "prod.trinsic.cloud",
                Port = 443,
                UseTls = true
            })
        {

        }
        public ProviderService(ServerConfig config)
            : this(ServiceBase.CreateChannelIfNeeded($"{(config.UseTls ? "https" : "http")}://{config.Endpoint}:{config.Port}"))
        {
        }

        public ProviderService(GrpcChannel channel)
        {
            // We must store a reference to the channel, otherwise it gets collected
            Channel = channel;
            ProviderClient = new Provider.ProviderClient(Channel);
        }

        public GrpcChannel Channel { get; }
        public Provider.ProviderClient ProviderClient { get; }

        /// <summary>
        /// Initates the participant onboarding flow using the input contact method
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
                var response = await ProviderClient.InviteAsync(request, GetMetadata(request));
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
                var response = await ProviderClient.InvitationStatusAsync(request, GetMetadata(request));
                return response;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }
    }
}
