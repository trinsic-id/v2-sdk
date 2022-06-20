# frozen_string_literal: true

require 'services/service_base'

module Trinsic
  # Credential Service wrapper
  class CredentialService < ServiceBase
    def initialize(service_options = nil)
      super(service_options)
      if @service_options.server_use_tls
        channel_creds = GRPC::Core::ChannelCredentials.new
        @client = Credentials::VerifiableCredential::Stub.new(url_string, channel_creds)
      else
        @client = Credentials::VerifiableCredential::Stub.new(url_string, :this_channel_is_insecure)
      end
    end

    def issue_credential(request)
      # Credentials::IssueRequest.new(document_json: JSON.generate(document))
      @client.issue(request, metadata: metadata(request))
    end

    def issue_from_template(request)
      @client.issue_from_template(request, metadata: metadata(request))
    end

    def send(request)
      @client.send(request, metadata: metadata(request))
    end

    def create_proof(request)
      # doc_json = nil
      # doc_json = JSON.generate(document) unless document.nil?
      # request = Credentials::CreateProofRequest.new(item_id: item_id,
      #                                                  reveal_document_json: JSON.generate(reveal_document),
      #                                                  document_json: doc_json)
      @client.create_proof(request, metadata: metadata(request))
      # JSON.parse(response.proof_document_json)
    end

    def verify_proof(request)
      # request = Credentials::VerifyProofRequest.new(proof_document_json: JSON.generate(proof_document))
      @client.verify_proof(request, metadata: metadata(request))
    end

    def check_status(request)
      # request = Credentials::CheckStatusRequest.new(credential_status_id: credential_status_id)
      @client.check_status(request, metadata: metadata(request))
    end

    def update_status(request)
      # request = Credentials::UpdateStatusRequest.new(credential_status_id: credential_status_id, revoked: revoked)
      @client.update_status(request, metadata: metadata(request))
    end
  end
end
