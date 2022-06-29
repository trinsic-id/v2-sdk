# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  # Account Service wrapper
  class AccountService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Account::Account::Stub.new(url_string, channel_creds)
      else
        @client = Account::Account::Stub.new(url_string, :this_channel_is_insecure)
      end
    end

    def sign_in(request = nil)
      request ||= Account::SignInRequest.new
      request.details = request.details || Account::AccountDetails.new
      request.ecosystem_id = request.ecosystem_id.empty? ? @service_options.default_ecosystem : request.ecosystem_id
      auth_token = @client.sign_in(request).profile
      encoded_profile = Base64.urlsafe_encode64(Account::AccountProfile.encode(auth_token))
      self.auth_token = encoded_profile
      encoded_profile
    end

    def unprotect(profile, security_code)
      cloned = profile.clone
      request = Okapi::Security::V1::UnBlindOberonTokenRequest.new(token: cloned.auth_token)
      request.blinding += [security_code]
      result = Okapi::Oberon.unblind_token request
      cloned.auth_token = result.token
      cloned.protection = Account::TokenProtection.new(enabled: false, method: Account::ConfirmationMethod.None)
      cloned
    end

    def protect(profile, security_code)
      cloned = profile.clone
      request = Okapi::Security::V1::BlindOberonTokenRequest.new(token: cloned.auth_token)
      request.blinding += [security_code]
      result = Okapi::Oberon.blind_token request
      cloned.auth_token = result.token
      cloned.protection = Account::TokenProtection.new(enabled: true, method: Account::ConfirmationMethod.Other)
      cloned
    end

    def login(request = nil)
      request ||= Account::LoginRequest.new
      request.ecosystem_id = request.ecosystem_id.empty? ? @service_options.default_ecosystem : request.ecosystem_id
      @client.login(request)
    end

    def login_confirm(challenge, auth_code)
      hashed = Okapi::Hashing.blake3_hash(Okapi::Hashing::V1::Blake3HashRequest.new(data: auth_code))
      request = Account::LoginConfirmRequest.new(challenge: challenge, confirmation_code_hashed: hashed.digest)
      response = @client.login_confirm(request)
      return nil if response.profile.nil?

      profile = response.profile
      profile = unprotect(profile, auth_code) if response.profile.protection.enabled
      Base64.urlsafe_encode64(Account::AccountProfile.encode(profile))
    end

    def login_anonymous
      response = login
      raise Error('nil profile returned') if response.profile.nil?
      raise Error('protected profile returned') if response.profile.protection.enabled

      Base64.urlsafe_encode64(Account::AccountProfile.encode(response.profile))
    end

    def get_info
      request = Account::AccountInfoRequest.new
      info(request)
    end

# BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
# target: ..\sdk\ruby\lib\services\account_service.rb
nil

	#  Get account information
# @param [AccountInfoRequest] request
# @return [AccountInfoResponse]
    def info(request)
        @client.info(request, metadata: metadata(request))
    end
	#  List all connected devices
# @param [ListDevicesRequest] request
# @return [ListDevicesResponse]
    def list_devices(request)
        @client.list_devices(request, metadata: metadata(request))
    end
	#  Revoke device access to the account's cloud wallet
# @param [RevokeDeviceRequest] request
# @return [RevokeDeviceResponse]
    def revoke_device(request)
        @client.revoke_device(request, metadata: metadata(request))
    end
	#  Authorize Ecosystem to receive webhook events
# @param [AuthorizeWebhookRequest] request
# @return [AuthorizeWebhookResponse]
    def authorize_webhook(request)
        @client.authorize_webhook(request, metadata: metadata(request))
    end

# END Code generated by protoc-gen-trinsic. DO NOT EDIT.
  end
end
