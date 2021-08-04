# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: WalletService.proto for package 'trinsic.services'

require 'grpc'
require 'WalletService_pb'

module Trinsic
  module Services
    module Wallet
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'trinsic.services.Wallet'

        rpc :GetProviderConfiguration, ::Google::Protobuf::Empty, ::Trinsic::Services::GetProviderConfigurationResponse
        rpc :ConnectExternalIdentity, ::Trinsic::Services::ConnectRequest, ::Trinsic::Services::ConnectResponse
        rpc :CreateWallet, ::Trinsic::Services::CreateWalletRequest, ::Trinsic::Services::CreateWalletResponse
        rpc :CreateWalletWithWorkflow, ::Trinsic::Services::CreateWalletRequest, ::Trinsic::Services::CreateWalletResponse
        rpc :CreateWalletEncrypted, ::Pbmse::EncryptedMessage, ::Pbmse::EncryptedMessage
        rpc :Search, ::Trinsic::Services::SearchRequest, ::Trinsic::Services::SearchResponse
        rpc :InsertItem, ::Trinsic::Services::InsertItemRequest, ::Trinsic::Services::InsertItemResponse
        rpc :GrantAccess, ::Trinsic::Services::GrantAccessRequest, ::Trinsic::Services::GrantAccessResponse
        rpc :RevokeAccess, ::Trinsic::Services::RevokeAccessRequest, ::Trinsic::Services::RevokeAccessResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
