require 'services/service_base'
require 'json'

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

    def register_governance_framework(request)
      # TODO - verify uri
      # request = TrustRegistry_V1::AddFrameworkRequest.new(governance_framework: governance_framework,
      #                                                     description: description)
      @client.add_framework(request, metadata: metadata(request))
    end

    def remove_framework(request)
      @client.remove_framework(request, metadata: metadata(request))
    end

    def register_issuer(request)
      response = @client.register_issuer(request, metadata: metadata(request))
      raise("cannot register issuer: code #{response.status}") unless response.status == :SUCCESS
    end

    def register_verifier(request)
      response = @client.register_verifier(request, metadata: metadata(request))
      raise("cannot register verifier: code #{response.status}") unless response.status == :SUCCESS
    end

    def unregister_issuer(request)
      response = @client.unregister_issuer(request, metadata: metadata(request))
      raise("cannot unregister issuer: code #{response.status}") unless response.status == :SUCCESS
    end

    def unregister_verifier(request)
      response = @client.unregister_verifier(request, metadata: metadata(request))
      raise("cannot unregister verifier: code #{response.status}") unless response.status == :SUCCESS
    end

    def check_issuer_status(request)
      response = @client.check_issuer_status(request, metadata: metadata(request))
      response.status
    end

    def check_verifier_status(request)
      response = @client.check_verifier_status(request, metadata: metadata(request))
      response.status
    end

    def search_registry(request = nil)
      # request = TrustRegistry_V1::SearchRegistryRequest.new(query: query)
      request ||= TrustRegistry_V1::SearchRegistryRequest.new
      request.query = request.query.empty? ? "SELECT * FROM c" : request.query
      @client.search_registry(request, metadata: metadata(request))
      # JSON.parse(response.items_json)
    end

    def fetch_data(request)
      @client.fetch_data(request, metadata: metadata(request))
    end
  end
end
