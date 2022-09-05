# frozen_string_literal: true

require 'okapi'
require 'okapi/utils'
require 'okapi/metadata/metadata_pb'
require 'storage'

module Trinsic
  # Base functionality of all services
  class ServiceBase
    def initialize(service_options, token_provider = nil)
      @service_options = service_options || trinsic_server
      @security_provider = OberonSecurityProvider.new
      @token_provider = token_provider || MemoryTokenProvider.new
    end

    def metadata(message)
      call_metadata = { 'TrinsicOkapiVersion'.downcase => Okapi::Utils.version.version,
                        'TrinsicSDKLanguage'.downcase => 'ruby', 'TrinsicSDKVersion'.downcase => Trinsic::VERSION }
      unless message.nil?
        if @service_options.nil? || @service_options.auth_token.nil?
          raise Error, 'Cannot call authenticated endpoint: profile must be set'
        end

        call_metadata['authorization'] =
          @security_provider.get_auth_header(
            Account::AccountProfile.decode(Base64.urlsafe_decode64(@service_options.auth_token)), message
          )
      end
      call_metadata
    end

    def auth_token=(new_profile)
      @service_options.auth_token = new_profile
    end

    def auth_token
      @service_options.auth_token
    end

    def url_string
      "#{@service_options.server_endpoint}:#{@service_options.server_port}"
    end
  end
end
