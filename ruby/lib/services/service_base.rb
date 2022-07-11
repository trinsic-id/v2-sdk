# frozen_string_literal: true

require 'okapi'
require 'okapi/utils'

module Trinsic
  # Base functionality of all services
  class ServiceBase
    def initialize(service_options)
      @service_options = service_options || trinsic_server
      @security_provider = OberonSecurityProvider.new
    end

    def metadata(message)
      call_metadata = { 'TrinsicOkapiVersion' => Okapi::Utils::version().version, 'TrinsicSDKLanguage' => 'ruby', 'TrinsicSDKVersion' => Trinsic::VERSION }
      unless message.nil?
        if @service_options.nil? || @service_options.auth_token.nil?
          raise Error, 'Cannot call authenticated endpoint: profile must be set'
        end

        call_metadata['authorization'] = @security_provider.get_auth_header(Account::AccountProfile.decode(Base64.urlsafe_decode64(@service_options.auth_token)), message)
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
