# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  class ProviderService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Provider_V1::Provider::Stub.new(get_url, channel_creds)
      else
        @client = Provider_V1::Provider::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def invite_participant(request)
      # Ensure a field has been set
      raise('Contact method must be set') if request.email.nil? && request.phone.nil? && request.didcomm_invitation.nil?

      @client.invite(request, metadata: metadata(request))
    end

    def accept_invite(request)
      @client.accept_invite(request, metadata: metadata(request))
    end

    def invitation_status(request)
      # Onboarding reference ID must be set
      raise('invitation id must be set') if request.invitation_id.nil?

      @client.invitation_status(request, metadata: metadata(request))
    end

    def create_ecosystem(request = nil)
      request ||= Provider_V1::CreateEcosystemRequest.new
      @client.create_ecosystem(request)
    end

    # def list_ecosystems(request = nil)
    #   if request == nil
    #     request = Provider_V1::ListEcosystemsRequest.new
    #   end
    #   response = @client.list_ecosystems(request, metadata: metadata(request))
    #   response.ecosystem
    # end
  end
end
