// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.20.3
// source: services/provider/v1/access-management.proto

package provider

import (
	_ "github.com/trinsic-id/sdk/go/proto/services/options"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// Role management
type AddRoleAssignmentRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Role to assign
	Role string `protobuf:"bytes,1,opt,name=role,proto3" json:"role,omitempty"`
	// Types that are assignable to Account:
	//
	//	*AddRoleAssignmentRequest_Email
	//	*AddRoleAssignmentRequest_WalletId
	Account isAddRoleAssignmentRequest_Account `protobuf_oneof:"account"`
}

func (x *AddRoleAssignmentRequest) Reset() {
	*x = AddRoleAssignmentRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AddRoleAssignmentRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AddRoleAssignmentRequest) ProtoMessage() {}

func (x *AddRoleAssignmentRequest) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AddRoleAssignmentRequest.ProtoReflect.Descriptor instead.
func (*AddRoleAssignmentRequest) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{0}
}

func (x *AddRoleAssignmentRequest) GetRole() string {
	if x != nil {
		return x.Role
	}
	return ""
}

func (m *AddRoleAssignmentRequest) GetAccount() isAddRoleAssignmentRequest_Account {
	if m != nil {
		return m.Account
	}
	return nil
}

func (x *AddRoleAssignmentRequest) GetEmail() string {
	if x, ok := x.GetAccount().(*AddRoleAssignmentRequest_Email); ok {
		return x.Email
	}
	return ""
}

func (x *AddRoleAssignmentRequest) GetWalletId() string {
	if x, ok := x.GetAccount().(*AddRoleAssignmentRequest_WalletId); ok {
		return x.WalletId
	}
	return ""
}

type isAddRoleAssignmentRequest_Account interface {
	isAddRoleAssignmentRequest_Account()
}

type AddRoleAssignmentRequest_Email struct {
	// Email address of account to assign role to.
	// Mutually exclusive with `walletId`.
	Email string `protobuf:"bytes,2,opt,name=email,proto3,oneof"`
}

type AddRoleAssignmentRequest_WalletId struct {
	// Wallet ID of account to assign role to.
	// Mutually exclusive with `email`.
	WalletId string `protobuf:"bytes,3,opt,name=wallet_id,json=walletId,proto3,oneof"`
}

func (*AddRoleAssignmentRequest_Email) isAddRoleAssignmentRequest_Account() {}

func (*AddRoleAssignmentRequest_WalletId) isAddRoleAssignmentRequest_Account() {}

type AddRoleAssignmentResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *AddRoleAssignmentResponse) Reset() {
	*x = AddRoleAssignmentResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AddRoleAssignmentResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AddRoleAssignmentResponse) ProtoMessage() {}

func (x *AddRoleAssignmentResponse) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AddRoleAssignmentResponse.ProtoReflect.Descriptor instead.
func (*AddRoleAssignmentResponse) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{1}
}

type RemoveRoleAssignmentRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Role to unassign
	Role string `protobuf:"bytes,1,opt,name=role,proto3" json:"role,omitempty"`
	// Types that are assignable to Account:
	//
	//	*RemoveRoleAssignmentRequest_Email
	//	*RemoveRoleAssignmentRequest_WalletId
	Account isRemoveRoleAssignmentRequest_Account `protobuf_oneof:"account"`
}

func (x *RemoveRoleAssignmentRequest) Reset() {
	*x = RemoveRoleAssignmentRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RemoveRoleAssignmentRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RemoveRoleAssignmentRequest) ProtoMessage() {}

func (x *RemoveRoleAssignmentRequest) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RemoveRoleAssignmentRequest.ProtoReflect.Descriptor instead.
func (*RemoveRoleAssignmentRequest) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{2}
}

func (x *RemoveRoleAssignmentRequest) GetRole() string {
	if x != nil {
		return x.Role
	}
	return ""
}

func (m *RemoveRoleAssignmentRequest) GetAccount() isRemoveRoleAssignmentRequest_Account {
	if m != nil {
		return m.Account
	}
	return nil
}

func (x *RemoveRoleAssignmentRequest) GetEmail() string {
	if x, ok := x.GetAccount().(*RemoveRoleAssignmentRequest_Email); ok {
		return x.Email
	}
	return ""
}

func (x *RemoveRoleAssignmentRequest) GetWalletId() string {
	if x, ok := x.GetAccount().(*RemoveRoleAssignmentRequest_WalletId); ok {
		return x.WalletId
	}
	return ""
}

type isRemoveRoleAssignmentRequest_Account interface {
	isRemoveRoleAssignmentRequest_Account()
}

type RemoveRoleAssignmentRequest_Email struct {
	// Email address of account to unassign role from.
	// Mutually exclusive with `walletId`.
	Email string `protobuf:"bytes,2,opt,name=email,proto3,oneof"`
}

type RemoveRoleAssignmentRequest_WalletId struct {
	// Wallet ID of account to unassign role from.
	// Mutually exclusive with `email`.
	WalletId string `protobuf:"bytes,3,opt,name=wallet_id,json=walletId,proto3,oneof"`
}

func (*RemoveRoleAssignmentRequest_Email) isRemoveRoleAssignmentRequest_Account() {}

func (*RemoveRoleAssignmentRequest_WalletId) isRemoveRoleAssignmentRequest_Account() {}

type RemoveRoleAssignmentResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *RemoveRoleAssignmentResponse) Reset() {
	*x = RemoveRoleAssignmentResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RemoveRoleAssignmentResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RemoveRoleAssignmentResponse) ProtoMessage() {}

func (x *RemoveRoleAssignmentResponse) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RemoveRoleAssignmentResponse.ProtoReflect.Descriptor instead.
func (*RemoveRoleAssignmentResponse) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{3}
}

// Request to fetch the list of roles assigned to the current account
type ListRoleAssignmentsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Account:
	//
	//	*ListRoleAssignmentsRequest_Email
	//	*ListRoleAssignmentsRequest_WalletId
	Account isListRoleAssignmentsRequest_Account `protobuf_oneof:"account"`
}

func (x *ListRoleAssignmentsRequest) Reset() {
	*x = ListRoleAssignmentsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListRoleAssignmentsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListRoleAssignmentsRequest) ProtoMessage() {}

func (x *ListRoleAssignmentsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListRoleAssignmentsRequest.ProtoReflect.Descriptor instead.
func (*ListRoleAssignmentsRequest) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{4}
}

func (m *ListRoleAssignmentsRequest) GetAccount() isListRoleAssignmentsRequest_Account {
	if m != nil {
		return m.Account
	}
	return nil
}

func (x *ListRoleAssignmentsRequest) GetEmail() string {
	if x, ok := x.GetAccount().(*ListRoleAssignmentsRequest_Email); ok {
		return x.Email
	}
	return ""
}

func (x *ListRoleAssignmentsRequest) GetWalletId() string {
	if x, ok := x.GetAccount().(*ListRoleAssignmentsRequest_WalletId); ok {
		return x.WalletId
	}
	return ""
}

type isListRoleAssignmentsRequest_Account interface {
	isListRoleAssignmentsRequest_Account()
}

type ListRoleAssignmentsRequest_Email struct {
	// Email address of account to unassign role from.
	// Mutually exclusive with `walletId`.
	Email string `protobuf:"bytes,2,opt,name=email,proto3,oneof"`
}

type ListRoleAssignmentsRequest_WalletId struct {
	// Wallet ID of account to unassign role from.
	// Mutually exclusive with `email`.
	WalletId string `protobuf:"bytes,3,opt,name=wallet_id,json=walletId,proto3,oneof"`
}

func (*ListRoleAssignmentsRequest_Email) isListRoleAssignmentsRequest_Account() {}

func (*ListRoleAssignmentsRequest_WalletId) isListRoleAssignmentsRequest_Account() {}

type ListRoleAssignmentsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// List of roles
	Roles []string `protobuf:"bytes,1,rep,name=roles,proto3" json:"roles,omitempty"`
}

func (x *ListRoleAssignmentsResponse) Reset() {
	*x = ListRoleAssignmentsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListRoleAssignmentsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListRoleAssignmentsResponse) ProtoMessage() {}

func (x *ListRoleAssignmentsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListRoleAssignmentsResponse.ProtoReflect.Descriptor instead.
func (*ListRoleAssignmentsResponse) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{5}
}

func (x *ListRoleAssignmentsResponse) GetRoles() []string {
	if x != nil {
		return x.Roles
	}
	return nil
}

// Request to fetch the available roles in the current ecosystem
type ListAvailableRolesRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *ListAvailableRolesRequest) Reset() {
	*x = ListAvailableRolesRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListAvailableRolesRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListAvailableRolesRequest) ProtoMessage() {}

func (x *ListAvailableRolesRequest) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListAvailableRolesRequest.ProtoReflect.Descriptor instead.
func (*ListAvailableRolesRequest) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{6}
}

type ListAvailableRolesResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// List of roles
	Roles []string `protobuf:"bytes,1,rep,name=roles,proto3" json:"roles,omitempty"`
}

func (x *ListAvailableRolesResponse) Reset() {
	*x = ListAvailableRolesResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_provider_v1_access_management_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListAvailableRolesResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListAvailableRolesResponse) ProtoMessage() {}

func (x *ListAvailableRolesResponse) ProtoReflect() protoreflect.Message {
	mi := &file_services_provider_v1_access_management_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListAvailableRolesResponse.ProtoReflect.Descriptor instead.
func (*ListAvailableRolesResponse) Descriptor() ([]byte, []int) {
	return file_services_provider_v1_access_management_proto_rawDescGZIP(), []int{7}
}

func (x *ListAvailableRolesResponse) GetRoles() []string {
	if x != nil {
		return x.Roles
	}
	return nil
}

var File_services_provider_v1_access_management_proto protoreflect.FileDescriptor

var file_services_provider_v1_access_management_proto_rawDesc = []byte{
	0x0a, 0x2c, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x76, 0x69,
	0x64, 0x65, 0x72, 0x2f, 0x76, 0x31, 0x2f, 0x61, 0x63, 0x63, 0x65, 0x73, 0x73, 0x2d, 0x6d, 0x61,
	0x6e, 0x61, 0x67, 0x65, 0x6d, 0x65, 0x6e, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x14,
	0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65,
	0x72, 0x2e, 0x76, 0x31, 0x1a, 0x24, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x6f,
	0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x2f, 0x66, 0x69, 0x65, 0x6c, 0x64, 0x2d, 0x6f, 0x70, 0x74,
	0x69, 0x6f, 0x6e, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x70, 0x0a, 0x18, 0x41, 0x64,
	0x64, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a, 0x04, 0x72, 0x6f, 0x6c, 0x65, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x72, 0x6f, 0x6c, 0x65, 0x12, 0x16, 0x0a, 0x05, 0x65, 0x6d,
	0x61, 0x69, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x05, 0x65, 0x6d, 0x61,
	0x69, 0x6c, 0x12, 0x1d, 0x0a, 0x09, 0x77, 0x61, 0x6c, 0x6c, 0x65, 0x74, 0x5f, 0x69, 0x64, 0x18,
	0x03, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x08, 0x77, 0x61, 0x6c, 0x6c, 0x65, 0x74, 0x49,
	0x64, 0x42, 0x09, 0x0a, 0x07, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x22, 0x1b, 0x0a, 0x19,
	0x41, 0x64, 0x64, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e,
	0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x73, 0x0a, 0x1b, 0x52, 0x65, 0x6d,
	0x6f, 0x76, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e,
	0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a, 0x04, 0x72, 0x6f, 0x6c, 0x65,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x72, 0x6f, 0x6c, 0x65, 0x12, 0x16, 0x0a, 0x05,
	0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x05, 0x65,
	0x6d, 0x61, 0x69, 0x6c, 0x12, 0x1d, 0x0a, 0x09, 0x77, 0x61, 0x6c, 0x6c, 0x65, 0x74, 0x5f, 0x69,
	0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x08, 0x77, 0x61, 0x6c, 0x6c, 0x65,
	0x74, 0x49, 0x64, 0x42, 0x09, 0x0a, 0x07, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x22, 0x1e,
	0x0a, 0x1c, 0x52, 0x65, 0x6d, 0x6f, 0x76, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69,
	0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x5e,
	0x0a, 0x1a, 0x4c, 0x69, 0x73, 0x74, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e,
	0x6d, 0x65, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x16, 0x0a, 0x05,
	0x65, 0x6d, 0x61, 0x69, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x05, 0x65,
	0x6d, 0x61, 0x69, 0x6c, 0x12, 0x1d, 0x0a, 0x09, 0x77, 0x61, 0x6c, 0x6c, 0x65, 0x74, 0x5f, 0x69,
	0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x08, 0x77, 0x61, 0x6c, 0x6c, 0x65,
	0x74, 0x49, 0x64, 0x42, 0x09, 0x0a, 0x07, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x22, 0x33,
	0x0a, 0x1b, 0x4c, 0x69, 0x73, 0x74, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e,
	0x6d, 0x65, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x14, 0x0a,
	0x05, 0x72, 0x6f, 0x6c, 0x65, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x09, 0x52, 0x05, 0x72, 0x6f,
	0x6c, 0x65, 0x73, 0x22, 0x1b, 0x0a, 0x19, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x76, 0x61, 0x69, 0x6c,
	0x61, 0x62, 0x6c, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x22, 0x32, 0x0a, 0x1a, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x76, 0x61, 0x69, 0x6c, 0x61, 0x62, 0x6c,
	0x65, 0x52, 0x6f, 0x6c, 0x65, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x14,
	0x0a, 0x05, 0x72, 0x6f, 0x6c, 0x65, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x09, 0x52, 0x05, 0x72,
	0x6f, 0x6c, 0x65, 0x73, 0x32, 0x84, 0x04, 0x0a, 0x10, 0x41, 0x63, 0x63, 0x65, 0x73, 0x73, 0x4d,
	0x61, 0x6e, 0x61, 0x67, 0x65, 0x6d, 0x65, 0x6e, 0x74, 0x12, 0x74, 0x0a, 0x11, 0x41, 0x64, 0x64,
	0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x12, 0x2e,
	0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64,
	0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x41, 0x64, 0x64, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73,
	0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x2f,
	0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64,
	0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x41, 0x64, 0x64, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73,
	0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x7d, 0x0a, 0x14, 0x52, 0x65, 0x6d, 0x6f, 0x76, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73,
	0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x12, 0x31, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63,
	0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x52,
	0x65, 0x6d, 0x6f, 0x76, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d,
	0x65, 0x6e, 0x74, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x32, 0x2e, 0x73, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x76,
	0x31, 0x2e, 0x52, 0x65, 0x6d, 0x6f, 0x76, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69,
	0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x7a,
	0x0a, 0x13, 0x4c, 0x69, 0x73, 0x74, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e,
	0x6d, 0x65, 0x6e, 0x74, 0x73, 0x12, 0x30, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73,
	0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x4c, 0x69, 0x73,
	0x74, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e, 0x74, 0x73,
	0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x31, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63,
	0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x4c,
	0x69, 0x73, 0x74, 0x52, 0x6f, 0x6c, 0x65, 0x41, 0x73, 0x73, 0x69, 0x67, 0x6e, 0x6d, 0x65, 0x6e,
	0x74, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x7f, 0x0a, 0x12, 0x4c, 0x69,
	0x73, 0x74, 0x41, 0x76, 0x61, 0x69, 0x6c, 0x61, 0x62, 0x6c, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x73,
	0x12, 0x2f, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x76,
	0x69, 0x64, 0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x76, 0x61, 0x69,
	0x6c, 0x61, 0x62, 0x6c, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x1a, 0x30, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x70, 0x72, 0x6f,
	0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x76, 0x31, 0x2e, 0x4c, 0x69, 0x73, 0x74, 0x41, 0x76, 0x61,
	0x69, 0x6c, 0x61, 0x62, 0x6c, 0x65, 0x52, 0x6f, 0x6c, 0x65, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x22, 0x06, 0x8a, 0xa6, 0x1d, 0x02, 0x10, 0x01, 0x42, 0x5e, 0x0a, 0x1c, 0x74,
	0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e,
	0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x76, 0x31, 0x50, 0x01, 0x5a, 0x1d, 0x73,
	0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72,
	0x2f, 0x76, 0x31, 0x2f, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0xaa, 0x02, 0x1c, 0x54,
	0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e,
	0x50, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x72, 0x2e, 0x56, 0x31, 0x62, 0x06, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x33,
}

var (
	file_services_provider_v1_access_management_proto_rawDescOnce sync.Once
	file_services_provider_v1_access_management_proto_rawDescData = file_services_provider_v1_access_management_proto_rawDesc
)

func file_services_provider_v1_access_management_proto_rawDescGZIP() []byte {
	file_services_provider_v1_access_management_proto_rawDescOnce.Do(func() {
		file_services_provider_v1_access_management_proto_rawDescData = protoimpl.X.CompressGZIP(file_services_provider_v1_access_management_proto_rawDescData)
	})
	return file_services_provider_v1_access_management_proto_rawDescData
}

var file_services_provider_v1_access_management_proto_msgTypes = make([]protoimpl.MessageInfo, 8)
var file_services_provider_v1_access_management_proto_goTypes = []interface{}{
	(*AddRoleAssignmentRequest)(nil),     // 0: services.provider.v1.AddRoleAssignmentRequest
	(*AddRoleAssignmentResponse)(nil),    // 1: services.provider.v1.AddRoleAssignmentResponse
	(*RemoveRoleAssignmentRequest)(nil),  // 2: services.provider.v1.RemoveRoleAssignmentRequest
	(*RemoveRoleAssignmentResponse)(nil), // 3: services.provider.v1.RemoveRoleAssignmentResponse
	(*ListRoleAssignmentsRequest)(nil),   // 4: services.provider.v1.ListRoleAssignmentsRequest
	(*ListRoleAssignmentsResponse)(nil),  // 5: services.provider.v1.ListRoleAssignmentsResponse
	(*ListAvailableRolesRequest)(nil),    // 6: services.provider.v1.ListAvailableRolesRequest
	(*ListAvailableRolesResponse)(nil),   // 7: services.provider.v1.ListAvailableRolesResponse
}
var file_services_provider_v1_access_management_proto_depIdxs = []int32{
	0, // 0: services.provider.v1.AccessManagement.AddRoleAssignment:input_type -> services.provider.v1.AddRoleAssignmentRequest
	2, // 1: services.provider.v1.AccessManagement.RemoveRoleAssignment:input_type -> services.provider.v1.RemoveRoleAssignmentRequest
	4, // 2: services.provider.v1.AccessManagement.ListRoleAssignments:input_type -> services.provider.v1.ListRoleAssignmentsRequest
	6, // 3: services.provider.v1.AccessManagement.ListAvailableRoles:input_type -> services.provider.v1.ListAvailableRolesRequest
	1, // 4: services.provider.v1.AccessManagement.AddRoleAssignment:output_type -> services.provider.v1.AddRoleAssignmentResponse
	3, // 5: services.provider.v1.AccessManagement.RemoveRoleAssignment:output_type -> services.provider.v1.RemoveRoleAssignmentResponse
	5, // 6: services.provider.v1.AccessManagement.ListRoleAssignments:output_type -> services.provider.v1.ListRoleAssignmentsResponse
	7, // 7: services.provider.v1.AccessManagement.ListAvailableRoles:output_type -> services.provider.v1.ListAvailableRolesResponse
	4, // [4:8] is the sub-list for method output_type
	0, // [0:4] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_services_provider_v1_access_management_proto_init() }
func file_services_provider_v1_access_management_proto_init() {
	if File_services_provider_v1_access_management_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_services_provider_v1_access_management_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AddRoleAssignmentRequest); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AddRoleAssignmentResponse); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RemoveRoleAssignmentRequest); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RemoveRoleAssignmentResponse); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListRoleAssignmentsRequest); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListRoleAssignmentsResponse); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListAvailableRolesRequest); i {
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
		file_services_provider_v1_access_management_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListAvailableRolesResponse); i {
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
	file_services_provider_v1_access_management_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*AddRoleAssignmentRequest_Email)(nil),
		(*AddRoleAssignmentRequest_WalletId)(nil),
	}
	file_services_provider_v1_access_management_proto_msgTypes[2].OneofWrappers = []interface{}{
		(*RemoveRoleAssignmentRequest_Email)(nil),
		(*RemoveRoleAssignmentRequest_WalletId)(nil),
	}
	file_services_provider_v1_access_management_proto_msgTypes[4].OneofWrappers = []interface{}{
		(*ListRoleAssignmentsRequest_Email)(nil),
		(*ListRoleAssignmentsRequest_WalletId)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_services_provider_v1_access_management_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   8,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_services_provider_v1_access_management_proto_goTypes,
		DependencyIndexes: file_services_provider_v1_access_management_proto_depIdxs,
		MessageInfos:      file_services_provider_v1_access_management_proto_msgTypes,
	}.Build()
	File_services_provider_v1_access_management_proto = out.File
	file_services_provider_v1_access_management_proto_rawDesc = nil
	file_services_provider_v1_access_management_proto_goTypes = nil
	file_services_provider_v1_access_management_proto_depIdxs = nil
}
