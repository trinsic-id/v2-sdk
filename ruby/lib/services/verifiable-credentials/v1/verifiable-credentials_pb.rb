# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: services/verifiable-credentials/v1/verifiable-credentials.proto

require 'google/protobuf'

require 'services/options/field-options_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("services/verifiable-credentials/v1/verifiable-credentials.proto", :syntax => :proto3) do
    add_message "services.verifiablecredentials.v1.IssueRequest" do
      optional :document_json, :string, 1
    end
    add_message "services.verifiablecredentials.v1.IssueResponse" do
      optional :signed_document_json, :string, 1
    end
    add_message "services.verifiablecredentials.v1.IssueFromTemplateRequest" do
      optional :template_id, :string, 1
      optional :values_json, :string, 2
      optional :framework_id, :string, 3
      optional :save_copy, :bool, 4
    end
    add_message "services.verifiablecredentials.v1.IssueFromTemplateResponse" do
      optional :document_json, :string, 1
    end
    add_message "services.verifiablecredentials.v1.CreateProofRequest" do
      optional :nonce, :bytes, 10
      oneof :disclosure do
        optional :reveal_document_json, :string, 1
        optional :reveal_template, :message, 11, "services.verifiablecredentials.v1.RevealTemplateAttributes"
      end
      oneof :proof do
        optional :item_id, :string, 2
        optional :document_json, :string, 3
      end
    end
    add_message "services.verifiablecredentials.v1.RevealTemplateAttributes" do
      repeated :template_attributes, :string, 1
    end
    add_message "services.verifiablecredentials.v1.CreateProofResponse" do
      optional :proof_document_json, :string, 1
    end
    add_message "services.verifiablecredentials.v1.VerifyProofRequest" do
      optional :proof_document_json, :string, 1
    end
    add_message "services.verifiablecredentials.v1.VerifyProofResponse" do
      optional :is_valid, :bool, 1
      repeated :validation_messages, :string, 2
      map :validation_results, :string, :message, 3, "services.verifiablecredentials.v1.ValidationMessage"
    end
    add_message "services.verifiablecredentials.v1.ValidationMessage" do
      optional :is_valid, :bool, 1
      repeated :messages, :string, 2
    end
    add_message "services.verifiablecredentials.v1.SendRequest" do
      optional :send_notification, :bool, 4
      optional :document_json, :string, 100
      oneof :delivery_method do
        optional :email, :string, 1
        optional :wallet_id, :string, 5
      end
    end
    add_message "services.verifiablecredentials.v1.SendResponse" do
    end
    add_message "services.verifiablecredentials.v1.UpdateStatusRequest" do
      optional :credential_status_id, :string, 1
      optional :revoked, :bool, 2
    end
    add_message "services.verifiablecredentials.v1.UpdateStatusResponse" do
    end
    add_message "services.verifiablecredentials.v1.CheckStatusRequest" do
      optional :credential_status_id, :string, 1
    end
    add_message "services.verifiablecredentials.v1.CheckStatusResponse" do
      optional :revoked, :bool, 1
    end
  end
end

module Services
  module Verifiablecredentials
    module V1
      IssueRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.IssueRequest").msgclass
      IssueResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.IssueResponse").msgclass
      IssueFromTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.IssueFromTemplateRequest").msgclass
      IssueFromTemplateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.IssueFromTemplateResponse").msgclass
      CreateProofRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.CreateProofRequest").msgclass
      RevealTemplateAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.RevealTemplateAttributes").msgclass
      CreateProofResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.CreateProofResponse").msgclass
      VerifyProofRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.VerifyProofRequest").msgclass
      VerifyProofResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.VerifyProofResponse").msgclass
      ValidationMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.ValidationMessage").msgclass
      SendRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.SendRequest").msgclass
      SendResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.SendResponse").msgclass
      UpdateStatusRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.UpdateStatusRequest").msgclass
      UpdateStatusResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.UpdateStatusResponse").msgclass
      CheckStatusRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.CheckStatusRequest").msgclass
      CheckStatusResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("services.verifiablecredentials.v1.CheckStatusResponse").msgclass
    end
  end
end
