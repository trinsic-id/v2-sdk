# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: services/provider/v1/provider.proto for package 'services.provider.v1'

require 'grpc'
require 'services/provider/v1/provider_pb'

module Services
  module Provider
    module V1
      module Provider
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'services.provider.v1.Provider'

          # Create new ecosystem and assign the authenticated user as owner
          rpc :CreateEcosystem, ::Services::Provider::V1::CreateEcosystemRequest, ::Services::Provider::V1::CreateEcosystemResponse
          # Generates an unprotected authentication token that can be used to
          # configure server side applications
          rpc :GenerateToken, ::Services::Provider::V1::GenerateTokenRequest, ::Services::Provider::V1::GenerateTokenResponse
          # Invite a user to the ecosystem
          rpc :Invite, ::Services::Provider::V1::InviteRequest, ::Services::Provider::V1::InviteResponse
          # Check the invitation status
          rpc :InvitationStatus, ::Services::Provider::V1::InvitationStatusRequest, ::Services::Provider::V1::InvitationStatusResponse
          # Returns the public key being used to create/verify oberon tokens
          rpc :GetOberonKey, ::Services::Provider::V1::GetOberonKeyRequest, ::Services::Provider::V1::GetOberonKeyResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
