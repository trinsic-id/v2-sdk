# Code generated by protoc-gen-rbi. DO NOT EDIT.
# source: services/provider/v1/provider.proto
# typed: strict

module Services; end
module Services::Provider; end
module Services::Provider::V1; end

class Services::Provider::V1::Invite
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::Invite) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::Invite).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::Invite) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::Invite, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      id: T.nilable(String),
      code: T.nilable(String),
      created: T.nilable(String),
      accepted: T.nilable(String),
      expires: T.nilable(String)
    ).void
  end
  def initialize(
    id: "",
    code: "",
    created: "",
    accepted: "",
    expires: ""
  )
  end

  sig { returns(String) }
  def id
  end

  sig { params(value: String).void }
  def id=(value)
  end

  sig { void }
  def clear_id
  end

  sig { returns(String) }
  def code
  end

  sig { params(value: String).void }
  def code=(value)
  end

  sig { void }
  def clear_code
  end

  sig { returns(String) }
  def created
  end

  sig { params(value: String).void }
  def created=(value)
  end

  sig { void }
  def clear_created
  end

  sig { returns(String) }
  def accepted
  end

  sig { params(value: String).void }
  def accepted=(value)
  end

  sig { void }
  def clear_accepted
  end

  sig { returns(String) }
  def expires
  end

  sig { params(value: String).void }
  def expires=(value)
  end

  sig { void }
  def clear_expires
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

class Services::Provider::V1::InviteRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::InviteRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::InviteRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::InviteRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::InviteRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      participant: T.nilable(T.any(Symbol, String, Integer)),
      description: T.nilable(String),
      details: T.nilable(Services::Account::V1::AccountDetails)
    ).void
  end
  def initialize(
    participant: :participant_type_individual,
    description: "",
    details: nil
  )
  end

  sig { returns(Symbol) }
  def participant
  end

  sig { params(value: T.any(Symbol, String, Integer)).void }
  def participant=(value)
  end

  sig { void }
  def clear_participant
  end

  sig { returns(String) }
  def description
  end

  sig { params(value: String).void }
  def description=(value)
  end

  sig { void }
  def clear_description
  end

  sig { returns(T.nilable(Services::Account::V1::AccountDetails)) }
  def details
  end

  sig { params(value: T.nilable(Services::Account::V1::AccountDetails)).void }
  def details=(value)
  end

  sig { void }
  def clear_details
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

class Services::Provider::V1::InviteResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::InviteResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::InviteResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::InviteResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::InviteResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      invitation_id: T.nilable(String),
      invitation_code: T.nilable(String)
    ).void
  end
  def initialize(
    invitation_id: "",
    invitation_code: ""
  )
  end

  sig { returns(String) }
  def invitation_id
  end

  sig { params(value: String).void }
  def invitation_id=(value)
  end

  sig { void }
  def clear_invitation_id
  end

  sig { returns(String) }
  def invitation_code
  end

  sig { params(value: String).void }
  def invitation_code=(value)
  end

  sig { void }
  def clear_invitation_code
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

class Services::Provider::V1::InvitationStatusRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::InvitationStatusRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::InvitationStatusRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::InvitationStatusRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::InvitationStatusRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      invitation_id: T.nilable(String)
    ).void
  end
  def initialize(
    invitation_id: ""
  )
  end

  sig { returns(String) }
  def invitation_id
  end

  sig { params(value: String).void }
  def invitation_id=(value)
  end

  sig { void }
  def clear_invitation_id
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

class Services::Provider::V1::InvitationStatusResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::InvitationStatusResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::InvitationStatusResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::InvitationStatusResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::InvitationStatusResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      status: T.nilable(T.any(Symbol, String, Integer)),
      status_details: T.nilable(String)
    ).void
  end
  def initialize(
    status: :Error,
    status_details: ""
  )
  end

  sig { returns(Symbol) }
  def status
  end

  sig { params(value: T.any(Symbol, String, Integer)).void }
  def status=(value)
  end

  sig { void }
  def clear_status
  end

  sig { returns(String) }
  def status_details
  end

  sig { params(value: String).void }
  def status_details=(value)
  end

  sig { void }
  def clear_status_details
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

class Services::Provider::V1::Ecosystem
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::Ecosystem) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::Ecosystem).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::Ecosystem) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::Ecosystem, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      id: T.nilable(String),
      name: T.nilable(String),
      description: T.nilable(String),
      uri: T.nilable(String),
      webhooks: T.nilable(T::Array[T.nilable(Services::Provider::V1::WebhookConfig)])
    ).void
  end
  def initialize(
    id: "",
    name: "",
    description: "",
    uri: "",
    webhooks: []
  )
  end

  sig { returns(String) }
  def id
  end

  sig { params(value: String).void }
  def id=(value)
  end

  sig { void }
  def clear_id
  end

  sig { returns(String) }
  def name
  end

  sig { params(value: String).void }
  def name=(value)
  end

  sig { void }
  def clear_name
  end

  sig { returns(String) }
  def description
  end

  sig { params(value: String).void }
  def description=(value)
  end

  sig { void }
  def clear_description
  end

  sig { returns(String) }
  def uri
  end

  sig { params(value: String).void }
  def uri=(value)
  end

  sig { void }
  def clear_uri
  end

  sig { returns(T::Array[T.nilable(Services::Provider::V1::WebhookConfig)]) }
  def webhooks
  end

  sig { params(value: Google::Protobuf::RepeatedField).void }
  def webhooks=(value)
  end

  sig { void }
  def clear_webhooks
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

class Services::Provider::V1::WebhookConfig
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::WebhookConfig) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::WebhookConfig).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::WebhookConfig) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::WebhookConfig, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      id: T.nilable(String),
      destination_url: T.nilable(String),
      events: T.nilable(T::Array[String])
    ).void
  end
  def initialize(
    id: "",
    destination_url: "",
    events: []
  )
  end

  sig { returns(String) }
  def id
  end

  sig { params(value: String).void }
  def id=(value)
  end

  sig { void }
  def clear_id
  end

  sig { returns(String) }
  def destination_url
  end

  sig { params(value: String).void }
  def destination_url=(value)
  end

  sig { void }
  def clear_destination_url
  end

  sig { returns(T::Array[String]) }
  def events
  end

  sig { params(value: Google::Protobuf::RepeatedField).void }
  def events=(value)
  end

  sig { void }
  def clear_events
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

class Services::Provider::V1::CreateEcosystemRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::CreateEcosystemRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::CreateEcosystemRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::CreateEcosystemRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::CreateEcosystemRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      name: T.nilable(String),
      description: T.nilable(String),
      uri: T.nilable(String),
      details: T.nilable(Services::Account::V1::AccountDetails)
    ).void
  end
  def initialize(
    name: "",
    description: "",
    uri: "",
    details: nil
  )
  end

  sig { returns(String) }
  def name
  end

  sig { params(value: String).void }
  def name=(value)
  end

  sig { void }
  def clear_name
  end

  sig { returns(String) }
  def description
  end

  sig { params(value: String).void }
  def description=(value)
  end

  sig { void }
  def clear_description
  end

  sig { returns(String) }
  def uri
  end

  sig { params(value: String).void }
  def uri=(value)
  end

  sig { void }
  def clear_uri
  end

  sig { returns(T.nilable(Services::Account::V1::AccountDetails)) }
  def details
  end

  sig { params(value: T.nilable(Services::Account::V1::AccountDetails)).void }
  def details=(value)
  end

  sig { void }
  def clear_details
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

class Services::Provider::V1::CreateEcosystemResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::CreateEcosystemResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::CreateEcosystemResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::CreateEcosystemResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::CreateEcosystemResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem: T.nilable(Services::Provider::V1::Ecosystem),
      profile: T.nilable(Services::Account::V1::AccountProfile),
      confirmation_method: T.nilable(T.any(Symbol, String, Integer))
    ).void
  end
  def initialize(
    ecosystem: nil,
    profile: nil,
    confirmation_method: :None
  )
  end

  sig { returns(T.nilable(Services::Provider::V1::Ecosystem)) }
  def ecosystem
  end

  sig { params(value: T.nilable(Services::Provider::V1::Ecosystem)).void }
  def ecosystem=(value)
  end

  sig { void }
  def clear_ecosystem
  end

  sig { returns(T.nilable(Services::Account::V1::AccountProfile)) }
  def profile
  end

  sig { params(value: T.nilable(Services::Account::V1::AccountProfile)).void }
  def profile=(value)
  end

  sig { void }
  def clear_profile
  end

  sig { returns(Symbol) }
  def confirmation_method
  end

  sig { params(value: T.any(Symbol, String, Integer)).void }
  def confirmation_method=(value)
  end

  sig { void }
  def clear_confirmation_method
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

class Services::Provider::V1::UpdateEcosystemRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::UpdateEcosystemRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::UpdateEcosystemRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::UpdateEcosystemRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::UpdateEcosystemRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem_id: T.nilable(String),
      description: T.nilable(String),
      uri: T.nilable(String)
    ).void
  end
  def initialize(
    ecosystem_id: "",
    description: "",
    uri: ""
  )
  end

  sig { returns(String) }
  def ecosystem_id
  end

  sig { params(value: String).void }
  def ecosystem_id=(value)
  end

  sig { void }
  def clear_ecosystem_id
  end

  sig { returns(String) }
  def description
  end

  sig { params(value: String).void }
  def description=(value)
  end

  sig { void }
  def clear_description
  end

  sig { returns(String) }
  def uri
  end

  sig { params(value: String).void }
  def uri=(value)
  end

  sig { void }
  def clear_uri
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

class Services::Provider::V1::UpdateEcosystemResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::UpdateEcosystemResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::UpdateEcosystemResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::UpdateEcosystemResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::UpdateEcosystemResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  # Constants of the form Constant_1 are invalid. We've declined to type this as a result, taking a hash instead.
  sig { params(args: T::Hash[T.untyped, T.untyped]).void }
  def initialize(args); end

  sig { returns(T.nilable(Services::Provider::V1::Ecosystem)) }
  def Ecosystem
  end

  sig { params(value: T.nilable(Services::Provider::V1::Ecosystem)).void }
  def Ecosystem=(value)
  end

  sig { void }
  def clear_Ecosystem
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

class Services::Provider::V1::AddWebhookRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::AddWebhookRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::AddWebhookRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::AddWebhookRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::AddWebhookRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem_id: T.nilable(String),
      destination_url: T.nilable(String),
      secret: T.nilable(String),
      events: T.nilable(T::Array[String])
    ).void
  end
  def initialize(
    ecosystem_id: "",
    destination_url: "",
    secret: "",
    events: []
  )
  end

  sig { returns(String) }
  def ecosystem_id
  end

  sig { params(value: String).void }
  def ecosystem_id=(value)
  end

  sig { void }
  def clear_ecosystem_id
  end

  sig { returns(String) }
  def destination_url
  end

  sig { params(value: String).void }
  def destination_url=(value)
  end

  sig { void }
  def clear_destination_url
  end

  sig { returns(String) }
  def secret
  end

  sig { params(value: String).void }
  def secret=(value)
  end

  sig { void }
  def clear_secret
  end

  sig { returns(T::Array[String]) }
  def events
  end

  sig { params(value: Google::Protobuf::RepeatedField).void }
  def events=(value)
  end

  sig { void }
  def clear_events
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

class Services::Provider::V1::AddWebhookResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::AddWebhookResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::AddWebhookResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::AddWebhookResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::AddWebhookResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem: T.nilable(Services::Provider::V1::Ecosystem)
    ).void
  end
  def initialize(
    ecosystem: nil
  )
  end

  sig { returns(T.nilable(Services::Provider::V1::Ecosystem)) }
  def ecosystem
  end

  sig { params(value: T.nilable(Services::Provider::V1::Ecosystem)).void }
  def ecosystem=(value)
  end

  sig { void }
  def clear_ecosystem
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

class Services::Provider::V1::DeleteWebhookRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::DeleteWebhookRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::DeleteWebhookRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::DeleteWebhookRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::DeleteWebhookRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem_id: T.nilable(String),
      webhook_id: T.nilable(String)
    ).void
  end
  def initialize(
    ecosystem_id: "",
    webhook_id: ""
  )
  end

  sig { returns(String) }
  def ecosystem_id
  end

  sig { params(value: String).void }
  def ecosystem_id=(value)
  end

  sig { void }
  def clear_ecosystem_id
  end

  sig { returns(String) }
  def webhook_id
  end

  sig { params(value: String).void }
  def webhook_id=(value)
  end

  sig { void }
  def clear_webhook_id
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

class Services::Provider::V1::DeleteWebhookResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::DeleteWebhookResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::DeleteWebhookResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::DeleteWebhookResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::DeleteWebhookResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem: T.nilable(Services::Provider::V1::Ecosystem)
    ).void
  end
  def initialize(
    ecosystem: nil
  )
  end

  sig { returns(T.nilable(Services::Provider::V1::Ecosystem)) }
  def ecosystem
  end

  sig { params(value: T.nilable(Services::Provider::V1::Ecosystem)).void }
  def ecosystem=(value)
  end

  sig { void }
  def clear_ecosystem
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

class Services::Provider::V1::EcosystemInfoRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::EcosystemInfoRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::EcosystemInfoRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::EcosystemInfoRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::EcosystemInfoRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem_id: T.nilable(String)
    ).void
  end
  def initialize(
    ecosystem_id: ""
  )
  end

  sig { returns(String) }
  def ecosystem_id
  end

  sig { params(value: String).void }
  def ecosystem_id=(value)
  end

  sig { void }
  def clear_ecosystem_id
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

class Services::Provider::V1::EcosystemInfoResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::EcosystemInfoResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::EcosystemInfoResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::EcosystemInfoResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::EcosystemInfoResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      ecosystem: T.nilable(Services::Provider::V1::Ecosystem)
    ).void
  end
  def initialize(
    ecosystem: nil
  )
  end

  sig { returns(T.nilable(Services::Provider::V1::Ecosystem)) }
  def ecosystem
  end

  sig { params(value: T.nilable(Services::Provider::V1::Ecosystem)).void }
  def ecosystem=(value)
  end

  sig { void }
  def clear_ecosystem
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

class Services::Provider::V1::GenerateTokenRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::GenerateTokenRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::GenerateTokenRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::GenerateTokenRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::GenerateTokenRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      description: T.nilable(String)
    ).void
  end
  def initialize(
    description: ""
  )
  end

  sig { returns(String) }
  def description
  end

  sig { params(value: String).void }
  def description=(value)
  end

  sig { void }
  def clear_description
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

class Services::Provider::V1::GenerateTokenResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::GenerateTokenResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::GenerateTokenResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::GenerateTokenResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::GenerateTokenResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      profile: T.nilable(Services::Account::V1::AccountProfile)
    ).void
  end
  def initialize(
    profile: nil
  )
  end

  sig { returns(T.nilable(Services::Account::V1::AccountProfile)) }
  def profile
  end

  sig { params(value: T.nilable(Services::Account::V1::AccountProfile)).void }
  def profile=(value)
  end

  sig { void }
  def clear_profile
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

class Services::Provider::V1::GetOberonKeyRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::GetOberonKeyRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::GetOberonKeyRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::GetOberonKeyRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::GetOberonKeyRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
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

class Services::Provider::V1::GetOberonKeyResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::GetOberonKeyResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::GetOberonKeyResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::GetOberonKeyResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::GetOberonKeyResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      key: T.nilable(String)
    ).void
  end
  def initialize(
    key: ""
  )
  end

  sig { returns(String) }
  def key
  end

  sig { params(value: String).void }
  def key=(value)
  end

  sig { void }
  def clear_key
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

class Services::Provider::V1::GetEventTokenRequest
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::GetEventTokenRequest) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::GetEventTokenRequest).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::GetEventTokenRequest) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::GetEventTokenRequest, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      pk: T.nilable(String)
    ).void
  end
  def initialize(
    pk: ""
  )
  end

  sig { returns(String) }
  def pk
  end

  sig { params(value: String).void }
  def pk=(value)
  end

  sig { void }
  def clear_pk
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

class Services::Provider::V1::GetEventTokenResponse
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::GetEventTokenResponse) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::GetEventTokenResponse).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::GetEventTokenResponse) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::GetEventTokenResponse, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
  end

  sig do
    params(
      token: T.nilable(String)
    ).void
  end
  def initialize(
    token: ""
  )
  end

  sig { returns(String) }
  def token
  end

  sig { params(value: String).void }
  def token=(value)
  end

  sig { void }
  def clear_token
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

class Services::Provider::V1::InviteRequest::DidCommInvitation
  include Google::Protobuf
  include Google::Protobuf::MessageExts
  extend Google::Protobuf::MessageExts::ClassMethods

  sig { params(str: String).returns(Services::Provider::V1::InviteRequest::DidCommInvitation) }
  def self.decode(str)
  end

  sig { params(msg: Services::Provider::V1::InviteRequest::DidCommInvitation).returns(String) }
  def self.encode(msg)
  end

  sig { params(str: String, kw: T.untyped).returns(Services::Provider::V1::InviteRequest::DidCommInvitation) }
  def self.decode_json(str, **kw)
  end

  sig { params(msg: Services::Provider::V1::InviteRequest::DidCommInvitation, kw: T.untyped).returns(String) }
  def self.encode_json(msg, **kw)
  end

  sig { returns(Google::Protobuf::Descriptor) }
  def self.descriptor
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

module Services::Provider::V1::ParticipantType
  self::participant_type_individual = T.let(0, Integer)
  self::participant_type_organization = T.let(1, Integer)

  sig { params(value: Integer).returns(T.nilable(Symbol)) }
  def self.lookup(value)
  end

  sig { params(value: Symbol).returns(T.nilable(Integer)) }
  def self.resolve(value)
  end

  sig { returns(::Google::Protobuf::EnumDescriptor) }
  def self.descriptor
  end
end

module Services::Provider::V1::InvitationStatusResponse::Status
  self::Error = T.let(0, Integer)
  self::InvitationSent = T.let(1, Integer)
  self::Completed = T.let(2, Integer)
  self::Expired = T.let(3, Integer)

  sig { params(value: Integer).returns(T.nilable(Symbol)) }
  def self.lookup(value)
  end

  sig { params(value: Symbol).returns(T.nilable(Integer)) }
  def self.resolve(value)
  end

  sig { returns(::Google::Protobuf::EnumDescriptor) }
  def self.descriptor
  end
end
