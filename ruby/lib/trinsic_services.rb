require_relative 'version'
require 'grpc'
require 'okapi'
require 'base64'
require 'time'
require 'uri'
require 'concurrent'
require 'google/protobuf/well_known_types'
require 'services/account/v1/account_services_pb'
require 'services/universal-wallet/v1/universal-wallet_services_pb'
require 'services/provider/v1/provider_services_pb'
require 'services/verifiable-credentials/v1/verifiable-credentials_services_pb'
require 'services/trust-registry/v1/trust-registry_services_pb'
require 'services/common/v1/common_pb'
require 'security'

module Trinsic

  Common_V1 = Services::Common::V1
  Account_V1 = Services::Account::V1
  Credentials_V1 = Services::Verifiablecredentials::V1
  Provider_V1 = Services::Provider::V1
  TrustRegistry_V1 = Services::Trustregistry::V1
  Wallet_V1 = Services::Universalwallet::V1

  def self.trinsic_test_server
    server_endpoint = ENV["TEST_SERVER_ENDPOINT"]
    server_port = ENV["TEST_SERVER_PORT"] || "443"
    server_usetls = ENV["TEST_SERVER_USETLS"] || "true"
    Common_V1::ServerConfig.new(endpoint: server_endpoint, port: server_port.to_i, use_tls: server_usetls.downcase == "true")
  end

  def self.trinsic_prod_server
    Common_V1::ServerConfig.new(endpoint: "prod.trinsic.cloud", port: 443, use_tls: true)
  end

  class Error < StandardError; end

  class ServiceBase
    def initialize(account_profile, server_config)
      @profile = account_profile
      @configuration = server_config || trinsic_prod_server
      @security_provider = OberonSecurityProvider.new
    end

    def metadata(message)
      if @profile == nil
        raise Error.new("Cannot call authenticated endpoint: profile must be set")
      end
      { 'authorization' => @security_provider.get_auth_header(@profile, message) }
    end

    def profile=(new_profile)
      @profile = new_profile
    end

    def profile
      @profile
    end

    def get_url
      "#{@configuration.endpoint}:#{@configuration.port}"
    end

    def self.parse_url(url)
      if url.is_a? Common_V1::ServerConfig
        return url
      end
      uri = URI.parse(url)
      Common_V1::ServerConfig.new(endpoint: uri.host, port: uri.port.to_i, use_tls: uri.scheme != "http")
    end
  end

  class AccountService < ServiceBase

    def initialize(account_profile, server_config)
      super
      @client = Account_V1::Account::Stub.new(get_url, :this_channel_is_insecure)
    end

    def sign_in(account_details)
      request = Account_V1::SignInRequest.new(details: account_details || Account_V1::AccountDetails.new)
      response = @client.sign_in(request)
      response
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
      response = @client.info(request, metadata: metadata(request))
      response
    end
  end

  class CredentialService < ServiceBase

    def initialize(account_profile, server_config)
      super
      @client = Credentials_V1::VerifiableCredential::Stub.new(get_url, :this_channel_is_insecure)
    end

    def issue_credential(document)
      payload = Common_V1::JsonPayload.new(json_string: JSON.generate(document))
      request = Credentials_V1::IssueRequest.new(document: payload)
      response = client.issue(request, metadata: metadata(request))
      JSON.parse(response.document.json_string)
    end

    def send_document(document, email)
      request = Credentials_V1::SendRequest.new(email: email,
                                                document: Common_V1::JsonPayload.new(json_string: JSON.generate(document)))
      client.send(request, metadata: metadata(request))
    end

    def create_proof(document_id, reveal_document)
      payload = Common_V1::JsonPayload.new(json_string: JSON.generate(reveal_document))
      request = Credentials_V1::CreateProofRequest.new(document_id: document_id,
                                                       reveal_document: payload)
      JSON.parse(client.create_proof(request, metadata: metadata(request)).proof_document.json_string)
    end

    def verify_proof(proof_document)
      payload = Common_V1::JsonPayload.new(json_string: JSON.generate(proof_document))
      request = Credentials_V1::VerifyProofRequest.new(proof_document: payload)
      client.verify_proof(request, metadata: metadata(request)).valid
    end
  end

  class ProviderService < ServiceBase

    def initialize(account_profile, server_config)
      super
      @provider_client = Provider_V1::Provider::Stub.new(get_url, :this_channel_is_insecure)
    end

    def invite_participant(request)
      # TODO - Ensure a field has been set
      @provider_client.invite(request)
    end

    def invitation_status(request)
      # TODO - Onboarding reference ID must be set
      @provider_client.invitation_status(request)
    end
  end

  class TrustRegistryService < ServiceBase

    def initialize(account_profile, server_config)
      super
      @trust_reg_client = TrustRegistry_V1::TrustRegistry::Stub.new(get_url, :this_channel_is_insecure)
    end

    def register_governance_framework(governance_framework, description)
      # TODO - verify uri
      request = TrustRegistry_V1::AddFrameworkRequest.new(governance_framework: governance_framework,
                                                          description: description)
      @trust_reg_client.add_framework(request, metadata: metadata(request))
    end

    def register_issuer(issuer_did, credential_type, governance_framework, valid_from, valid_until)
      request = TrustRegistry_V1::RegisterIssuerRequest.new(did_uri: issuer_did,
                                                            credential_type_uri: credential_type,
                                                            governance_framework_uri: governance_framework,
                                                            valid_from_utc: valid_from.to_time.to_i,
                                                            valid_until_utc: valid_until.to_time.to_i)
      @trust_reg_client.register_issuer(request, metadata: metadata(request))
    end

    def register_verifier(verifier_did, presentation_type, governance_framework, valid_from, valid_until)
      request = TrustRegistry_V1::RegisterVerifierRequest.new(did_uri: verifier_did,
                                                              presentation_type_uri: presentation_type,
                                                              governance_framework_uri: governance_framework,
                                                              valid_from_utc: valid_from.to_time.to_i,
                                                              valid_until_utc: valid_until.to_time.to_i)
      @trust_reg_client.register_verifier(request, metadata: metadata(request))
    end

    def check_issuer_status(issuer_did, presentation_type, governance_framework)
      request = TrustRegistry_V1::CheckIssuerStatusRequest.new(did_uri: issuer_did,
                                                               presentation_type_uri: presentation_type,
                                                               governance_framework_uri: governance_framework)
      response = @trust_reg_client.check_issuer_status(request, metadata: metadata(request))
      response.status
    end

    def check_verifier_status(verifier_did, presentation_type, governance_framework)
      request = TrustRegistry_V1::CheckVerifierStatusRequest.new(did_uri: verifier_did,
                                                                 presentation_type_uri: presentation_type,
                                                                 governance_framework_uri: governance_framework)
      response = @trust_reg_client.check_verifier_status(request, metadata: metadata(request))
      response.status
    end

    def search_registry(query)
      query = query || "SELECT * FROM c"
      request = TrustRegistry_V1::SearchRegistryRequest.new(query: query, options: Common_V1::RequestOptions(response_json_format: Common_V1::JsonFormat.protobuf))
      response = @trust_reg_client.search_registry(request, metadata: metadata(request))
      # TODO cast to dictionary object .map { |x| x.json_struct.  }
      response.items
    end
  end

  class WalletService < ServiceBase

    def initialize(account_profile, server_config)
      super
      @wallet_client = Wallet_V1::UniversalWallet::Stub.new(get_url, :this_channel_is_insecure)
    end

    def search(query)
      request = Wallet_V1::SearchRequest.new(query: query)
      @wallet_client.search(request, metadata: metadata(request))
    end

    def insert_item(item)
      payload = Common_V1::JsonPayload.new(json_string: JSON.generate(item))
      request = Wallet_V1::InsertItemRequest.new(item: payload)
      @wallet_client.insert_item(request, metadata: metadata(request)).item_id
    end
  end
end
