# frozen_string_literal: true

module Trinsic
  # Base functionality of all services
  class ServiceBase
    def initialize(service_options)
      @service_options = service_options || trinsic_server
      @security_provider = OberonSecurityProvider.new
    end

    def metadata(message)
      if @service_options.nil? || @service_options.auth_token.nil?
        raise Error, 'Cannot call authenticated endpoint: profile must be set'
      end

      { 'authorization' => @security_provider.get_auth_header(
        Account::AccountProfile.decode(Base64.urlsafe_decode64(@service_options.auth_token)), message
      ) }
    end

    def auth_token=(new_profile)
      @service_options.auth_token = new_profile
    end

    def auth_token
      @service_options.auth_token
    end

    def default_ecosystem=(new_ecosystem_id)
      @service_options.default_ecosystem = new_ecosystem_id
    end

    def default_ecosystem
      @service_options.default_ecosystem
    end

    def url_string
      "#{@service_options.server_endpoint}:#{@service_options.server_port}"
    end
  end
end
