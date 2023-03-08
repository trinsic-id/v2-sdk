// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.29.0
// 	protoc        v3.20.3
// source: services/event/v1/event.proto

package eventpb

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	descriptorpb "google.golang.org/protobuf/types/descriptorpb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// All event types
type EventType int32

const (
	EventType_PING                                     EventType = 0
	EventType_LOG                                      EventType = 1
	EventType_GOVERNANCE_FRAMEWORK_CREATED             EventType = 5
	EventType_GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED   EventType = 6
	EventType_GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED EventType = 7
	EventType_TEMPLATE_CREATED                         EventType = 10
	EventType_TEMPLATE_DELETED                         EventType = 11
	EventType_WALLET_CREATED                           EventType = 15
	EventType_ITEM_RECEIVED                            EventType = 16
	EventType_CREDENTIAL_ISSUED                        EventType = 17
)

// Enum value maps for EventType.
var (
	EventType_name = map[int32]string{
		0:  "PING",
		1:  "LOG",
		5:  "GOVERNANCE_FRAMEWORK_CREATED",
		6:  "GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED",
		7:  "GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED",
		10: "TEMPLATE_CREATED",
		11: "TEMPLATE_DELETED",
		15: "WALLET_CREATED",
		16: "ITEM_RECEIVED",
		17: "CREDENTIAL_ISSUED",
	}
	EventType_value = map[string]int32{
		"PING":                                   0,
		"LOG":                                    1,
		"GOVERNANCE_FRAMEWORK_CREATED":           5,
		"GOVERNANCE_FRAMEWORK_MEMBER_REGISTERED": 6,
		"GOVERNANCE_FRAMEWORK_MEMBER_UNREGISTERED": 7,
		"TEMPLATE_CREATED":                         10,
		"TEMPLATE_DELETED":                         11,
		"WALLET_CREATED":                           15,
		"ITEM_RECEIVED":                            16,
		"CREDENTIAL_ISSUED":                        17,
	}
)

func (x EventType) Enum() *EventType {
	p := new(EventType)
	*p = x
	return p
}

func (x EventType) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (EventType) Descriptor() protoreflect.EnumDescriptor {
	return file_services_event_v1_event_proto_enumTypes[0].Descriptor()
}

func (EventType) Type() protoreflect.EnumType {
	return &file_services_event_v1_event_proto_enumTypes[0]
}

func (x EventType) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use EventType.Descriptor instead.
func (EventType) EnumDescriptor() ([]byte, []int) {
	return file_services_event_v1_event_proto_rawDescGZIP(), []int{0}
}

type APICall struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Source   string `protobuf:"bytes,1,opt,name=source,proto3" json:"source,omitempty"`
	Request  []byte `protobuf:"bytes,2,opt,name=request,proto3" json:"request,omitempty"`
	Response []byte `protobuf:"bytes,3,opt,name=response,proto3" json:"response,omitempty"`
}

func (x *APICall) Reset() {
	*x = APICall{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_event_v1_event_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *APICall) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*APICall) ProtoMessage() {}

func (x *APICall) ProtoReflect() protoreflect.Message {
	mi := &file_services_event_v1_event_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use APICall.ProtoReflect.Descriptor instead.
func (*APICall) Descriptor() ([]byte, []int) {
	return file_services_event_v1_event_proto_rawDescGZIP(), []int{0}
}

func (x *APICall) GetSource() string {
	if x != nil {
		return x.Source
	}
	return ""
}

func (x *APICall) GetRequest() []byte {
	if x != nil {
		return x.Request
	}
	return nil
}

func (x *APICall) GetResponse() []byte {
	if x != nil {
		return x.Response
	}
	return nil
}

// Webhook test event
type PingV1 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// UUID of this ping
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// UUID of the webhook receiving the ping
	WebhookId string `protobuf:"bytes,2,opt,name=webhook_id,json=webhookId,proto3" json:"webhook_id,omitempty"`
	// Timestamp ping was requested, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`)
	Timestamp string `protobuf:"bytes,3,opt,name=timestamp,proto3" json:"timestamp,omitempty"`
	// Arbitrary message specified when ping was requested
	Message string `protobuf:"bytes,4,opt,name=message,proto3" json:"message,omitempty"`
	// Ecosystem where this event originated, if any.
	EcosystemId string `protobuf:"bytes,5,opt,name=ecosystem_id,json=ecosystemId,proto3" json:"ecosystem_id,omitempty"`
}

func (x *PingV1) Reset() {
	*x = PingV1{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_event_v1_event_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *PingV1) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*PingV1) ProtoMessage() {}

func (x *PingV1) ProtoReflect() protoreflect.Message {
	mi := &file_services_event_v1_event_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use PingV1.ProtoReflect.Descriptor instead.
func (*PingV1) Descriptor() ([]byte, []int) {
	return file_services_event_v1_event_proto_rawDescGZIP(), []int{1}
}

func (x *PingV1) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *PingV1) GetWebhookId() string {
	if x != nil {
		return x.WebhookId
	}
	return ""
}

func (x *PingV1) GetTimestamp() string {
	if x != nil {
		return x.Timestamp
	}
	return ""
}

func (x *PingV1) GetMessage() string {
	if x != nil {
		return x.Message
	}
	return ""
}

func (x *PingV1) GetEcosystemId() string {
	if x != nil {
		return x.EcosystemId
	}
	return ""
}

// Entity Governance Framework created and attached to ecosystem
type GovernanceFrameworkCreatedV1 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// UUID of the governance framework
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// UUID of the ecosystem that owns this EGF
	EcosystemId string `protobuf:"bytes,2,opt,name=ecosystem_id,json=ecosystemId,proto3" json:"ecosystem_id,omitempty"`
	// Trust registry associated with this EGF
	TrustRegistry string `protobuf:"bytes,3,opt,name=trust_registry,json=trustRegistry,proto3" json:"trust_registry,omitempty"`
	// Wallet ID of the authority for this EGF
	GoverningAuthority string `protobuf:"bytes,4,opt,name=governing_authority,json=governingAuthority,proto3" json:"governing_authority,omitempty"`
	// Type of EGF
	Type string `protobuf:"bytes,5,opt,name=type,proto3" json:"type,omitempty"`
	// User-friendly name for the EGF
	Name string `protobuf:"bytes,6,opt,name=name,proto3" json:"name,omitempty"`
	// Description of the EGF
	Description string `protobuf:"bytes,7,opt,name=description,proto3" json:"description,omitempty"`
	// URI for the EGF
	GovernanceFramework string `protobuf:"bytes,8,opt,name=governance_framework,json=governanceFramework,proto3" json:"governance_framework,omitempty"`
	// Timestamp event occurred, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`)
	Timestamp string `protobuf:"bytes,9,opt,name=timestamp,proto3" json:"timestamp,omitempty"`
}

func (x *GovernanceFrameworkCreatedV1) Reset() {
	*x = GovernanceFrameworkCreatedV1{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_event_v1_event_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GovernanceFrameworkCreatedV1) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GovernanceFrameworkCreatedV1) ProtoMessage() {}

func (x *GovernanceFrameworkCreatedV1) ProtoReflect() protoreflect.Message {
	mi := &file_services_event_v1_event_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GovernanceFrameworkCreatedV1.ProtoReflect.Descriptor instead.
func (*GovernanceFrameworkCreatedV1) Descriptor() ([]byte, []int) {
	return file_services_event_v1_event_proto_rawDescGZIP(), []int{2}
}

func (x *GovernanceFrameworkCreatedV1) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetEcosystemId() string {
	if x != nil {
		return x.EcosystemId
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetTrustRegistry() string {
	if x != nil {
		return x.TrustRegistry
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetGoverningAuthority() string {
	if x != nil {
		return x.GoverningAuthority
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetType() string {
	if x != nil {
		return x.Type
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetGovernanceFramework() string {
	if x != nil {
		return x.GovernanceFramework
	}
	return ""
}

func (x *GovernanceFrameworkCreatedV1) GetTimestamp() string {
	if x != nil {
		return x.Timestamp
	}
	return ""
}

// Template created in ecosystem
type TemplateCreatedV1 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// UUID of the template
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// UUID of the ecosystem that owns this template
	EcosystemId string `protobuf:"bytes,2,opt,name=ecosystem_id,json=ecosystemId,proto3" json:"ecosystem_id,omitempty"`
	// Template name
	Name string `protobuf:"bytes,3,opt,name=name,proto3" json:"name,omitempty"`
	// Template type
	Type string `protobuf:"bytes,4,opt,name=type,proto3" json:"type,omitempty"`
	// WalletID that created the template
	CreatedBy string `protobuf:"bytes,5,opt,name=created_by,json=createdBy,proto3" json:"created_by,omitempty"`
	// Timestamp event occurred, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`)
	Timestamp string `protobuf:"bytes,6,opt,name=timestamp,proto3" json:"timestamp,omitempty"`
}

func (x *TemplateCreatedV1) Reset() {
	*x = TemplateCreatedV1{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_event_v1_event_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TemplateCreatedV1) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TemplateCreatedV1) ProtoMessage() {}

func (x *TemplateCreatedV1) ProtoReflect() protoreflect.Message {
	mi := &file_services_event_v1_event_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TemplateCreatedV1.ProtoReflect.Descriptor instead.
func (*TemplateCreatedV1) Descriptor() ([]byte, []int) {
	return file_services_event_v1_event_proto_rawDescGZIP(), []int{3}
}

func (x *TemplateCreatedV1) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *TemplateCreatedV1) GetEcosystemId() string {
	if x != nil {
		return x.EcosystemId
	}
	return ""
}

func (x *TemplateCreatedV1) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *TemplateCreatedV1) GetType() string {
	if x != nil {
		return x.Type
	}
	return ""
}

func (x *TemplateCreatedV1) GetCreatedBy() string {
	if x != nil {
		return x.CreatedBy
	}
	return ""
}

func (x *TemplateCreatedV1) GetTimestamp() string {
	if x != nil {
		return x.Timestamp
	}
	return ""
}

// Item inserted into wallet
type ItemReceivedV1 struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// UUID of the new item
	Id string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	// Timestamp when the item was received, in ISO 8601 format (ex. `2022-07-07T08:09:10.11Z`)
	Received string `protobuf:"bytes,2,opt,name=received,proto3" json:"received,omitempty"`
	// ID of wallet
	WalletId string `protobuf:"bytes,3,opt,name=wallet_id,json=walletId,proto3" json:"wallet_id,omitempty"`
	// Ecosystem where this event originated, if any.
	EcosystemId string `protobuf:"bytes,4,opt,name=ecosystem_id,json=ecosystemId,proto3" json:"ecosystem_id,omitempty"`
}

func (x *ItemReceivedV1) Reset() {
	*x = ItemReceivedV1{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_event_v1_event_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ItemReceivedV1) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ItemReceivedV1) ProtoMessage() {}

func (x *ItemReceivedV1) ProtoReflect() protoreflect.Message {
	mi := &file_services_event_v1_event_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ItemReceivedV1.ProtoReflect.Descriptor instead.
func (*ItemReceivedV1) Descriptor() ([]byte, []int) {
	return file_services_event_v1_event_proto_rawDescGZIP(), []int{4}
}

func (x *ItemReceivedV1) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *ItemReceivedV1) GetReceived() string {
	if x != nil {
		return x.Received
	}
	return ""
}

func (x *ItemReceivedV1) GetWalletId() string {
	if x != nil {
		return x.WalletId
	}
	return ""
}

func (x *ItemReceivedV1) GetEcosystemId() string {
	if x != nil {
		return x.EcosystemId
	}
	return ""
}

var file_services_event_v1_event_proto_extTypes = []protoimpl.ExtensionInfo{
	{
		ExtendedType:  (*descriptorpb.MessageOptions)(nil),
		ExtensionType: (*EventType)(nil),
		Field:         60002,
		Name:          "trinsic.services.event.event_type",
		Tag:           "varint,60002,opt,name=event_type,enum=trinsic.services.event.EventType",
		Filename:      "services/event/v1/event.proto",
	},
}

// Extension fields to descriptorpb.MessageOptions.
var (
	// Event type associated with this Event message.
	//
	// optional trinsic.services.event.EventType event_type = 60002;
	E_EventType = &file_services_event_v1_event_proto_extTypes[0]
)

var File_services_event_v1_event_proto protoreflect.FileDescriptor

var file_services_event_v1_event_proto_rawDesc = []byte{
	0x0a, 0x1d, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x65, 0x76, 0x65, 0x6e, 0x74,
	0x2f, 0x76, 0x31, 0x2f, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12,
	0x16, 0x74, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x73, 0x2e, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x1a, 0x20, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70,
	0x74, 0x6f, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x57, 0x0a, 0x07, 0x41, 0x50, 0x49,
	0x43, 0x61, 0x6c, 0x6c, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x12, 0x18, 0x0a, 0x07,
	0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x07, 0x72,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x08, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x22, 0x98, 0x01, 0x0a, 0x06, 0x50, 0x69, 0x6e, 0x67, 0x56, 0x31, 0x12, 0x0e, 0x0a,
	0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x1d, 0x0a,
	0x0a, 0x77, 0x65, 0x62, 0x68, 0x6f, 0x6f, 0x6b, 0x5f, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x09, 0x77, 0x65, 0x62, 0x68, 0x6f, 0x6f, 0x6b, 0x49, 0x64, 0x12, 0x1c, 0x0a, 0x09,
	0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x12, 0x18, 0x0a, 0x07, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x12, 0x21, 0x0a, 0x0c, 0x65, 0x63, 0x6f, 0x73, 0x79, 0x73, 0x74, 0x65,
	0x6d, 0x5f, 0x69, 0x64, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x65, 0x63, 0x6f, 0x73,
	0x79, 0x73, 0x74, 0x65, 0x6d, 0x49, 0x64, 0x3a, 0x04, 0x90, 0xa6, 0x1d, 0x00, 0x22, 0xca, 0x02,
	0x0a, 0x1c, 0x47, 0x6f, 0x76, 0x65, 0x72, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x46, 0x72, 0x61, 0x6d,
	0x65, 0x77, 0x6f, 0x72, 0x6b, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x56, 0x31, 0x12, 0x0e,
	0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x21,
	0x0a, 0x0c, 0x65, 0x63, 0x6f, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x5f, 0x69, 0x64, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x65, 0x63, 0x6f, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x49,
	0x64, 0x12, 0x25, 0x0a, 0x0e, 0x74, 0x72, 0x75, 0x73, 0x74, 0x5f, 0x72, 0x65, 0x67, 0x69, 0x73,
	0x74, 0x72, 0x79, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0d, 0x74, 0x72, 0x75, 0x73, 0x74,
	0x52, 0x65, 0x67, 0x69, 0x73, 0x74, 0x72, 0x79, 0x12, 0x2f, 0x0a, 0x13, 0x67, 0x6f, 0x76, 0x65,
	0x72, 0x6e, 0x69, 0x6e, 0x67, 0x5f, 0x61, 0x75, 0x74, 0x68, 0x6f, 0x72, 0x69, 0x74, 0x79, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x12, 0x67, 0x6f, 0x76, 0x65, 0x72, 0x6e, 0x69, 0x6e, 0x67,
	0x41, 0x75, 0x74, 0x68, 0x6f, 0x72, 0x69, 0x74, 0x79, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x79, 0x70,
	0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x12, 0x12, 0x0a,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d,
	0x65, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e,
	0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74,
	0x69, 0x6f, 0x6e, 0x12, 0x31, 0x0a, 0x14, 0x67, 0x6f, 0x76, 0x65, 0x72, 0x6e, 0x61, 0x6e, 0x63,
	0x65, 0x5f, 0x66, 0x72, 0x61, 0x6d, 0x65, 0x77, 0x6f, 0x72, 0x6b, 0x18, 0x08, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x13, 0x67, 0x6f, 0x76, 0x65, 0x72, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x46, 0x72, 0x61,
	0x6d, 0x65, 0x77, 0x6f, 0x72, 0x6b, 0x12, 0x1c, 0x0a, 0x09, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74,
	0x61, 0x6d, 0x70, 0x18, 0x09, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x74, 0x69, 0x6d, 0x65, 0x73,
	0x74, 0x61, 0x6d, 0x70, 0x3a, 0x04, 0x90, 0xa6, 0x1d, 0x05, 0x22, 0xb1, 0x01, 0x0a, 0x11, 0x54,
	0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x56, 0x31,
	0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64,
	0x12, 0x21, 0x0a, 0x0c, 0x65, 0x63, 0x6f, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x5f, 0x69, 0x64,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x65, 0x63, 0x6f, 0x73, 0x79, 0x73, 0x74, 0x65,
	0x6d, 0x49, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x12, 0x1d, 0x0a, 0x0a, 0x63,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x5f, 0x62, 0x79, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x42, 0x79, 0x12, 0x1c, 0x0a, 0x09, 0x74, 0x69,
	0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x74,
	0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x3a, 0x04, 0x90, 0xa6, 0x1d, 0x0a, 0x22, 0x82,
	0x01, 0x0a, 0x0e, 0x49, 0x74, 0x65, 0x6d, 0x52, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x56,
	0x31, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69,
	0x64, 0x12, 0x1a, 0x0a, 0x08, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x08, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x64, 0x12, 0x1b, 0x0a,
	0x09, 0x77, 0x61, 0x6c, 0x6c, 0x65, 0x74, 0x5f, 0x69, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x08, 0x77, 0x61, 0x6c, 0x6c, 0x65, 0x74, 0x49, 0x64, 0x12, 0x21, 0x0a, 0x0c, 0x65, 0x63,
	0x6f, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x5f, 0x69, 0x64, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x0b, 0x65, 0x63, 0x6f, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x49, 0x64, 0x3a, 0x04, 0x90,
	0xa6, 0x1d, 0x10, 0x2a, 0x84, 0x02, 0x0a, 0x09, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x54, 0x79, 0x70,
	0x65, 0x12, 0x08, 0x0a, 0x04, 0x50, 0x49, 0x4e, 0x47, 0x10, 0x00, 0x12, 0x07, 0x0a, 0x03, 0x4c,
	0x4f, 0x47, 0x10, 0x01, 0x12, 0x20, 0x0a, 0x1c, 0x47, 0x4f, 0x56, 0x45, 0x52, 0x4e, 0x41, 0x4e,
	0x43, 0x45, 0x5f, 0x46, 0x52, 0x41, 0x4d, 0x45, 0x57, 0x4f, 0x52, 0x4b, 0x5f, 0x43, 0x52, 0x45,
	0x41, 0x54, 0x45, 0x44, 0x10, 0x05, 0x12, 0x2a, 0x0a, 0x26, 0x47, 0x4f, 0x56, 0x45, 0x52, 0x4e,
	0x41, 0x4e, 0x43, 0x45, 0x5f, 0x46, 0x52, 0x41, 0x4d, 0x45, 0x57, 0x4f, 0x52, 0x4b, 0x5f, 0x4d,
	0x45, 0x4d, 0x42, 0x45, 0x52, 0x5f, 0x52, 0x45, 0x47, 0x49, 0x53, 0x54, 0x45, 0x52, 0x45, 0x44,
	0x10, 0x06, 0x12, 0x2c, 0x0a, 0x28, 0x47, 0x4f, 0x56, 0x45, 0x52, 0x4e, 0x41, 0x4e, 0x43, 0x45,
	0x5f, 0x46, 0x52, 0x41, 0x4d, 0x45, 0x57, 0x4f, 0x52, 0x4b, 0x5f, 0x4d, 0x45, 0x4d, 0x42, 0x45,
	0x52, 0x5f, 0x55, 0x4e, 0x52, 0x45, 0x47, 0x49, 0x53, 0x54, 0x45, 0x52, 0x45, 0x44, 0x10, 0x07,
	0x12, 0x14, 0x0a, 0x10, 0x54, 0x45, 0x4d, 0x50, 0x4c, 0x41, 0x54, 0x45, 0x5f, 0x43, 0x52, 0x45,
	0x41, 0x54, 0x45, 0x44, 0x10, 0x0a, 0x12, 0x14, 0x0a, 0x10, 0x54, 0x45, 0x4d, 0x50, 0x4c, 0x41,
	0x54, 0x45, 0x5f, 0x44, 0x45, 0x4c, 0x45, 0x54, 0x45, 0x44, 0x10, 0x0b, 0x12, 0x12, 0x0a, 0x0e,
	0x57, 0x41, 0x4c, 0x4c, 0x45, 0x54, 0x5f, 0x43, 0x52, 0x45, 0x41, 0x54, 0x45, 0x44, 0x10, 0x0f,
	0x12, 0x11, 0x0a, 0x0d, 0x49, 0x54, 0x45, 0x4d, 0x5f, 0x52, 0x45, 0x43, 0x45, 0x49, 0x56, 0x45,
	0x44, 0x10, 0x10, 0x12, 0x15, 0x0a, 0x11, 0x43, 0x52, 0x45, 0x44, 0x45, 0x4e, 0x54, 0x49, 0x41,
	0x4c, 0x5f, 0x49, 0x53, 0x53, 0x55, 0x45, 0x44, 0x10, 0x11, 0x3a, 0x66, 0x0a, 0x0a, 0x65, 0x76,
	0x65, 0x6e, 0x74, 0x5f, 0x74, 0x79, 0x70, 0x65, 0x12, 0x1f, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x4d, 0x65, 0x73, 0x73, 0x61,
	0x67, 0x65, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x18, 0xe2, 0xd4, 0x03, 0x20, 0x01, 0x28,
	0x0e, 0x32, 0x21, 0x2e, 0x74, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x73, 0x65, 0x72, 0x76,
	0x69, 0x63, 0x65, 0x73, 0x2e, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x2e, 0x45, 0x76, 0x65, 0x6e, 0x74,
	0x54, 0x79, 0x70, 0x65, 0x52, 0x09, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x54, 0x79, 0x70, 0x65, 0x88,
	0x01, 0x01, 0x42, 0x44, 0x0a, 0x19, 0x74, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x73, 0x65,
	0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x2e, 0x76, 0x31, 0x50,
	0x01, 0x5a, 0x09, 0x2e, 0x2f, 0x65, 0x76, 0x65, 0x6e, 0x74, 0x70, 0x62, 0xaa, 0x02, 0x19, 0x54,
	0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e,
	0x45, 0x76, 0x65, 0x6e, 0x74, 0x2e, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_services_event_v1_event_proto_rawDescOnce sync.Once
	file_services_event_v1_event_proto_rawDescData = file_services_event_v1_event_proto_rawDesc
)

func file_services_event_v1_event_proto_rawDescGZIP() []byte {
	file_services_event_v1_event_proto_rawDescOnce.Do(func() {
		file_services_event_v1_event_proto_rawDescData = protoimpl.X.CompressGZIP(file_services_event_v1_event_proto_rawDescData)
	})
	return file_services_event_v1_event_proto_rawDescData
}

var file_services_event_v1_event_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_services_event_v1_event_proto_msgTypes = make([]protoimpl.MessageInfo, 5)
var file_services_event_v1_event_proto_goTypes = []interface{}{
	(EventType)(0),                       // 0: trinsic.services.event.EventType
	(*APICall)(nil),                      // 1: trinsic.services.event.APICall
	(*PingV1)(nil),                       // 2: trinsic.services.event.PingV1
	(*GovernanceFrameworkCreatedV1)(nil), // 3: trinsic.services.event.GovernanceFrameworkCreatedV1
	(*TemplateCreatedV1)(nil),            // 4: trinsic.services.event.TemplateCreatedV1
	(*ItemReceivedV1)(nil),               // 5: trinsic.services.event.ItemReceivedV1
	(*descriptorpb.MessageOptions)(nil),  // 6: google.protobuf.MessageOptions
}
var file_services_event_v1_event_proto_depIdxs = []int32{
	6, // 0: trinsic.services.event.event_type:extendee -> google.protobuf.MessageOptions
	0, // 1: trinsic.services.event.event_type:type_name -> trinsic.services.event.EventType
	2, // [2:2] is the sub-list for method output_type
	2, // [2:2] is the sub-list for method input_type
	1, // [1:2] is the sub-list for extension type_name
	0, // [0:1] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_services_event_v1_event_proto_init() }
func file_services_event_v1_event_proto_init() {
	if File_services_event_v1_event_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_services_event_v1_event_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*APICall); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_services_event_v1_event_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*PingV1); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_services_event_v1_event_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GovernanceFrameworkCreatedV1); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_services_event_v1_event_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*TemplateCreatedV1); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_services_event_v1_event_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ItemReceivedV1); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_services_event_v1_event_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   5,
			NumExtensions: 1,
			NumServices:   0,
		},
		GoTypes:           file_services_event_v1_event_proto_goTypes,
		DependencyIndexes: file_services_event_v1_event_proto_depIdxs,
		EnumInfos:         file_services_event_v1_event_proto_enumTypes,
		MessageInfos:      file_services_event_v1_event_proto_msgTypes,
		ExtensionInfos:    file_services_event_v1_event_proto_extTypes,
	}.Build()
	File_services_event_v1_event_proto = out.File
	file_services_event_v1_event_proto_rawDesc = nil
	file_services_event_v1_event_proto_goTypes = nil
	file_services_event_v1_event_proto_depIdxs = nil
}
