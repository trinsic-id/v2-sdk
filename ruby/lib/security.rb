require 'services/common/v1/common_pb'
require 'okapi/security/v1/security_pb'
require 'okapi'
require 'okapi/hashing'
require 'okapi/hashing/v1/hashing_pb'
require 'okapi/oberon'

module Trinsic
  # Interface
  module ISecurityProvider
    def get_auth_header(account_profile, message)
      raise "Not implemented"
    end
  end

  class OberonSecurityProvider
    include ISecurityProvider

    def base64_binary_encode(message)
      Base64.urlsafe_encode64(Google::Protobuf::encode(message))
    end

    def get_auth_header(account_profile, message)
      if account_profile.protection.enabled
        raise "The token must be unprotected before use"
      end

      request_hash = Google::Protobuf::encode(message)
      request_hash = Okapi::Hashing.blake3_hash(Okapi::Hashing::V1::Blake3HashRequest.new(data: request_hash)).digest unless request_hash.length == 0 # skip hashing if empty
      nonce = Trinsic::Common_V1::Nonce.new(timestamp: (Time.now.to_f*1000).to_int, request_hash: request_hash)
      request = Okapi::Security::V1::CreateOberonProofRequest.new(token: account_profile.auth_token,
                                                                  data: account_profile.auth_data,
                                                                  nonce: Google::Protobuf::encode(nonce))
      proof = Okapi::Oberon.create_proof(request)

      # Convert to base-64
      "Oberon ver=#{1},proof=#{Base64.urlsafe_encode64(proof.proof)},data=#{Base64.urlsafe_encode64(account_profile.auth_data)},nonce=#{base64_binary_encode(nonce)}"
    end
  end
end