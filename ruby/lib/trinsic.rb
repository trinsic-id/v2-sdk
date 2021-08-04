require "trinsic/version"
require 'grpc'
require 'okapi'

module Trinsic
  class Error < StandardError; end

  class ServiceBase
    def initialize
      @cap_invocation = ''
    end

    def metadata
      if @cap_invocation == nil
        raise Error.new("Profile not set")
      end
      { "capability-invocation": @cap_invocation }
    end

    def set_profile(profile: WalletProfile)
      capability_dict = {"@context" => "https://w3id.org/security/v2",
                         "invocationTarget" => profile.wallet_id,
                         "proof" => {
                           "proofPurpose" => "capabilityInvocation",
                           "created" => Time.now.iso8601,
                           "capability" => profile.capability
                         }}
      request = Okapi::Proofs::CreateProofRequest.new(:key=>Okapi::Keys::JsonWebKey.parse(profile.invoker_jwk),
                                                      :document=> Google::Protobuf::Struct.from_hash(capability_dict),
                                                      :suite=>Okapi::Proofs::LdSuite::JcsEd25519Signature2020)
      proof_response = Okapi::LdProofs::create(request)
      proof_json = Google::Protobuf::Struct.encode_json(proof_response.signed_document)
      @cap_invocation = Base64.encode64(proof_json)
    end
  end

  class WalletService < ServiceBase
    def initialize(service_address: String, channel: GRPC::)
      @service_address = (service_address || "http://localhost:5000")
      if channel == nil
        channel = ::
      end
      @channel = channel
    end
  end
end
