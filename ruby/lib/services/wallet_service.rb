# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  # Wallet Service wrapper
  class WalletService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Wallet::UniversalWallet::Stub.new(url_string, channel_creds)
      else
        @client = Wallet::UniversalWallet::Stub.new(url_string, :this_channel_is_insecure)
      end
    end

    def search(request = nil)
      # request = Wallet::SearchRequest.new(query: query)
      request ||= Wallet::SearchRequest.new
      request.query = request.query.empty? ? 'SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100' : request.query
      @client.search(request, metadata: metadata(request))
    end

    def insert_item(request)
      # request = Wallet::InsertItemRequest.new(item_json: JSON.generate(item))
      @client.insert_item(request, metadata: metadata(request))
    end

    def delete_item(request)
      @client.delete_item(request, metadata: metadata(request))
    end
  end
end
