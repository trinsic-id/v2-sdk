# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: services/common/v1/common.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("services/common/v1/common.proto", :syntax => :proto3) do
    add_message "services.common.v1.Nonce" do
      optional :timestamp, :int64, 1
      optional :request_hash, :bytes, 2
    end
    add_enum "services.common.v1.ResponseStatus" do
      value :SUCCESS, 0
      value :WALLET_ACCESS_DENIED, 10
      value :WALLET_EXISTS, 11
      value :ITEM_NOT_FOUND, 20
      value :SERIALIZATION_ERROR, 200
      value :UNKNOWN_ERROR, 100
    end
    add_enum "services.common.v1.SupportedDidMethod" do
      value :KEY, 0
      value :ION, 1
      value :INDY, 2
    end
  end
end

module Services
  module Common
    module V1
      Nonce = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.common.v1.Nonce").msgclass
      ResponseStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.common.v1.ResponseStatus").enummodule
      SupportedDidMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.common.v1.SupportedDidMethod").enummodule
    end
  end
end
