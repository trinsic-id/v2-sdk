// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.15.7
// source: okapi/proofs/v1/proofs.proto

package okapiproto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	structpb "google.golang.org/protobuf/types/known/structpb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type LdSuite int32

const (
	LdSuite_LD_SUITE_UNSPECIFIED             LdSuite = 0
	LdSuite_LD_SUITE_JCSED25519SIGNATURE2020 LdSuite = 1
)

// Enum value maps for LdSuite.
var (
	LdSuite_name = map[int32]string{
		0: "LD_SUITE_UNSPECIFIED",
		1: "LD_SUITE_JCSED25519SIGNATURE2020",
	}
	LdSuite_value = map[string]int32{
		"LD_SUITE_UNSPECIFIED":             0,
		"LD_SUITE_JCSED25519SIGNATURE2020": 1,
	}
)

func (x LdSuite) Enum() *LdSuite {
	p := new(LdSuite)
	*p = x
	return p
}

func (x LdSuite) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (LdSuite) Descriptor() protoreflect.EnumDescriptor {
	return file_okapi_proofs_v1_proofs_proto_enumTypes[0].Descriptor()
}

func (LdSuite) Type() protoreflect.EnumType {
	return &file_okapi_proofs_v1_proofs_proto_enumTypes[0]
}

func (x LdSuite) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use LdSuite.Descriptor instead.
func (LdSuite) EnumDescriptor() ([]byte, []int) {
	return file_okapi_proofs_v1_proofs_proto_rawDescGZIP(), []int{0}
}

type CreateProofRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// The input JSON document that will be used
	// to create the LD Proof. This document must
	// also contain a "proof" object, with the desired
	// values filled in.
	Document *structpb.Struct `protobuf:"bytes,1,opt,name=document,proto3" json:"document,omitempty"`
	// The signer of the proof. This field must include
	// the 'kid' in full URI format.
	// Example:
	//  did:example:alice#key-1
	Key *JsonWebKey `protobuf:"bytes,3,opt,name=key,proto3" json:"key,omitempty"`
	// The LD Suite to use to produce this proof
	Suite LdSuite `protobuf:"varint,4,opt,name=suite,proto3,enum=okapi.proofs.v1.LdSuite" json:"suite,omitempty"`
}

func (x *CreateProofRequest) Reset() {
	*x = CreateProofRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateProofRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateProofRequest) ProtoMessage() {}

func (x *CreateProofRequest) ProtoReflect() protoreflect.Message {
	mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateProofRequest.ProtoReflect.Descriptor instead.
func (*CreateProofRequest) Descriptor() ([]byte, []int) {
	return file_okapi_proofs_v1_proofs_proto_rawDescGZIP(), []int{0}
}

func (x *CreateProofRequest) GetDocument() *structpb.Struct {
	if x != nil {
		return x.Document
	}
	return nil
}

func (x *CreateProofRequest) GetKey() *JsonWebKey {
	if x != nil {
		return x.Key
	}
	return nil
}

func (x *CreateProofRequest) GetSuite() LdSuite {
	if x != nil {
		return x.Suite
	}
	return LdSuite_LD_SUITE_UNSPECIFIED
}

type CreateProofResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	SignedDocument *structpb.Struct `protobuf:"bytes,1,opt,name=signed_document,json=signedDocument,proto3" json:"signed_document,omitempty"`
}

func (x *CreateProofResponse) Reset() {
	*x = CreateProofResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateProofResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateProofResponse) ProtoMessage() {}

func (x *CreateProofResponse) ProtoReflect() protoreflect.Message {
	mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateProofResponse.ProtoReflect.Descriptor instead.
func (*CreateProofResponse) Descriptor() ([]byte, []int) {
	return file_okapi_proofs_v1_proofs_proto_rawDescGZIP(), []int{1}
}

func (x *CreateProofResponse) GetSignedDocument() *structpb.Struct {
	if x != nil {
		return x.SignedDocument
	}
	return nil
}

type VerifyProofRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *VerifyProofRequest) Reset() {
	*x = VerifyProofRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VerifyProofRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VerifyProofRequest) ProtoMessage() {}

func (x *VerifyProofRequest) ProtoReflect() protoreflect.Message {
	mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VerifyProofRequest.ProtoReflect.Descriptor instead.
func (*VerifyProofRequest) Descriptor() ([]byte, []int) {
	return file_okapi_proofs_v1_proofs_proto_rawDescGZIP(), []int{2}
}

type VerifyProofResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *VerifyProofResponse) Reset() {
	*x = VerifyProofResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *VerifyProofResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*VerifyProofResponse) ProtoMessage() {}

func (x *VerifyProofResponse) ProtoReflect() protoreflect.Message {
	mi := &file_okapi_proofs_v1_proofs_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use VerifyProofResponse.ProtoReflect.Descriptor instead.
func (*VerifyProofResponse) Descriptor() ([]byte, []int) {
	return file_okapi_proofs_v1_proofs_proto_rawDescGZIP(), []int{3}
}

var File_okapi_proofs_v1_proofs_proto protoreflect.FileDescriptor

var file_okapi_proofs_v1_proofs_proto_rawDesc = []byte{
	0x0a, 0x1c, 0x6f, 0x6b, 0x61, 0x70, 0x69, 0x2f, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x73, 0x2f, 0x76,
	0x31, 0x2f, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0f,
	0x6f, 0x6b, 0x61, 0x70, 0x69, 0x2e, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x73, 0x2e, 0x76, 0x31, 0x1a,
	0x18, 0x6f, 0x6b, 0x61, 0x70, 0x69, 0x2f, 0x6b, 0x65, 0x79, 0x73, 0x2f, 0x76, 0x31, 0x2f, 0x6b,
	0x65, 0x79, 0x73, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1c, 0x67, 0x6f, 0x6f, 0x67, 0x6c,
	0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x73, 0x74, 0x72, 0x75, 0x63,
	0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xa6, 0x01, 0x0a, 0x12, 0x43, 0x72, 0x65, 0x61,
	0x74, 0x65, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x33,
	0x0a, 0x08, 0x64, 0x6f, 0x63, 0x75, 0x6d, 0x65, 0x6e, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x17, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62,
	0x75, 0x66, 0x2e, 0x53, 0x74, 0x72, 0x75, 0x63, 0x74, 0x52, 0x08, 0x64, 0x6f, 0x63, 0x75, 0x6d,
	0x65, 0x6e, 0x74, 0x12, 0x2b, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x19, 0x2e, 0x6f, 0x6b, 0x61, 0x70, 0x69, 0x2e, 0x6b, 0x65, 0x79, 0x73, 0x2e, 0x76, 0x31,
	0x2e, 0x4a, 0x73, 0x6f, 0x6e, 0x57, 0x65, 0x62, 0x4b, 0x65, 0x79, 0x52, 0x03, 0x6b, 0x65, 0x79,
	0x12, 0x2e, 0x0a, 0x05, 0x73, 0x75, 0x69, 0x74, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x0e, 0x32,
	0x18, 0x2e, 0x6f, 0x6b, 0x61, 0x70, 0x69, 0x2e, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x73, 0x2e, 0x76,
	0x31, 0x2e, 0x4c, 0x64, 0x53, 0x75, 0x69, 0x74, 0x65, 0x52, 0x05, 0x73, 0x75, 0x69, 0x74, 0x65,
	0x22, 0x57, 0x0a, 0x13, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x52,
	0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x40, 0x0a, 0x0f, 0x73, 0x69, 0x67, 0x6e, 0x65,
	0x64, 0x5f, 0x64, 0x6f, 0x63, 0x75, 0x6d, 0x65, 0x6e, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x17, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62,
	0x75, 0x66, 0x2e, 0x53, 0x74, 0x72, 0x75, 0x63, 0x74, 0x52, 0x0e, 0x73, 0x69, 0x67, 0x6e, 0x65,
	0x64, 0x44, 0x6f, 0x63, 0x75, 0x6d, 0x65, 0x6e, 0x74, 0x22, 0x14, 0x0a, 0x12, 0x56, 0x65, 0x72,
	0x69, 0x66, 0x79, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x22,
	0x15, 0x0a, 0x13, 0x56, 0x65, 0x72, 0x69, 0x66, 0x79, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x52, 0x65,
	0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x2a, 0x49, 0x0a, 0x07, 0x4c, 0x64, 0x53, 0x75, 0x69, 0x74,
	0x65, 0x12, 0x18, 0x0a, 0x14, 0x4c, 0x44, 0x5f, 0x53, 0x55, 0x49, 0x54, 0x45, 0x5f, 0x55, 0x4e,
	0x53, 0x50, 0x45, 0x43, 0x49, 0x46, 0x49, 0x45, 0x44, 0x10, 0x00, 0x12, 0x24, 0x0a, 0x20, 0x4c,
	0x44, 0x5f, 0x53, 0x55, 0x49, 0x54, 0x45, 0x5f, 0x4a, 0x43, 0x53, 0x45, 0x44, 0x32, 0x35, 0x35,
	0x31, 0x39, 0x53, 0x49, 0x47, 0x4e, 0x41, 0x54, 0x55, 0x52, 0x45, 0x32, 0x30, 0x32, 0x30, 0x10,
	0x01, 0x42, 0x4d, 0x0a, 0x17, 0x74, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x6f, 0x6b, 0x61,
	0x70, 0x69, 0x2e, 0x70, 0x72, 0x6f, 0x6f, 0x66, 0x73, 0x2e, 0x76, 0x31, 0x5a, 0x20, 0x67, 0x69,
	0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x74, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63,
	0x2d, 0x69, 0x64, 0x2f, 0x6f, 0x6b, 0x61, 0x70, 0x69, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0xaa, 0x02,
	0x0f, 0x4f, 0x6b, 0x61, 0x70, 0x69, 0x2e, 0x50, 0x72, 0x6f, 0x6f, 0x66, 0x73, 0x2e, 0x56, 0x31,
	0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_okapi_proofs_v1_proofs_proto_rawDescOnce sync.Once
	file_okapi_proofs_v1_proofs_proto_rawDescData = file_okapi_proofs_v1_proofs_proto_rawDesc
)

func file_okapi_proofs_v1_proofs_proto_rawDescGZIP() []byte {
	file_okapi_proofs_v1_proofs_proto_rawDescOnce.Do(func() {
		file_okapi_proofs_v1_proofs_proto_rawDescData = protoimpl.X.CompressGZIP(file_okapi_proofs_v1_proofs_proto_rawDescData)
	})
	return file_okapi_proofs_v1_proofs_proto_rawDescData
}

var file_okapi_proofs_v1_proofs_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_okapi_proofs_v1_proofs_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_okapi_proofs_v1_proofs_proto_goTypes = []interface{}{
	(LdSuite)(0),                // 0: okapi.proofs.v1.LdSuite
	(*CreateProofRequest)(nil),  // 1: okapi.proofs.v1.CreateProofRequest
	(*CreateProofResponse)(nil), // 2: okapi.proofs.v1.CreateProofResponse
	(*VerifyProofRequest)(nil),  // 3: okapi.proofs.v1.VerifyProofRequest
	(*VerifyProofResponse)(nil), // 4: okapi.proofs.v1.VerifyProofResponse
	(*structpb.Struct)(nil),     // 5: google.protobuf.Struct
	(*JsonWebKey)(nil),          // 6: okapi.keys.v1.JsonWebKey
}
var file_okapi_proofs_v1_proofs_proto_depIdxs = []int32{
	5, // 0: okapi.proofs.v1.CreateProofRequest.document:type_name -> google.protobuf.Struct
	6, // 1: okapi.proofs.v1.CreateProofRequest.key:type_name -> okapi.keys.v1.JsonWebKey
	0, // 2: okapi.proofs.v1.CreateProofRequest.suite:type_name -> okapi.proofs.v1.LdSuite
	5, // 3: okapi.proofs.v1.CreateProofResponse.signed_document:type_name -> google.protobuf.Struct
	4, // [4:4] is the sub-list for method output_type
	4, // [4:4] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_okapi_proofs_v1_proofs_proto_init() }
func file_okapi_proofs_v1_proofs_proto_init() {
	if File_okapi_proofs_v1_proofs_proto != nil {
		return
	}
	file_okapi_keys_v1_keys_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_okapi_proofs_v1_proofs_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateProofRequest); i {
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
		file_okapi_proofs_v1_proofs_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateProofResponse); i {
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
		file_okapi_proofs_v1_proofs_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VerifyProofRequest); i {
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
		file_okapi_proofs_v1_proofs_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*VerifyProofResponse); i {
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
			RawDescriptor: file_okapi_proofs_v1_proofs_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_okapi_proofs_v1_proofs_proto_goTypes,
		DependencyIndexes: file_okapi_proofs_v1_proofs_proto_depIdxs,
		EnumInfos:         file_okapi_proofs_v1_proofs_proto_enumTypes,
		MessageInfos:      file_okapi_proofs_v1_proofs_proto_msgTypes,
	}.Build()
	File_okapi_proofs_v1_proofs_proto = out.File
	file_okapi_proofs_v1_proofs_proto_rawDesc = nil
	file_okapi_proofs_v1_proofs_proto_goTypes = nil
	file_okapi_proofs_v1_proofs_proto_depIdxs = nil
}
