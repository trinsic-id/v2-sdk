# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: WalletService.proto

require 'google/protobuf'

require 'google/protobuf/struct_pb'
require 'google/protobuf/empty_pb'
require 'CoreService_pb'
require 'pbmse/pbmse_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("WalletService.proto", :syntax => :proto3) do
    add_message "trinsic.services.CreateWalletRequest" do
      optional :controller, :string, 1
      optional :description, :string, 2
      optional :security_code, :string, 3
    end
    add_message "trinsic.services.CreateWalletResponse" do
      optional :status, :enum, 1, "trinsic.services.ResponseStatus"
      optional :wallet_id, :string, 2
      optional :capability, :string, 3
      optional :invoker, :string, 4
    end
    add_message "trinsic.services.ConnectRequest" do
      oneof :contact_method do
        optional :email, :string, 5
        optional :phone, :string, 6
      end
    end
    add_message "trinsic.services.ConnectResponse" do
      optional :status, :enum, 1, "trinsic.services.ResponseStatus"
    end
    add_message "trinsic.services.InvitationToken" do
      optional :security_code, :string, 1
      optional :wallet_id, :string, 2
      oneof :contact_method do
        optional :email, :string, 5
        optional :phone, :string, 6
      end
    end
    add_message "trinsic.services.WalletProfile" do
      optional :did_document, :message, 1, "trinsic.services.JsonPayload"
      optional :wallet_id, :string, 2
      optional :invoker, :string, 3
      optional :capability, :string, 4
      optional :invoker_jwk, :bytes, 5
    end
    add_message "trinsic.services.GrantAccessRequest" do
      optional :wallet_id, :string, 1
      optional :did, :string, 2
    end
    add_message "trinsic.services.GrantAccessResponse" do
      optional :status, :enum, 1, "trinsic.services.ResponseStatus"
    end
    add_message "trinsic.services.RevokeAccessRequest" do
      optional :wallet_id, :string, 1
      optional :did, :string, 2
    end
    add_message "trinsic.services.RevokeAccessResponse" do
      optional :status, :enum, 1, "trinsic.services.ResponseStatus"
    end
    add_message "trinsic.services.GetProviderConfigurationResponse" do
      optional :did_document, :message, 1, "trinsic.services.JsonPayload"
      optional :key_agreement_key_id, :string, 2
    end
    add_message "trinsic.services.SearchRequest" do
      optional :query, :string, 1
    end
    add_message "trinsic.services.SearchResponse" do
      repeated :items, :message, 1, "trinsic.services.JsonPayload"
      optional :has_more, :bool, 2
    end
    add_message "trinsic.services.InsertItemRequest" do
      optional :item, :message, 1, "trinsic.services.JsonPayload"
      optional :item_type, :string, 2
    end
    add_message "trinsic.services.InsertItemResponse" do
      optional :status, :enum, 1, "trinsic.services.ResponseStatus"
      optional :item_id, :string, 2
    end
  end
end

module Trinsic
  module Services
    CreateWalletRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.CreateWalletRequest").msgclass
    CreateWalletResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.CreateWalletResponse").msgclass
    ConnectRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.ConnectRequest").msgclass
    ConnectResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.ConnectResponse").msgclass
    InvitationToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.InvitationToken").msgclass
    WalletProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.WalletProfile").msgclass
    GrantAccessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.GrantAccessRequest").msgclass
    GrantAccessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.GrantAccessResponse").msgclass
    RevokeAccessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.RevokeAccessRequest").msgclass
    RevokeAccessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.RevokeAccessResponse").msgclass
    GetProviderConfigurationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.GetProviderConfigurationResponse").msgclass
    SearchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.SearchRequest").msgclass
    SearchResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.SearchResponse").msgclass
    InsertItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.InsertItemRequest").msgclass
    InsertItemResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("trinsic.services.InsertItemResponse").msgclass
  end
end
