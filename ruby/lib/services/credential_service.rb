# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  class CredentialService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Credentials_V1::VerifiableCredential::Stub.new(get_url, channel_creds)
      else
        @client = Credentials_V1::VerifiableCredential::Stub.new(get_url, :this_channel_is_insecure)
      end
    end

    def issue_credential(request)
      # Credentials_V1::IssueRequest.new(document_json: JSON.generate(document))
      @client.issue(request, metadata: metadata(request))
    end

    def issue_from_template(request)
      @client.issue_from_template(request, metadata: metadata(request))
    end

    def send(request)
      # request = Credentials_V1::SendRequest.new(email: email, document: Common_V1::JsonPayload.new(json_string: JSON.generate(document)))
      @client.send(request, metadata: metadata(request))
    end

    def create_proof(request)
      # doc_json = nil
      # doc_json = JSON.generate(document) unless document.nil?
      # request = Credentials_V1::CreateProofRequest.new(item_id: item_id,
      #                                                  reveal_document_json: JSON.generate(reveal_document),
      #                                                  document_json: doc_json)
      @client.create_proof(request, metadata: metadata(request))
      # JSON.parse(response.proof_document_json)
    end

    def verify_proof(request)
      # request = Credentials_V1::VerifyProofRequest.new(proof_document_json: JSON.generate(proof_document))
      @client.verify_proof(request, metadata: metadata(request))
    end

    def check_status(request)
      # request = Credentials_V1::CheckStatusRequest.new(credential_status_id: credential_status_id)
      @client.check_status(request, metadata: metadata(request))
    end

    def update_status(request)
      # request = Credentials_V1::UpdateStatusRequest.new(credential_status_id: credential_status_id, revoked: revoked)
      @client.update_status(request, metadata: metadata(request))
    end
  end
end
