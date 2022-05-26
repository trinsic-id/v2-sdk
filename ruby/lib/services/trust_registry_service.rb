# frozen_string_literal: true

require 'services/service_base'
require 'json'
require 'uri'

module Trinsic
  class TrustRegistryService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = TrustRegistry_V1::TrustRegistry::Stub.new(get_url, channel_creds)
      else
        @client = TrustRegistry_V1::TrustRegistry::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def add_governance_framework(request)
      # verify uri
      uri = URI(request.governance_framework_uri)
      raise 'Invalid governance framework uri' unless uri.scheme

      @client.add_framework(request, metadata: metadata(request))
    end

    def remove_governance_framework(request)
      @client.remove_framework(request, metadata: metadata(request))
    end

    def register_member(request)
      @client.register_member(request, metadata: metadata(request))
    end

    def unregister_member(request)
      @client.unregister_member(request, metadata: metadata(request))
    end

    def get_membership_status(request)
      @client.get_membership_status(request, metadata: metadata(request))
    end

    def search_registry(request = nil)
      request ||= TrustRegistry_V1::SearchRegistryRequest.new
      request.query = request.query.empty? ? 'SELECT * FROM c OFFSET 0 LIMIT 100' : request.query
      @client.search_registry(request, metadata: metadata(request))
    end

    def fetch_data(request)
      @client.fetch_data(request, metadata: metadata(request))
    end
  end
end
