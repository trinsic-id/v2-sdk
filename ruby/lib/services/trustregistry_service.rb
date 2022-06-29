# frozen_string_literal: true

require 'services/service_base'
require 'json'
require 'uri'

module Trinsic
  # Trust Registry Service wrapper
  class TrustRegistryService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = TrustRegistry::TrustRegistry::Stub.new(url_string, channel_creds)
      else
        @client = TrustRegistry::TrustRegistry::Stub.new(url_string, :this_channel_is_insecure)
      end
    end

    def search(request = nil)
      request ||= TrustRegistry::SearchRegistryRequest.new
      request.query = request.query.empty? ? 'SELECT * FROM c OFFSET 0 LIMIT 100' : request.query
      search_registry(request)
    end
    # BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
    # target: ..\sdk\ruby\lib\services\trustregistry_service.rb
    nil

    #  Adds a trust registry defintion to the ecosystem
    # @param [AddFrameworkRequest] request
    # @return [AddFrameworkResponse]
    def add_framework(request)
      @client.add_framework(request, metadata: metadata(request))
    end

    def remove_framework(request)
      @client.remove_framework(request, metadata: metadata(request))
    end

    def search_registry(request)
      @client.search_registry(request, metadata: metadata(request))
    end

    #  Registers an authoritative issuer with a credential template
    # @param [RegisterMemberRequest] request
    # @return [RegisterMemberResponse]
    def register_member(request)
      @client.register_member(request, metadata: metadata(request))
    end

    #  Removes an authoritative issuer with a credential template from the trust registry
    # @param [UnregisterMemberRequest] request
    # @return [UnregisterMemberResponse]
    def unregister_member(request)
      @client.unregister_member(request, metadata: metadata(request))
    end

    def get_membership_status(request)
      @client.get_membership_status(request, metadata: metadata(request))
    end

    def fetch_data(request)
      @client.fetch_data(request, metadata: metadata(request))
    end

    # END Code generated by protoc-gen-trinsic. DO NOT EDIT.
  end
end
