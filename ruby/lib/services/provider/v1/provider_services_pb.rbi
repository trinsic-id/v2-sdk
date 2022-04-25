# Code generated by protoc-gen-rbi. DO NOT EDIT.
# source: services/provider/v1/provider.proto
# typed: strict

module Services::Provider::V1::Provider
  class Service
    include GRPC::GenericService
  end

  class Stub < GRPC::ClientStub
    sig do
      params(
        host: String,
        creds: T.any(GRPC::Core::ChannelCredentials, Symbol),
        kw: T.untyped,
      ).void
    end
    def initialize(host, creds, **kw)
    end

    sig do
      params(
        request: Services::Provider::V1::CreateEcosystemRequest
      ).returns(Services::Provider::V1::CreateEcosystemResponse)
    end
    def create_ecosystem(request)
    end

    sig do
      params(
        request: Services::Provider::V1::GenerateTokenRequest
      ).returns(Services::Provider::V1::GenerateTokenResponse)
    end
    def generate_token(request)
    end

    sig do
      params(
        request: Services::Provider::V1::InviteRequest
      ).returns(Services::Provider::V1::InviteResponse)
    end
    def invite(request)
    end

    sig do
      params(
        request: Services::Provider::V1::InvitationStatusRequest
      ).returns(Services::Provider::V1::InvitationStatusResponse)
    end
    def invitation_status(request)
    end

    sig do
      params(
        request: Services::Provider::V1::GetOberonKeyRequest
      ).returns(Services::Provider::V1::GetOberonKeyResponse)
    end
    def get_oberon_key(request)
    end
  end
end
