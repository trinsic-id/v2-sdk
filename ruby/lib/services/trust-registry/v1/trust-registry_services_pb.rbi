# Code generated by protoc-gen-rbi. DO NOT EDIT.
# source: services/trust-registry/v1/trust-registry.proto
# typed: strict

module Services::Trustregistry::V1::TrustRegistry
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
        request: Services::Trustregistry::V1::AddFrameworkRequest
      ).returns(Services::Trustregistry::V1::AddFrameworkResponse)
    end
    def add_framework(request)
    end

    sig do
      params(
        request: Services::Trustregistry::V1::RemoveFrameworkRequest
      ).returns(Services::Trustregistry::V1::RemoveFrameworkResponse)
    end
    def remove_framework(request)
    end

    sig do
      params(
        request: Services::Trustregistry::V1::SearchRegistryRequest
      ).returns(Services::Trustregistry::V1::SearchRegistryResponse)
    end
    def search_registry(request)
    end

    sig do
      params(
        request: Services::Trustregistry::V1::RegisterMemberRequest
      ).returns(Services::Trustregistry::V1::RegisterMemberResponse)
    end
    def register_member(request)
    end

    sig do
      params(
        request: Services::Trustregistry::V1::UnregisterMemberRequest
      ).returns(Services::Trustregistry::V1::UnregisterMemberResponse)
    end
    def unregister_member(request)
    end

    sig do
      params(
        request: Services::Trustregistry::V1::GetMembershipStatusRequest
      ).returns(Services::Trustregistry::V1::GetMembershipStatusResponse)
    end
    def get_membership_status(request)
    end

    sig do
      params(
        request: Services::Trustregistry::V1::FetchDataRequest
      ).returns(T::Enumerable[Services::Trustregistry::V1::FetchDataResponse])
    end
    def fetch_data(request)
    end
  end
end