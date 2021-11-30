require 'services/common/v1/common_pb'
require 'okapi/security/v1/security_pb'
require 'okapi'

module Trinsic
  # Interface
  module ISecurityProvider
    def get_auth_header(account_profile, message)
      raise "Not implemented"
    end
  end

  class OberonSecurityProvider
    include ISecurityProvider
    def get_auth_header(account_profile, message)
      if accountProfile.protection.enabled
        raise "The token must be unprotected before use"
      end

      request_bytes = message.to_s
      request_hash = Blake3.digest(request_bytes)
      nonce = Trinsic::Common_V1::Nonce.new(:timestamp => Time.now.utc.to_i*1000, :request_hash => request_hash)
      request = Okapi::Security::V1::CreateOberonProofRequest.new(:token => account_profile.auth_token,
                                                                  :data => account_profile.auth_data,
                                                                  :nonce => nonce.to_s)
      proof = Okapi::Oberon.create_proof(request)

      # TODO - Convert to base-64
      "Oberon ver=#{1},proof=#{proof.proof.to_s},data=#{account_profile.auth_data.to_s},nonce=#{nonce.to_s}"
    end
  end
end