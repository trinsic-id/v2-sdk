# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  # Provider Service wrapper
  class ProviderService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Provider::Provider::Stub.new(url_string, channel_creds)
      else
        @client = Provider::Provider::Stub.new(url_string, :this_channel_is_insecure)
      end
    end

    def create_ecosystem(request = nil)
      request ||= Provider::CreateEcosystemRequest.new
      if request.name.empty? && (request.details.nil? || request.details.email.empty?)
        @client.create_ecosystem(request)
      else
        @client.create_ecosystem(request, metadata: metadata(request))
      end
    end

    def update_ecosystem(request)
      @client.update_ecosystem(request, metadata: metadata(request))
    end

    def add_webhook(request)
      @client.add_webhook(request, metadata: metadata(request))
    end

    def delete_webhook(request)
      @client.update_ecosystem(request, metadata: metadata(request))
    end

    def ecosystem_info(request)
      @client.ecosystem_info(request, metadata: metadata(request))
    end

    def generate_token(request)
      @client.generate_token(request, metadata: metadata(request))
    end

    def invite(request)
      # Ensure a field has been set
      raise('Contact method must be set') if request.email.nil? && request.phone.nil? && request.didcomm_invitation.nil?

      @client.invite(request, metadata: metadata(request))
    end

    def invitation_status(request)
      # Onboarding reference ID must be set
      raise('invitation id must be set') if request.invitation_id.nil?

      @client.invitation_status(request, metadata: metadata(request))
    end

    def get_oberon_key(request)
      @client.generate_token(request, metadata: metadata(request))
    end

    def get_event_token(request)
      @client.generate_token(request, metadata: metadata(request))
    end
  end
end
