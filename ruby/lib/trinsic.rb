require "trinsic/version"
require 'grpc'
require 'okapi'
require 'base64'
require 'time'
require 'uri'
require 'google/protobuf/well_known_types'
require_relative 'trinsic/WalletService_services_pb'
require_relative 'trinsic/IssuerService_services_pb'

module Trinsic
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
      capability_dict = {"@context" => "https://w3id.org/security/v2",
                         "invocationTarget" => profile.wallet_id,
                         "proof" => {
                           "proofPurpose" => "capabilityInvocation",
                           "created" => Time.now.iso8601,
                           "capability" => profile.capability
                         }}
      request = Okapi::Proofs::CreateProofRequest.new(:key=>Okapi::Keys::JsonWebKey.decode(profile.invoker_jwk),
                                                      :document=> Google::Protobuf::Struct.from_hash(capability_dict),
                                                      :suite=>Okapi::Proofs::LdSuite::JcsEd25519Signature2020)
      proof_response = Okapi::LdProofs::create(request)
      proof_json = Google::Protobuf::Struct.encode_json(proof_response.signed_document)
      @cap_invocation = Base64.strict_encode64(proof_json)
    end

    def parse_url(url)
      uri = URI.parse(url)
      "#{uri.host}:#{uri.port}"
    end
  end

  class WalletService < ServiceBase
    def initialize(service_address)
      @service_address = (service_address || "http://localhost:5000")

      
      @wallet_client = Trinsic::Services::Wallet::Stub.new(parse_url(@service_address), :this_channel_is_insecure)
      @credential_client = Trinsic::Services::Credential::Stub.new(parse_url(@service_address), :this_channel_is_insecure)
    end

    def register_or_connect(email)
      @wallet_client.connect_external_identity(email)
    end

    def create_wallet(security_code)
      if security_code == nil
        security_code = ""
      end

      configuration = @wallet_client.get_provider_configuration(Google::Protobuf::Empty.new)
      resolve_response = Okapi::DidKey::resolve(Okapi::Keys::ResolveRequest.new(:did=>configuration.key_agreement_key_id))
      provider_exchange_key = resolve_response.keys.detect{|x| x.kid == configuration.key_agreement_key_id}

      my_key = Okapi::DidKey::generate(Okapi::Keys::GenerateKeyRequest.new(:key_type=>Okapi::Keys::KeyType::Ed25519))
      my_exchange_key = my_key.key.detect{|x| x.crv == "X25519"}

      my_did_document = my_key.did_document.to_h

      create_request = Trinsic::Services::CreateWalletRequest.new(:description=>"My Cloud Wallet",
                                                                          :controller=>my_did_document['id'],
                                                                          :security_code=>security_code)
      packed_message = Okapi::DidComm::pack(Okapi::Transport::PackRequest.new(:sender_key=>my_exchange_key,
                                                                              :receiver_key=>provider_exchange_key,
                                                                              :plaintext=>Trinsic::Services::CreateWalletRequest.encode(create_request)))

      response = @wallet_client.create_wallet_encrypted(packed_message.message)
      decrypted_response = Okapi::DidComm::unpack(Okapi::Transport::UnpackRequest.new(:message=>response,
                                                                                      :receiver_key=>my_exchange_key,
                                                                                      :sender_key=>provider_exchange_key))

      create_wallet_response = Trinsic::Services::CreateWalletResponse.decode(decrypted_response.plaintext)

      Trinsic::Services::WalletProfile.new(:wallet_id=>create_wallet_response.wallet_id,
                                                  :capability=>create_wallet_response.capability,
                                                  :did_document=>Trinsic::Services::JsonPayload.new(:json_string=>JSON.generate(my_did_document)),
                                                  :invoker=>create_wallet_response.invoker,
                                                  :invoker_jwk=>Okapi::Keys::JsonWebKey.encode(my_key.key[0]))
    end

    def issue_credential(document)
      payload = Trinsic::Services::JsonPayload.new(:json_string=>JSON.generate(document))
      request = Trinsic::Services::IssueRequest.new(:document=>payload)
      response = @credential_client.issue(request, metadata: self.metadata)
      JSON.parse(response.document.json_string)
    end
    def search(query)
      @wallet_client.search(query, metadata: metadata)
    end
    def insert_item(item)
      payload = Trinsic::Services::JsonPayload.new(:json_string => JSON.generate(item))
      request = Trinsic::Services::InsertItemRequest.new(:item=>payload)
      @wallet_client.insert_item(request, metadata: metadata).item_id
    end
    def send(document, email)
      request = Trinsic::Services::SendRequest.new(:email=>email,
                                                   :document=>Trinsic::Services::JsonPayload.new(:json_string=>JSON.generate(document)))
      @credential_client.send(request, metadata: metadata)
    end
    def create_proof(document_id, reveal_document)
      payload = Trinsic::Services::JsonPayload.new(:json_string=>JSON.generate(reveal_document))
      request = Trinsic::Services::CreateProofRequest.new(:document_id=>document_id,
                                                          :reveal_document=>payload)
      JSON.parse(@credential_client.create_proof(request, metadata: metadata).proof_document.json_string)
    end
    def verify_proof(proof_document)
      payload = Trinsic::Services::JsonPayload.new(:json_string => JSON.generate(proof_document))
      request = Trinsic::Services::VerifyProofRequest.new(:proof_document=>payload)
      @credential_client.verify_proof(request, metadata: metadata).valid
    end
  end

  class CredentialService < ServiceBase
    def initialize(service_address)
      @service_address = (service_address || "http://localhost:5000")
      @provider_client = Trinsic::Services::Provider::Stub.new(parse_url(@service_address))
    end

    def invite_participant(request)
      # TODO - Ensure a field has been set
      @provider_client.invite(request, metadata: metadata)
    end

    def invitation_status(request)
      # TODO Onboarding reference ID must be set
      @provider_client.invitation_status(request, metadata: metadata)
    end
  end
end
