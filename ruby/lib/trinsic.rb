require "trinsic/version"
require 'grpc'
require 'okapi'

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
      { "capability-invocation": @cap_invocation }
    end

    def set_profile(profile: WalletProfile)
      capability_dict = {"@context" => "https://w3id.org/security/v2",
                         "invocationTarget" => profile.wallet_id,
                         "proof" => {
                           "proofPurpose" => "capabilityInvocation",
                           "created" => Time.now.iso8601,
                           "capability" => profile.capability
                         }}
      request = Okapi::Proofs::CreateProofRequest.new(:key=>Okapi::Keys::JsonWebKey.parse(profile.invoker_jwk),
                                                      :document=> Google::Protobuf::Struct.from_hash(capability_dict),
                                                      :suite=>Okapi::Proofs::LdSuite::JcsEd25519Signature2020)
      proof_response = Okapi::LdProofs::create(request)
      proof_json = Google::Protobuf::Struct.encode_json(proof_response.signed_document)
      @cap_invocation = Base64.encode64(proof_json)
    end
  end

  class WalletService < ServiceBase
    def initialize(service_address)
      @service_address = (service_address || "localhost:5000")
      @wallet_client = Trinsic::Services::Wallet::Stub.new(@service_address)
      @credential_client = Trinsic::Services::Credential::Stub.new(@service_address)
    end

    def register_or_connect(email)
      @wallet_client.connect_external_identity(email)
    end

    def create_wallet(security_code)
      if security_code == nil
        security_code = ""
      end

      configuration = @wallet_client.get_provider_configuration
      resolve_response = Okapi::DidKey::resolve(ResolveRequest.new(:did=>configuration.key_agreement_key_id))
      provider_exchange_key = resolve_response.keys.detect{|x| x.kid == configuration.key_agreement_key_id}

      my_key = Okapi::DidKey::generate(Okapi::Keys::GenerateKeyRequest.new(:key_type=>Okapi::Keys::KeyType::Ed25519))
      my_exchange_key = my_key.key.detect{|x| x.crv == "X25519"}

      my_did_document = Google::Protobuf::Struct.from_hash(my_key.did_document)

      create_request = Trinsic::Services::Wallet::CreateWalletRequest.new(:description=>"My Cloud Wallet",
                                                                          :controller=>my_did_document['id'],
                                                                          :security_code=>security_code)
      packed_message = Okapi::DidComm::pack(Okapi::Transport::PackRequest.new(:sender_key=>my_exchange_key,
                                                                              :receiver_key=>provider_exchange_key,
                                                                              :plaintext=>create_request.bytes))

      response = @wallet_client.create_wallet_encrypted(packed_message.message)
      decrypted_response = Okapi::DidComm::unpack(Okapi::Transport::UnpackRequest.new(:message=>response,
                                                                                      :receiver_key=>my_exchange_key,
                                                                                      :sender_key=>provider_exchange_key))

      create_wallet_response = Trinsic::Services::CreateWalletResponse.new.parse_from(decrypted_response.plaintext)

      Trinsic::Services::WalletProfile.new(:wallet_id=>create_wallet_response.wallet_id,
                                                  :capability=>create_wallet_response.capability,
                                                  :did_document=>Trinsic::Services::JsonPayload.new(:json_string=>JSON.generate(my_did_document)),
                                                  :invoker=>create_wallet_response.invoker,
                                                  :invoker_jwk=>my_key.key[0].bytes)
    end

    def issue_credential(document)
      raise NotImplementedError
    end
    def search(query)
      raise NotImplementedError
    end
    def insert_item(item)
      raise NotImplementedError
    end
    def send(document, email)
      raise NotImplementedError
    end
    def create_proof(document_id, reveal_document)
      raise NotImplementedError
    end
    def verify_proof(proof_document)
      raise NotImplementedError
    end
  end

  class CredentialService < ServiceBase
    def initialize(service_address)
      @service_address = (service_address || "localhost:5000")
      @provider_client = Trinsic::Services::Provider::Stub.new(@service_address)
    end

    def invite_participant(request)
      # TODO - Ensure a field has been set
      @provider_client.invite(request, metadata: self.metadata)
    end

    def invitation_status(request)
      # TODO Onboarding reference ID must be set
      @provider_client.invitation_status(request, metadata: self.metadata)
    end
  end
end
