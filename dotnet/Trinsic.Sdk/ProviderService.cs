﻿using System;
using System.Threading.Tasks;
using Grpc.Net.Client;
using Trinsic.Services;

namespace Trinsic.Sdk
{
    public class ProviderService : ServiceBase
    {
        public ProviderService(string serviceAddress = "http://localhost:5000")
            : this(GrpcChannel.ForAddress(serviceAddress, new GrpcChannelOptions()))
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
        public async Task<OnboardResponse> Onboard(OnboardRequest request)
        {
            if (request.ContactMethodCase == OnboardRequest.ContactMethodOneofCase.None)
            {
                throw new Exception("Contact method must be set.");
            }

            try
            {
                var response = await ProviderClient.OnboardAsync(request, GetMetadata());
                return response;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        /// <summary>
        /// Gets the status of the onboarding for a given reference ID
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public async Task<OnboardStatusResponse> OnboardStatus(OnboardStatusRequest request)
        {
            if (string.IsNullOrWhiteSpace(request.OnboardingReferenceId))
            {
                throw new Exception("Onboarding reference ID must be set.");
            }

            try
            {
                var response = await ProviderClient.OnboardStatusAsync(request, GetMetadata());
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
