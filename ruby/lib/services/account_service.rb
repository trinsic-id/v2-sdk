# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  class AccountService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Account_V1::Account::Stub.new(get_url, channel_creds)
      else
        @client = Account_V1::Account::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def sign_in(request = nil)
      request ||= Account_V1::SignInRequest.new
      request.details = request.details || Account_V1::AccountDetails.new
      request.ecosystem_id = request.ecosystem_id.empty? ? @service_options.default_ecosystem : request.ecosystem_id
      auth_token = @client.sign_in(request).profile
      encoded_profile = Base64.urlsafe_encode64(Account_V1::AccountProfile.encode(auth_token))
      self.auth_token = encoded_profile
      encoded_profile
    end

    def unprotect(profile, security_code)
      cloned = profile.clone
      request = Okapi::Security::V1::UnBlindOberonTokenRequest.new(token: cloned.auth_token)
      request.blinding += [security_code]
      result = Okapi::Oberon.unblind_token request
      cloned.auth_token = result.token
      cloned.protection = Account_V1::TokenProtection.new(enabled: false, method: Account_V1::ConfirmationMethod.None)
      cloned
    end

    def protect(profile, security_code)
      cloned = profile.clone
      request = Okapi::Security::V1::BlindOberonTokenRequest.new(token: cloned.auth_token)
      request.blinding += [security_code]
      result = Okapi::Oberon.blind_token request
      cloned.auth_token = result.token
      cloned.protection = Account_V1::TokenProtection.new(enabled: true, method: Account_V1::ConfirmationMethod.Other)
      cloned
    end

    def get_info
      request = Account_V1::InfoRequest.new
      @client.info(request, metadata: metadata(request))
    end

    def list_devices(request)
      @client.list_devices(request, metadata: metadata(request))
    end

    def revoke_device(request)
      @client.revoke_device(request, metadata: metadata(request))
    end
  end
end
