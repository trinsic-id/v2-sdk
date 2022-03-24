module Trinsic
  class WalletService < ServiceBase

    def initialize(service_options)
      super
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Wallet_V1::UniversalWallet::Stub.new(get_url, channel_creds)
      else
        @client = Wallet_V1::UniversalWallet::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def search(query)
      request = Wallet_V1::SearchRequest.new(query: query)
      @client.search(request, metadata: metadata(request))
    end

    def insert_item(item)
      request = Wallet_V1::InsertItemRequest.new(item_json: JSON.generate(item))
      @client.insert_item(request, metadata: metadata(request)).item_id
    end

    def delete_item(request)
      @client.delete_item(request, metadata: metadata(request))
    end
  end
end
