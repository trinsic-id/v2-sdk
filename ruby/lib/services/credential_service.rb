require 'services/service_base'

module Trinsic
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
end
