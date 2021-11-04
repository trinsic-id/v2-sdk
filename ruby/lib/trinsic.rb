require_relative 'version'
require 'grpc'
require 'okapi'
require 'base64'
require 'time'
require 'uri'
require 'google/protobuf/well_known_types'
require 'services/universal-wallet/v1/universal-wallet_services_pb'
require 'services/provider/v1/provider_services_pb'
require 'services/verifiable-credentials/v1/verifiable-credentials_services_pb'
require 'services/trust-registry/v1/trust-registry_services_pb'
require 'services/common/v1/common_pb'

module Trinsic

  Common_V1 = Services::Common::V1
  Wallet_V1 = Services::Universalwallet::V1
  Credentials_V1 = Services::Verifiablecredentials::V1
  TrustRegistry_V1 = Services::Trustregistry::V1
  Provider_V1 = Services::Provider::V1

  class Error < StandardError; end

  class ServiceBase
    def initialize
      @cap_invocation = ''
    end

    def metadata
      if @cap_invocation == nil
        raise Error.new("Profile not set")
      end
      return { 'capability-invocation' => @cap_invocation }
    end

    def set_profile(profile)
      capability_dict = { "@context" => "https://w3id.org/security/v2",
                          "invocationTarget" => profile.wallet_id,
                          "proof" => {
                            "proofPurpose" => "capabilityInvocation",
                            "created" => Time.now.iso8601,
                            "capability" => profile.capability
                          } }
      request = Okapi::Proofs::CreateProofRequest.new(:key => Okapi::Keys::JsonWebKey.decode(profile.invoker_jwk),
                                                      :document => Google::Protobuf::Struct.from_hash(capability_dict),
                                                      :suite => Okapi::Proofs::LdSuite::JcsEd25519Signature2020)
      proof_response = Okapi::LdProofs::create(request)
      proof_json = Google::Protobuf::Struct.encode_json(proof_response.signed_document)
      @cap_invocation = Base64.strict_encode64(proof_json)
    end

    def parse_url(url)
      uri = URI.parse(url)
      grpc_uri = "#{uri.host}:#{uri.port}"
      unless url.include? grpc_uri
        raise Exception("Port not provided")
      end
      [grpc_uri, uri.scheme == "http"]
    end
  end

  class WalletService < ServiceBase
    include Concurrent::Async
    def initialize(service_address)
      @service_address = (service_address || "http://localhost:5000")

      grpc_url, is_insecure = parse_url(@service_address)
      unless is_insecure
        throw("https traffic not yet supported")
      end
      @wallet_client = Wallet_V1::Wallet::Stub.new(grpc_url, :this_channel_is_insecure)
      @credential_client = Credentials_V1::Credential::Stub.new(grpc_url, :this_channel_is_insecure)
    end

    def register_or_connect(email)
      @wallet_client.connect_external_identity(email)
    end

    def create_wallet(security_code)
      security_code = (security_code or "")

      my_key = Okapi::DidKey::generate(Okapi::Keys::GenerateKeyRequest.new(:key_type => Okapi::Keys::KeyType::Ed25519))
      my_did_document = my_key.did_document.to_h

      create_request = Wallet_V1::CreateWalletRequest.new(:controller => my_did_document['id'], :security_code => security_code)
      response = @wallet_client.create_wallet(create_request)

      Wallet_V1::WalletProfile.new(:wallet_id => response.wallet_id,
                                                       :capability => response.capability,
                                                       :did_document => Common_V1::JsonPayload.new(:json_struct => my_key.did_document),
                                                       :invoker => response.invoker,
                                                       :invoker_jwk => Okapi::Keys::JsonWebKey.encode(my_key.key[0]))
    end

    def issue_credential(document)
      payload = Common_V1::JsonPayload.new(:json_string => JSON.generate(document))
      request = Credentials_V1::IssueRequest.new(:document => payload)
      response = @credential_client.issue(request, metadata: self.metadata)
      JSON.parse(response.document.json_string)
    end

    def search(query)
      @wallet_client.search(query, metadata: metadata)
    end

    def insert_item(item)
      payload = Common_V1::JsonPayload.new(:json_string => JSON.generate(item))
      request = Wallet_V1::InsertItemRequest.new(:item => payload)
      @wallet_client.insert_item(request, metadata: metadata).item_id
    end

    def send(document, email)
      request = Trinsic::Services::SendRequest.new(:email => email,
                                                   :document => Trinsic::Services::JsonPayload.new(:json_string => JSON.generate(document)))
      @credential_client.send(request, metadata: metadata)
    end

    def create_proof(document_id, reveal_document)
      payload = Common_V1::JsonPayload.new(:json_string => JSON.generate(reveal_document))
      request = Credentials_V1::CreateProofRequest.new(:document_id => document_id,
                                                                            :reveal_document => payload)
      JSON.parse(@credential_client.create_proof(request, metadata: metadata).proof_document.json_string)
    end

    def verify_proof(proof_document)
      payload = Common_V1::JsonPayload.new(:json_string => JSON.generate(proof_document))
      request = Credentials_V1::VerifyProofRequest.new(:proof_document => payload)
      @credential_client.verify_proof(request, metadata: metadata).valid
    end
  end

  class ProviderService < ServiceBase
    include Concurrent::Async

    def initialize(service_address)
      @service_address = (service_address || "http://localhost:5000")
      grpc_url, is_insecure = parse_url(@service_address)
      unless is_insecure
        throw("https traffic not yet supported")
      end
      @provider_client = Provider_V1::Provider::Stub.new(grpc_url, :this_channel_is_insecure)
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
    include Concurrent::Async

    def initialize(service_address)
      @service_address = (service_address || "http://localhost:5000")
      grpc_url, is_insecure = parse_url(@service_address)
      unless is_insecure
        throw("https traffic not yet supported")
      end
      @trust_reg_client = TrustRegistry_V1::TrustRegistry::Stub.new(grpc_url, :this_channel_is_insecure)
    end

    def register_governance_framework(governance_framework, description)
      # TODO - verify uri
      @trust_reg_client.add_framework(TrustRegistry_V1::AddFrameworkRequest.new(:governance_framework => governance_framework,
                                                                                :description => description), metadata: metadata)
    end

    def register_issuer(issuer_did, credential_type, governance_framework, valid_from, valid_until)
      @trust_reg_client.register_issuer(TrustRegistry_V1::RegisterIssuerRequest.new(:did_uri => issuer_did,
                                                                                    :credential_type_uri => credential_type,
                                                                                    :governance_framework_uri => governance_framework,
                                                                                    :valid_from_utc => valid_from.to_time.to_i,
                                                                                    :valid_until_utc => valid_until.to_time.to_i), metadata: metadata)
    end

    def register_verifier(verifier_did, presentation_type, governance_framework, valid_from, valid_until)
      @trust_reg_client.register_verifier(TrustRegistry_V1::RegisterVerifierRequest.new(:did_uri => verifier_did,
                                                                                        :presentation_type_uri => presentation_type,
                                                                                        :governance_framework_uri => governance_framework,
                                                                                        :valid_from_utc => valid_from.to_time.to_i,
                                                                                        :valid_until_utc => valid_until.to_time.to_i), metadata: metadata)
    end

    def check_issuer_status(issuer_did, presentation_type, governance_framework)
      response = @trust_reg_client.check_issuer_status(TrustRegistry_V1::CheckIssuerStatusRequest.new(:did_uri => issuer_did,
                                                                                                      :presentation_type_uri => presentation_type,
                                                                                                      :governance_framework_uri => governance_framework), metadata: metadata)
      response.status
    end

    def check_verifier_status(verifier_did, presentation_type, governance_framework)
      response = @trust_reg_client.check_verifier_status(TrustRegistry_V1::CheckVerifierStatusRequest.new(:did_uri => verifier_did,
                                                                                                          :presentation_type_uri => presentation_type,
                                                                                                          :governance_framework_uri => governance_framework), metadata: metadata)
      response.status
    end

    def search_registry(query)
      query = query || "SELECT * FROM c"
      response = @trust_reg_client.search_registry(TrustRegistry_V1::SearchRegistryRequest.new(:query=>query, :options=>Common_V1::RequestOptions(:response_json_format=>Common_V1::JsonFormat.protobuf)), metadata: metadata)
      # TODO cast to dictionary object .map { |x| x.json_struct.  }
      response.items
    end
    end
  end
