# Code generated by protoc-gen-rbi. DO NOT EDIT.
# source: services/verifiable-credentials/v1/verifiable-credentials.proto
# typed: strict

class Services::Verifiablecredentials::V1::IssueRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::IssueRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::IssueRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      document_json: T.nilable(String)
    ).void
  end
  def initialize(
    document_json: ""
  )
  end

  sig { returns(String) }
  def document_json
  end

  sig { params(value: String).void }
  def document_json=(value)
  end

  sig { void }
  def clear_document_json
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::IssueResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::IssueResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::IssueResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      signed_document_json: T.nilable(String)
    ).void
  end
  def initialize(
    signed_document_json: ""
  )
  end

  sig { returns(String) }
  def signed_document_json
  end

  sig { params(value: String).void }
  def signed_document_json=(value)
  end

  sig { void }
  def clear_signed_document_json
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::IssueFromTemplateRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::IssueFromTemplateRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueFromTemplateRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::IssueFromTemplateRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueFromTemplateRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      template_id: T.nilable(String),
      values_json: T.nilable(String),
      framework_id: T.nilable(String)
    ).void
  end
  def initialize(
    template_id: "",
    values_json: "",
    framework_id: ""
  )
  end

  sig { returns(String) }
  def template_id
  end

  sig { params(value: String).void }
  def template_id=(value)
  end

  sig { void }
  def clear_template_id
  end

  sig { returns(String) }
  def values_json
  end

  sig { params(value: String).void }
  def values_json=(value)
  end

  sig { void }
  def clear_values_json
  end

  sig { returns(String) }
  def framework_id
  end

  sig { params(value: String).void }
  def framework_id=(value)
  end

  sig { void }
  def clear_framework_id
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::IssueFromTemplateResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::IssueFromTemplateResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueFromTemplateResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::IssueFromTemplateResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::IssueFromTemplateResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      document_json: T.nilable(String)
    ).void
  end
  def initialize(
    document_json: ""
  )
  end

  sig { returns(String) }
  def document_json
  end

  sig { params(value: String).void }
  def document_json=(value)
  end

  sig { void }
  def clear_document_json
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::CreateProofRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::CreateProofRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CreateProofRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::CreateProofRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CreateProofRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      reveal_document_json: T.nilable(String),
      item_id: T.nilable(String),
      document_json: T.nilable(String)
    ).void
  end
  def initialize(
    reveal_document_json: "",
    item_id: "",
    document_json: ""
  )
  end

  sig { returns(String) }
  def reveal_document_json
  end

  sig { params(value: String).void }
  def reveal_document_json=(value)
  end

  sig { void }
  def clear_reveal_document_json
  end

  sig { returns(String) }
  def item_id
  end

  sig { params(value: String).void }
  def item_id=(value)
  end

  sig { void }
  def clear_item_id
  end

  sig { returns(String) }
  def document_json
  end

  sig { params(value: String).void }
  def document_json=(value)
  end

  sig { void }
  def clear_document_json
  end

  sig { returns(T.nilable(Symbol)) }
  def proof
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::CreateProofResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::CreateProofResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CreateProofResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::CreateProofResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CreateProofResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      proof_document_json: T.nilable(String)
    ).void
  end
  def initialize(
    proof_document_json: ""
  )
  end

  sig { returns(String) }
  def proof_document_json
  end

  sig { params(value: String).void }
  def proof_document_json=(value)
  end

  sig { void }
  def clear_proof_document_json
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::VerifyProofRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::VerifyProofRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::VerifyProofRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::VerifyProofRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::VerifyProofRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      proof_document_json: T.nilable(String)
    ).void
  end
  def initialize(
    proof_document_json: ""
  )
  end

  sig { returns(String) }
  def proof_document_json
  end

  sig { params(value: String).void }
  def proof_document_json=(value)
  end

  sig { void }
  def clear_proof_document_json
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::VerifyProofResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::VerifyProofResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::VerifyProofResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::VerifyProofResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::VerifyProofResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      is_valid: T.nilable(T::Boolean),
      validation_messages: T.nilable(T::Array[String]),
      validation_results: T.nilable(T::Hash[String, T.nilable(Services::Verifiablecredentials::V1::ValidationMessage)])
    ).void
  end
  def initialize(
    is_valid: false,
    validation_messages: [],
    validation_results: Google::Protobuf::Map.new(:string, :message, Services::Verifiablecredentials::V1::ValidationMessage)
  )
  end

  sig { returns(T::Boolean) }
  def is_valid
  end

  sig { params(value: T::Boolean).void }
  def is_valid=(value)
  end

  sig { void }
  def clear_is_valid
  end

  sig { returns(T::Array[String]) }
  def validation_messages
  end

  sig { params(value: Google::Protobuf::RepeatedField).void }
  def validation_messages=(value)
  end

  sig { void }
  def clear_validation_messages
  end

  sig { returns(T::Hash[String, T.nilable(Services::Verifiablecredentials::V1::ValidationMessage)]) }
  def validation_results
  end

  sig { params(value: Google::Protobuf::Map).void }
  def validation_results=(value)
  end

  sig { void }
  def clear_validation_results
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::ValidationMessage
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::ValidationMessage) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::ValidationMessage).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::ValidationMessage) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::ValidationMessage, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      is_valid: T.nilable(T::Boolean),
      messages: T.nilable(T::Array[String])
    ).void
  end
  def initialize(
    is_valid: false,
    messages: []
  )
  end

  sig { returns(T::Boolean) }
  def is_valid
  end

  sig { params(value: T::Boolean).void }
  def is_valid=(value)
  end

  sig { void }
  def clear_is_valid
  end

  sig { returns(T::Array[String]) }
  def messages
  end

  sig { params(value: Google::Protobuf::RepeatedField).void }
  def messages=(value)
  end

  sig { void }
  def clear_messages
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::SendRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::SendRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::SendRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::SendRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::SendRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      email: T.nilable(String),
      did_uri: T.nilable(String),
      didcomm_invitation_json: T.nilable(String),
      send_notification: T.nilable(T::Boolean),
      document_json: T.nilable(String)
    ).void
  end
  def initialize(
    email: "",
    did_uri: "",
    didcomm_invitation_json: "",
    send_notification: false,
    document_json: ""
  )
  end

  sig { returns(String) }
  def email
  end

  sig { params(value: String).void }
  def email=(value)
  end

  sig { void }
  def clear_email
  end

  sig { returns(String) }
  def did_uri
  end

  sig { params(value: String).void }
  def did_uri=(value)
  end

  sig { void }
  def clear_did_uri
  end

  sig { returns(String) }
  def didcomm_invitation_json
  end

  sig { params(value: String).void }
  def didcomm_invitation_json=(value)
  end

  sig { void }
  def clear_didcomm_invitation_json
  end

  sig { returns(T::Boolean) }
  def send_notification
  end

  sig { params(value: T::Boolean).void }
  def send_notification=(value)
  end

  sig { void }
  def clear_send_notification
  end

  sig { returns(String) }
  def document_json
  end

  sig { params(value: String).void }
  def document_json=(value)
  end

  sig { void }
  def clear_document_json
  end

  sig { returns(T.nilable(Symbol)) }
  def delivery_method
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::SendResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::SendResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::SendResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::SendResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::SendResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig {void}
  def initialize; end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::UpdateStatusRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::UpdateStatusRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::UpdateStatusRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::UpdateStatusRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::UpdateStatusRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      credential_status_id: T.nilable(String),
      revoked: T.nilable(T::Boolean)
    ).void
  end
  def initialize(
    credential_status_id: "",
    revoked: false
  )
  end

  sig { returns(String) }
  def credential_status_id
  end

  sig { params(value: String).void }
  def credential_status_id=(value)
  end

  sig { void }
  def clear_credential_status_id
  end

  sig { returns(T::Boolean) }
  def revoked
  end

  sig { params(value: T::Boolean).void }
  def revoked=(value)
  end

  sig { void }
  def clear_revoked
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::UpdateStatusResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::UpdateStatusResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::UpdateStatusResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::UpdateStatusResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::UpdateStatusResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig {void}
  def initialize; end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::CheckStatusRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::CheckStatusRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CheckStatusRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::CheckStatusRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CheckStatusRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      credential_status_id: T.nilable(String)
    ).void
  end
  def initialize(
    credential_status_id: ""
  )
  end

  sig { returns(String) }
  def credential_status_id
  end

  sig { params(value: String).void }
  def credential_status_id=(value)
  end

  sig { void }
  def clear_credential_status_id
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end

class Services::Verifiablecredentials::V1::CheckStatusResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Verifiablecredentials::V1::CheckStatusResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CheckStatusResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Verifiablecredentials::V1::CheckStatusResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Verifiablecredentials::V1::CheckStatusResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      revoked: T.nilable(T::Boolean)
    ).void
  end
  def initialize(
    revoked: false
  )
  end

  sig { returns(T::Boolean) }
  def revoked
  end

  sig { params(value: T::Boolean).void }
  def revoked=(value)
  end

  sig { void }
  def clear_revoked
  end

  sig { params(field: String).returns(T.untyped) }
  def [](field)
  end

  sig { params(field: String, value: T.untyped).void }
  def []=(field, value)
  end

  sig { returns(T::Hash[Symbol, T.untyped]) }
  def to_h
  end
end
