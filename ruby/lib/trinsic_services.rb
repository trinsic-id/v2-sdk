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
    server_endpoint = ENV["TEST_SERVER_ENDPOINT"] || "prod.trinsic.cloud"
    server_port = ENV["TEST_SERVER_PORT"] || "443"
    server_use_tls = ENV["TEST_SERVER_USE_TLS"] || "true"
    server_authtoken = auth_token || ""
    server_default_ecosystem = ENV["TEST_SERVER_ECOSYSTEM"] || "default"
    Options_V1::ServiceOptions.new(server_endpoint: server_endpoint, server_port: server_port.to_i, server_use_tls: server_use_tls.downcase != "false", auth_token: server_authtoken, default_ecosystem: server_default_ecosystem)
  end

  class Error < StandardError; end

  class ServiceBase
    def initialize(service_options)
      @service_options = service_options || trinsic_server
      @security_provider = OberonSecurityProvider.new
    end

    def metadata(message)
      if @service_options.nil? || @service_options.auth_token.nil?
        raise Error.new("Cannot call authenticated endpoint: profile must be set")
      end
      { 'authorization' => @security_provider.get_auth_header(Account_V1::AccountProfile.decode(Base64.urlsafe_decode64(@service_options.auth_token)), message) }
    end

    def profile=(new_profile)
      @service_options.auth_token = new_profile
    end

    def profile
      @service_options.auth_token
    end

    def get_url
      "#{@service_options.server_endpoint}:#{@service_options.server_port}"
    end
  end

  class AccountService < ServiceBase

    def initialize(service_options)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Account_V1::Account::Stub.new(get_url, channel_creds)
      else
        @client = Account_V1::Account::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def sign_in(account_details, ecosystem_id = nil)
      request = Account_V1::SignInRequest.new(details: account_details || Account_V1::AccountDetails.new, ecosystem_id: ecosystem_id || @service_options.default_ecosystem)
      auth_token = @client.sign_in(request).profile
      encoded_profile = Base64.urlsafe_encode64(Account_V1::AccountProfile.encode(auth_token))
      self.profile = encoded_profile
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

  class CredentialService < ServiceBase

    def initialize(service_options)
      super
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Credentials_V1::VerifiableCredential::Stub.new(get_url, channel_creds)
      else
        @client = Credentials_V1::VerifiableCredential::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def issue_credential(document)
      request = Credentials_V1::IssueRequest.new(document_json: JSON.generate(document))
      response = @client.issue(request, metadata: metadata(request))
      JSON.parse(response.signed_document_json)
    end

    def issue_from_template(request)
      @client.issue_from_template(request, metadata: metadata(request))
    end

    def send_document(document, email)
      request = Credentials_V1::SendRequest.new(email: email,
                                                document: Common_V1::JsonPayload.new(json_string: JSON.generate(document)))
      @client.send(request, metadata: metadata(request))
    end

    def create_proof(reveal_document:, item_id: nil, document: nil)
      doc_json = nil
      doc_json = JSON.generate(document) unless document.nil?
      request = Credentials_V1::CreateProofRequest.new(item_id: item_id,
                                                       reveal_document_json: JSON.generate(reveal_document),
                                                       document_json: doc_json)
      response = @client.create_proof(request, metadata: metadata(request))
      JSON.parse(response.proof_document_json)
    end

    def verify_proof(proof_document)
      request = Credentials_V1::VerifyProofRequest.new(proof_document_json: JSON.generate(proof_document))
      @client.verify_proof(request, metadata: metadata(request)).is_valid
    end

    def check_status(credential_status_id)
      request = Credentials_V1::CheckStatusRequest.new(credential_status_id: credential_status_id)
      @client.check_status(request, metadata: metadata(request))
    end

    def update_status(credential_status_id, revoked)
      request = Credentials_V1::UpdateStatusRequest.new(credential_status_id: credential_status_id, revoked: revoked)
      @client.update_status(request, metadata: metadata(request))
    end
  end

  class ProviderService < ServiceBase

    def initialize(service_options)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Provider_V1::Provider::Stub.new(get_url, channel_creds)
      else
        @client = Provider_V1::Provider::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def invite_participant(request)
      # Ensure a field has been set
      raise("Contact method must be set") if request.email.nil? and request.phone.nil? and request.didcomm_invitation.nil?
      @client.invite(request, metadata: metadata(request))
    end

    def accept_invite(request)
      @client.accept_invite(request, metadata: metadata(request))
    end

    def invitation_status(request)
      # Onboarding reference ID must be set
      raise("invitation id must be set") if request.invitation_id.nil?
      @client.invitation_status(request, metadata: metadata(request))
    end

    def create_ecosystem(request)
      @client.create_ecosystem(request, metadata: metadata(request))
    end

    # def list_ecosystems(request = nil)
    #   if request == nil
    #     request = Provider_V1::ListEcosystemsRequest.new
    #   end
    #   response = @client.list_ecosystems(request, metadata: metadata(request))
    #   response.ecosystem
    # end
  end

  class TemplateService < ServiceBase

    def initialize(service_options)
      super
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Template_V1::CredentialTemplates::Stub.new(get_url, channel_creds)
      else
        @client = Template_V1::CredentialTemplates::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def create(request)
      @client.create(request, metadata: metadata(request))
    end

    def get(request)
      @client.get(request, metadata: metadata(request))
    end

    def list(request)
      @client.list(request, metadata: metadata(request))
    end

    def search(request)
      @client.search(request, metadata: metadata(request))
    end

    def delete(request)
      @client.delete(request, metadata: metadata(request))
    end
  end

  class TrustRegistryService < ServiceBase

    def initialize(service_options)
      super
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = TrustRegistry_V1::TrustRegistry::Stub.new(get_url, channel_creds)
      else
        @client = TrustRegistry_V1::TrustRegistry::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def register_governance_framework(governance_framework, description)
      # TODO - verify uri
      request = TrustRegistry_V1::AddFrameworkRequest.new(governance_framework: governance_framework,
                                                          description: description)
      @client.add_framework(request, metadata: metadata(request))
    end

    def remove_framework(request)
      @client.remove_framework(request, metadata: metadata(request))
    end

    def register_issuer(request)
      response = @client.register_issuer(request, metadata: metadata(request))
      raise("cannot register issuer: code #{response.status}") unless response.status == :SUCCESS
    end

    def register_verifier(request)
      response = @client.register_verifier(request, metadata: metadata(request))
      raise("cannot register verifier: code #{response.status}") unless response.status == :SUCCESS
    end

    def unregister_issuer(request)
      response = @client.unregister_issuer(request, metadata: metadata(request))
      raise("cannot unregister issuer: code #{response.status}") unless response.status == :SUCCESS
    end

    def unregister_verifier(request)
      response = @client.unregister_verifier(request, metadata: metadata(request))
      raise("cannot unregister verifier: code #{response.status}") unless response.status == :SUCCESS
    end

    def check_issuer_status(request)
      response = @client.check_issuer_status(request, metadata: metadata(request))
      response.status
    end

    def check_verifier_status(request)
      response = @client.check_verifier_status(request, metadata: metadata(request))
      response.status
    end

    def search_registry(query = "SELECT * FROM c")
      request = TrustRegistry_V1::SearchRegistryRequest.new(query: query)
      response = @client.search_registry(request, metadata: metadata(request))
      JSON.parse(response.items_json)
    end

    def fetch_data(request)
      @client.fetch_data(request, metadata: metadata(request))
    end
  end

  class WalletService < ServiceBase

    def initialize(service_options)
      super
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Wallet_V1::UniversalWallet::Stub.new(get_url, channel_creds)
      else
        @client = Wallet_V1::UniversalWallet::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def search(query)
      query = query or "SELECT c.id, c.type, c.data FROM c"
      request = Wallet_V1::SearchRequest.new(query: query)
      @client.search(request, metadata: metadata(request))
    end

    def insert_item(item)
      request = Wallet_V1::InsertItemRequest.new(item_json: JSON.generate(item))
      @client.insert_item(request, metadata: metadata(request)).item_id
    end

    def delete_item(request)
      @client.delete_item(request, metadata: metadata(request))
    end
  end
end
