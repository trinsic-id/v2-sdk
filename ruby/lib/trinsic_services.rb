# frozen_string_literal: true

require_relative 'version'
require 'grpc'
require 'okapi'
require 'base64'
require 'time'
require 'uri'
require 'google/protobuf/well_known_types'
require 'services/account/v1/account_services_pb'
require 'services/universal-wallet/v1/universal-wallet_services_pb'
require 'services/provider/v1/provider_services_pb'
require 'services/verifiable-credentials/v1/verifiable-credentials_services_pb'
require 'services/verifiable-credentials/templates/v1/templates_services_pb'
require 'services/trust-registry/v1/trust-registry_services_pb'
require 'services/common/v1/common_pb'
require 'sdk/options/v1/options_pb'
require 'security'
require 'services/service_base'
require 'memoist'

# Module for all Trinsic servers
module Trinsic
  Common_V1 = Services::Common::V1
  Account_V1 = Services::Account::V1
  Credentials_V1 = Services::Verifiablecredentials::V1
  Options_V1 = Sdk::Options::V1
  Provider_V1 = Services::Provider::V1
  Template_V1 = Services::Verifiablecredentials::Templates::V1
  TrustRegistry_V1 = Services::Trustregistry::V1
  Wallet_V1 = Services::Universalwallet::V1

  def self.trinsic_server(auth_token = nil, ecosystem_id = nil)
    server_endpoint = ENV.fetch('TEST_SERVER_ENDPOINT', 'prod.trinsic.cloud')
    server_port = ENV.fetch('TEST_SERVER_PORT', '443')
    server_use_tls = ENV.fetch('TEST_SERVER_USE_TLS', 'true')
    server_authtoken = auth_token || ''
    server_default_ecosystem = ecosystem_id || ENV.fetch('TEST_SERVER_ECOSYSTEM', 'default')
    Options_V1::ServiceOptions.new(server_endpoint: server_endpoint, server_port: server_port.to_i,
                                   server_use_tls: server_use_tls.downcase != 'false', auth_token: server_authtoken,
                                   default_ecosystem: server_default_ecosystem)
  end

  class Error < StandardError; end

  # Wrapper for trinsic services to simplify access
  class TrinsicService < ServiceBase
    extend Memoist

    def initialize(service_options = nil)
      super(service_options)
    end

    def account_service
      AccountService(@service_options)
    end

    def credential_service
      CredentialService(@service_options)
    end

    def provider_service
      ProviderService(@service_options)
    end

    def template_service
      TemplateService(@service_options)
    end

    def trust_registry_service
      TrustRegistryService(@service_options)
    end

    def wallet_service
      WalletService(@service_options)
    end

    memoize :account_service, :credential_service, :provider_service, :template_service, :trust_registry_service,
            :wallet_service
  end
end
