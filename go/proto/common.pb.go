// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.27.1
// 	protoc        v3.19.1
// source: services/common/v1/common.proto

package sdk

import (
okapiproto "github.com/trinsic-id/okapi/go/okapiproto"
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

type ResponseStatus int32

const (
	ResponseStatus_SUCCESS              ResponseStatus = 0
	ResponseStatus_WALLET_ACCESS_DENIED ResponseStatus = 10
	ResponseStatus_WALLET_EXISTS        ResponseStatus = 11
	ResponseStatus_ITEM_NOT_FOUND       ResponseStatus = 20
	ResponseStatus_SERIALIZATION_ERROR  ResponseStatus = 200
	ResponseStatus_UNKNOWN_ERROR        ResponseStatus = 100
)

// Enum value maps for ResponseStatus.
var (
	ResponseStatus_name = map[int32]string{
		0:   "SUCCESS",
		10:  "WALLET_ACCESS_DENIED",
		11:  "WALLET_EXISTS",
		20:  "ITEM_NOT_FOUND",
		200: "SERIALIZATION_ERROR",
		100: "UNKNOWN_ERROR",
	}
	ResponseStatus_value = map[string]int32{
		"SUCCESS":              0,
		"WALLET_ACCESS_DENIED": 10,
		"WALLET_EXISTS":        11,
		"ITEM_NOT_FOUND":       20,
		"SERIALIZATION_ERROR":  200,
		"UNKNOWN_ERROR":        100,
	}
)

func (x ResponseStatus) Enum() *ResponseStatus {
	p := new(ResponseStatus)
	*p = x
	return p
}

func (x ResponseStatus) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (ResponseStatus) Descriptor() protoreflect.EnumDescriptor {
	return file_services_common_v1_common_proto_enumTypes[0].Descriptor()
}

func (ResponseStatus) Type() protoreflect.EnumType {
	return &file_services_common_v1_common_proto_enumTypes[0]
}

func (x ResponseStatus) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use ResponseStatus.Descriptor instead.
func (ResponseStatus) EnumDescriptor() ([]byte, []int) {
	return file_services_common_v1_common_proto_rawDescGZIP(), []int{0}
}

type ServerConfig struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// service endpoint
	Endpoint string `protobuf:"bytes,1,opt,name=endpoint,proto3" json:"endpoint,omitempty"`
	// service port
	Port int32 `protobuf:"varint,2,opt,name=port,proto3" json:"port,omitempty"`
	// indicates if tls is used
	UseTls bool `protobuf:"varint,3,opt,name=use_tls,json=useTls,proto3" json:"use_tls,omitempty"`
}

func (x *ServerConfig) Reset() {
	*x = ServerConfig{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_common_v1_common_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ServerConfig) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ServerConfig) ProtoMessage() {}

func (x *ServerConfig) ProtoReflect() protoreflect.Message {
	mi := &file_services_common_v1_common_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ServerConfig.ProtoReflect.Descriptor instead.
func (*ServerConfig) Descriptor() ([]byte, []int) {
	return file_services_common_v1_common_proto_rawDescGZIP(), []int{0}
}

func (x *ServerConfig) GetEndpoint() string {
	if x != nil {
		return x.Endpoint
	}
	return ""
}

func (x *ServerConfig) GetPort() int32 {
	if x != nil {
		return x.Port
	}
	return 0
}

func (x *ServerConfig) GetUseTls() bool {
	if x != nil {
		return x.UseTls
	}
	return false
}

// Nonce used to generate an oberon proof
type Nonce struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Timestamp   int64  `protobuf:"varint,1,opt,name=timestamp,proto3" json:"timestamp,omitempty"`                       // UTC unix millisecond timestamp the request was made
	RequestHash []byte `protobuf:"bytes,2,opt,name=request_hash,json=requestHash,proto3" json:"request_hash,omitempty"` // blake3256 hash of the request body
}

func (x *Nonce) Reset() {
	*x = Nonce{}
	if protoimpl.UnsafeEnabled {
		mi := &file_services_common_v1_common_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Nonce) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Nonce) ProtoMessage() {}

func (x *Nonce) ProtoReflect() protoreflect.Message {
	mi := &file_services_common_v1_common_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Nonce.ProtoReflect.Descriptor instead.
func (*Nonce) Descriptor() ([]byte, []int) {
	return file_services_common_v1_common_proto_rawDescGZIP(), []int{1}
}

func (x *Nonce) GetTimestamp() int64 {
	if x != nil {
		return x.Timestamp
	}
	return 0
}

func (x *Nonce) GetRequestHash() []byte {
	if x != nil {
		return x.RequestHash
	}
	return nil
}

var File_services_common_v1_common_proto protoreflect.FileDescriptor

var file_services_common_v1_common_proto_rawDesc = []byte{
	0x0a, 0x1f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x6f,
	0x6e, 0x2f, 0x76, 0x31, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x12, 0x12, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x63, 0x6f, 0x6d, 0x6d,
	0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x1a, 0x14, 0x70, 0x62, 0x6d, 0x73, 0x65, 0x2f, 0x76, 0x31, 0x2f,
	0x70, 0x62, 0x6d, 0x73, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x57, 0x0a, 0x0c, 0x53,
	0x65, 0x72, 0x76, 0x65, 0x72, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x12, 0x1a, 0x0a, 0x08, 0x65,
	0x6e, 0x64, 0x70, 0x6f, 0x69, 0x6e, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x65,
	0x6e, 0x64, 0x70, 0x6f, 0x69, 0x6e, 0x74, 0x12, 0x12, 0x0a, 0x04, 0x70, 0x6f, 0x72, 0x74, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x04, 0x70, 0x6f, 0x72, 0x74, 0x12, 0x17, 0x0a, 0x07, 0x75,
	0x73, 0x65, 0x5f, 0x74, 0x6c, 0x73, 0x18, 0x03, 0x20, 0x01, 0x28, 0x08, 0x52, 0x06, 0x75, 0x73,
	0x65, 0x54, 0x6c, 0x73, 0x22, 0x48, 0x0a, 0x05, 0x4e, 0x6f, 0x6e, 0x63, 0x65, 0x12, 0x1c, 0x0a,
	0x09, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03,
	0x52, 0x09, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x12, 0x21, 0x0a, 0x0c, 0x72,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x5f, 0x68, 0x61, 0x73, 0x68, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x0c, 0x52, 0x0b, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x48, 0x61, 0x73, 0x68, 0x2a, 0x8b,
	0x01, 0x0a, 0x0e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x53, 0x74, 0x61, 0x74, 0x75,
	0x73, 0x12, 0x0b, 0x0a, 0x07, 0x53, 0x55, 0x43, 0x43, 0x45, 0x53, 0x53, 0x10, 0x00, 0x12, 0x18,
	0x0a, 0x14, 0x57, 0x41, 0x4c, 0x4c, 0x45, 0x54, 0x5f, 0x41, 0x43, 0x43, 0x45, 0x53, 0x53, 0x5f,
	0x44, 0x45, 0x4e, 0x49, 0x45, 0x44, 0x10, 0x0a, 0x12, 0x11, 0x0a, 0x0d, 0x57, 0x41, 0x4c, 0x4c,
	0x45, 0x54, 0x5f, 0x45, 0x58, 0x49, 0x53, 0x54, 0x53, 0x10, 0x0b, 0x12, 0x12, 0x0a, 0x0e, 0x49,
	0x54, 0x45, 0x4d, 0x5f, 0x4e, 0x4f, 0x54, 0x5f, 0x46, 0x4f, 0x55, 0x4e, 0x44, 0x10, 0x14, 0x12,
	0x18, 0x0a, 0x13, 0x53, 0x45, 0x52, 0x49, 0x41, 0x4c, 0x49, 0x5a, 0x41, 0x54, 0x49, 0x4f, 0x4e,
	0x5f, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x10, 0xc8, 0x01, 0x12, 0x11, 0x0a, 0x0d, 0x55, 0x4e, 0x4b,
	0x4e, 0x4f, 0x57, 0x4e, 0x5f, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x10, 0x64, 0x32, 0x4b, 0x0a, 0x06,
	0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x12, 0x41, 0x0a, 0x07, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x1a, 0x2e, 0x70, 0x62, 0x6d, 0x73, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x45, 0x6e, 0x63,
	0x72, 0x79, 0x70, 0x74, 0x65, 0x64, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x1a, 0x1a, 0x2e,
	0x70, 0x62, 0x6d, 0x73, 0x65, 0x2e, 0x76, 0x31, 0x2e, 0x45, 0x6e, 0x63, 0x72, 0x79, 0x70, 0x74,
	0x65, 0x64, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x42, 0x54, 0x0a, 0x1a, 0x74, 0x72, 0x69,
	0x6e, 0x73, 0x69, 0x63, 0x2e, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x63, 0x6f,
	0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x76, 0x31, 0x5a, 0x19, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e,
	0x63, 0x6f, 0x6d, 0x2f, 0x74, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2d, 0x69, 0x64, 0x2f, 0x73,
	0x64, 0x6b, 0xaa, 0x02, 0x1a, 0x54, 0x72, 0x69, 0x6e, 0x73, 0x69, 0x63, 0x2e, 0x53, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x73, 0x2e, 0x43, 0x6f, 0x6d, 0x6d, 0x6f, 0x6e, 0x2e, 0x56, 0x31, 0x62,
	0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_services_common_v1_common_proto_rawDescOnce sync.Once
	file_services_common_v1_common_proto_rawDescData = file_services_common_v1_common_proto_rawDesc
)

func file_services_common_v1_common_proto_rawDescGZIP() []byte {
	file_services_common_v1_common_proto_rawDescOnce.Do(func() {
		file_services_common_v1_common_proto_rawDescData = protoimpl.X.CompressGZIP(file_services_common_v1_common_proto_rawDescData)
	})
	return file_services_common_v1_common_proto_rawDescData
}

var file_services_common_v1_common_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_services_common_v1_common_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_services_common_v1_common_proto_goTypes = []interface{}{
	(ResponseStatus)(0),                 // 0: services.common.v1.ResponseStatus
	(*ServerConfig)(nil),                // 1: services.common.v1.ServerConfig
	(*Nonce)(nil),                       // 2: services.common.v1.Nonce
	(*okapiproto.EncryptedMessage)(nil), // 3: pbmse.v1.EncryptedMessage
}
var file_services_common_v1_common_proto_depIdxs = []int32{
	3, // 0: services.common.v1.Common.Request:input_type -> pbmse.v1.EncryptedMessage
	3, // 1: services.common.v1.Common.Request:output_type -> pbmse.v1.EncryptedMessage
	1, // [1:2] is the sub-list for method output_type
	0, // [0:1] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_services_common_v1_common_proto_init() }
func file_services_common_v1_common_proto_init() {
	if File_services_common_v1_common_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_services_common_v1_common_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ServerConfig); i {
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
		file_services_common_v1_common_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Nonce); i {
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
			RawDescriptor: file_services_common_v1_common_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_services_common_v1_common_proto_goTypes,
		DependencyIndexes: file_services_common_v1_common_proto_depIdxs,
		EnumInfos:         file_services_common_v1_common_proto_enumTypes,
		MessageInfos:      file_services_common_v1_common_proto_msgTypes,
	}.Build()
	File_services_common_v1_common_proto = out.File
	file_services_common_v1_common_proto_rawDesc = nil
	file_services_common_v1_common_proto_goTypes = nil
	file_services_common_v1_common_proto_depIdxs = nil
}
