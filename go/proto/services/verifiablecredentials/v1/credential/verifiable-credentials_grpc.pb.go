// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             v3.20.3
// source: services/verifiable-credentials/v1/verifiable-credentials.proto

package credential

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	VerifiableCredential_Issue_FullMethodName             = "/services.verifiablecredentials.v1.VerifiableCredential/Issue"
	VerifiableCredential_IssueFromTemplate_FullMethodName = "/services.verifiablecredentials.v1.VerifiableCredential/IssueFromTemplate"
	VerifiableCredential_CheckStatus_FullMethodName       = "/services.verifiablecredentials.v1.VerifiableCredential/CheckStatus"
	VerifiableCredential_UpdateStatus_FullMethodName      = "/services.verifiablecredentials.v1.VerifiableCredential/UpdateStatus"
	VerifiableCredential_CreateProof_FullMethodName       = "/services.verifiablecredentials.v1.VerifiableCredential/CreateProof"
	VerifiableCredential_VerifyProof_FullMethodName       = "/services.verifiablecredentials.v1.VerifiableCredential/VerifyProof"
	VerifiableCredential_Send_FullMethodName              = "/services.verifiablecredentials.v1.VerifiableCredential/Send"
)

// VerifiableCredentialClient is the client API for VerifiableCredential service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type VerifiableCredentialClient interface {
	// Sign and issue a verifiable credential from a submitted document.
	// The document must be a valid JSON-LD document.
	// DEPRECATED, will be removed June 1st 2023
	Issue(ctx context.Context, in *IssueRequest, opts ...grpc.CallOption) (*IssueResponse, error)
	// Sign and issue a verifiable credential from a pre-defined template.
	// This process will also add schema validation and
	// revocation registry values to the credential.
	IssueFromTemplate(ctx context.Context, in *IssueFromTemplateRequest, opts ...grpc.CallOption) (*IssueFromTemplateResponse, error)
	// Check credential status in the revocation registry
	CheckStatus(ctx context.Context, in *CheckStatusRequest, opts ...grpc.CallOption) (*CheckStatusResponse, error)
	// Update credential status by setting the revocation value
	UpdateStatus(ctx context.Context, in *UpdateStatusRequest, opts ...grpc.CallOption) (*UpdateStatusResponse, error)
	// Create a proof from a signed document that is a valid
	// verifiable credential and contains a signature from which a proof can be derived.
	CreateProof(ctx context.Context, in *CreateProofRequest, opts ...grpc.CallOption) (*CreateProofResponse, error)
	// Verifies a proof by checking the signature value, and if possible schema validation,
	// revocation status, and issuer status against a trust registry
	VerifyProof(ctx context.Context, in *VerifyProofRequest, opts ...grpc.CallOption) (*VerifyProofResponse, error)
	// Sends a document directly to a user's email within the given ecosystem
	Send(ctx context.Context, in *SendRequest, opts ...grpc.CallOption) (*SendResponse, error)
}

type verifiableCredentialClient struct {
	cc grpc.ClientConnInterface
}

func NewVerifiableCredentialClient(cc grpc.ClientConnInterface) VerifiableCredentialClient {
	return &verifiableCredentialClient{cc}
}

func (c *verifiableCredentialClient) Issue(ctx context.Context, in *IssueRequest, opts ...grpc.CallOption) (*IssueResponse, error) {
	out := new(IssueResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_Issue_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *verifiableCredentialClient) IssueFromTemplate(ctx context.Context, in *IssueFromTemplateRequest, opts ...grpc.CallOption) (*IssueFromTemplateResponse, error) {
	out := new(IssueFromTemplateResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_IssueFromTemplate_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *verifiableCredentialClient) CheckStatus(ctx context.Context, in *CheckStatusRequest, opts ...grpc.CallOption) (*CheckStatusResponse, error) {
	out := new(CheckStatusResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_CheckStatus_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *verifiableCredentialClient) UpdateStatus(ctx context.Context, in *UpdateStatusRequest, opts ...grpc.CallOption) (*UpdateStatusResponse, error) {
	out := new(UpdateStatusResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_UpdateStatus_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *verifiableCredentialClient) CreateProof(ctx context.Context, in *CreateProofRequest, opts ...grpc.CallOption) (*CreateProofResponse, error) {
	out := new(CreateProofResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_CreateProof_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *verifiableCredentialClient) VerifyProof(ctx context.Context, in *VerifyProofRequest, opts ...grpc.CallOption) (*VerifyProofResponse, error) {
	out := new(VerifyProofResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_VerifyProof_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *verifiableCredentialClient) Send(ctx context.Context, in *SendRequest, opts ...grpc.CallOption) (*SendResponse, error) {
	out := new(SendResponse)
	err := c.cc.Invoke(ctx, VerifiableCredential_Send_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// VerifiableCredentialServer is the server API for VerifiableCredential service.
// All implementations must embed UnimplementedVerifiableCredentialServer
// for forward compatibility
type VerifiableCredentialServer interface {
	// Sign and issue a verifiable credential from a submitted document.
	// The document must be a valid JSON-LD document.
	// DEPRECATED, will be removed June 1st 2023
	Issue(context.Context, *IssueRequest) (*IssueResponse, error)
	// Sign and issue a verifiable credential from a pre-defined template.
	// This process will also add schema validation and
	// revocation registry values to the credential.
	IssueFromTemplate(context.Context, *IssueFromTemplateRequest) (*IssueFromTemplateResponse, error)
	// Check credential status in the revocation registry
	CheckStatus(context.Context, *CheckStatusRequest) (*CheckStatusResponse, error)
	// Update credential status by setting the revocation value
	UpdateStatus(context.Context, *UpdateStatusRequest) (*UpdateStatusResponse, error)
	// Create a proof from a signed document that is a valid
	// verifiable credential and contains a signature from which a proof can be derived.
	CreateProof(context.Context, *CreateProofRequest) (*CreateProofResponse, error)
	// Verifies a proof by checking the signature value, and if possible schema validation,
	// revocation status, and issuer status against a trust registry
	VerifyProof(context.Context, *VerifyProofRequest) (*VerifyProofResponse, error)
	// Sends a document directly to a user's email within the given ecosystem
	Send(context.Context, *SendRequest) (*SendResponse, error)
	mustEmbedUnimplementedVerifiableCredentialServer()
}

// UnimplementedVerifiableCredentialServer must be embedded to have forward compatible implementations.
type UnimplementedVerifiableCredentialServer struct {
}

func (UnimplementedVerifiableCredentialServer) Issue(context.Context, *IssueRequest) (*IssueResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Issue not implemented")
}
func (UnimplementedVerifiableCredentialServer) IssueFromTemplate(context.Context, *IssueFromTemplateRequest) (*IssueFromTemplateResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method IssueFromTemplate not implemented")
}
func (UnimplementedVerifiableCredentialServer) CheckStatus(context.Context, *CheckStatusRequest) (*CheckStatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CheckStatus not implemented")
}
func (UnimplementedVerifiableCredentialServer) UpdateStatus(context.Context, *UpdateStatusRequest) (*UpdateStatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateStatus not implemented")
}
func (UnimplementedVerifiableCredentialServer) CreateProof(context.Context, *CreateProofRequest) (*CreateProofResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateProof not implemented")
}
func (UnimplementedVerifiableCredentialServer) VerifyProof(context.Context, *VerifyProofRequest) (*VerifyProofResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method VerifyProof not implemented")
}
func (UnimplementedVerifiableCredentialServer) Send(context.Context, *SendRequest) (*SendResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Send not implemented")
}
func (UnimplementedVerifiableCredentialServer) mustEmbedUnimplementedVerifiableCredentialServer() {}

// UnsafeVerifiableCredentialServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to VerifiableCredentialServer will
// result in compilation errors.
type UnsafeVerifiableCredentialServer interface {
	mustEmbedUnimplementedVerifiableCredentialServer()
}

func RegisterVerifiableCredentialServer(s grpc.ServiceRegistrar, srv VerifiableCredentialServer) {
	s.RegisterService(&VerifiableCredential_ServiceDesc, srv)
}

func _VerifiableCredential_Issue_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(IssueRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).Issue(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_Issue_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).Issue(ctx, req.(*IssueRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _VerifiableCredential_IssueFromTemplate_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(IssueFromTemplateRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).IssueFromTemplate(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_IssueFromTemplate_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).IssueFromTemplate(ctx, req.(*IssueFromTemplateRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _VerifiableCredential_CheckStatus_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CheckStatusRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).CheckStatus(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_CheckStatus_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).CheckStatus(ctx, req.(*CheckStatusRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _VerifiableCredential_UpdateStatus_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateStatusRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).UpdateStatus(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_UpdateStatus_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).UpdateStatus(ctx, req.(*UpdateStatusRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _VerifiableCredential_CreateProof_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateProofRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).CreateProof(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_CreateProof_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).CreateProof(ctx, req.(*CreateProofRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _VerifiableCredential_VerifyProof_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(VerifyProofRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).VerifyProof(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_VerifyProof_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).VerifyProof(ctx, req.(*VerifyProofRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _VerifiableCredential_Send_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SendRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(VerifiableCredentialServer).Send(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: VerifiableCredential_Send_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(VerifiableCredentialServer).Send(ctx, req.(*SendRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// VerifiableCredential_ServiceDesc is the grpc.ServiceDesc for VerifiableCredential service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var VerifiableCredential_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.verifiablecredentials.v1.VerifiableCredential",
	HandlerType: (*VerifiableCredentialServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Issue",
			Handler:    _VerifiableCredential_Issue_Handler,
		},
		{
			MethodName: "IssueFromTemplate",
			Handler:    _VerifiableCredential_IssueFromTemplate_Handler,
		},
		{
			MethodName: "CheckStatus",
			Handler:    _VerifiableCredential_CheckStatus_Handler,
		},
		{
			MethodName: "UpdateStatus",
			Handler:    _VerifiableCredential_UpdateStatus_Handler,
		},
		{
			MethodName: "CreateProof",
			Handler:    _VerifiableCredential_CreateProof_Handler,
		},
		{
			MethodName: "VerifyProof",
			Handler:    _VerifiableCredential_VerifyProof_Handler,
		},
		{
			MethodName: "Send",
			Handler:    _VerifiableCredential_Send_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/verifiable-credentials/v1/verifiable-credentials.proto",
}
