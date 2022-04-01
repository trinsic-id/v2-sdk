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

module Trinsic

  Common_V1 = Services::Common::V1
  Account_V1 = Services::Account::V1
  Credentials_V1 = Services::Verifiablecredentials::V1
  Options_V1 = Sdk::Options::V1
  Provider_V1 = Services::Provider::V1
  Template_V1 = Services::Verifiablecredentials::Templates::V1
  TrustRegistry_V1 = Services::Trustregistry::V1
  Wallet_V1 = Services::Universalwallet::V1

  def self.trinsic_server(auth_token = nil)
    server_endpoint = ENV['TEST_SERVER_ENDPOINT'] || 'prod.trinsic.cloud'
    server_port = ENV['TEST_SERVER_PORT'] || '443'
    server_use_tls = ENV['TEST_SERVER_USE_TLS'] || 'true'
    server_authtoken = auth_token || ''
    server_default_ecosystem = ENV['TEST_SERVER_ECOSYSTEM'] || 'default'
    Options_V1::ServiceOptions.new(server_endpoint: server_endpoint, server_port: server_port.to_i, server_use_tls: server_use_tls.downcase != 'false', auth_token: server_authtoken, default_ecosystem: server_default_ecosystem)
  end

  class Error < StandardError; end
end
