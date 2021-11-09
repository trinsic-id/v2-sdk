using System;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services.Common.V1;
using Trinsic.Services.UniversalWallet.V1;

namespace Trinsic
{
    public class ProviderService : ServiceBase
    {
        public ProviderService(WalletProfile walletProfile, ServerConfig? serverConfig) : base(walletProfile, serverConfig)
        {
            Client = new Provider.ProviderClient(Channel);
        }

        public Provider.ProviderClient Client { get; }

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
                var response = await Client.InviteAsync(request, BuildMetadata(request));
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
                var response = await Client.InvitationStatusAsync(request, BuildMetadata(request));
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
