// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v3.20.1
// source: services/provider/v1/provider.proto

package provider

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

// ProviderClient is the client API for Provider service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type ProviderClient interface {
	// Create new ecosystem and assign the authenticated user as owner
	CreateEcosystem(ctx context.Context, in *CreateEcosystemRequest, opts ...grpc.CallOption) (*CreateEcosystemResponse, error)
	// Update an existing ecosystem
	UpdateEcosystem(ctx context.Context, in *UpdateEcosystemRequest, opts ...grpc.CallOption) (*UpdateEcosystemResponse, error)
	// Grant authorization to ecosystem resources
	GrantAuthorization(ctx context.Context, in *GrantAuthorizationRequest, opts ...grpc.CallOption) (*GrantAuthorizationResponse, error)
	// Revoke authorization to ecosystem resources
	RevokeAuthorization(ctx context.Context, in *RevokeAuthorizationRequest, opts ...grpc.CallOption) (*RevokeAuthorizationResponse, error)
	// Retreive the list of permissions for this particular account/ecosystem
	GetAuthorizations(ctx context.Context, in *GetAuthorizationsRequest, opts ...grpc.CallOption) (*GetAuthorizationsResponse, error)
	// Add a webhook endpoint to the ecosystem
	AddWebhook(ctx context.Context, in *AddWebhookRequest, opts ...grpc.CallOption) (*AddWebhookResponse, error)
	// Delete a webhook endpoint from the ecosystem
	DeleteWebhook(ctx context.Context, in *DeleteWebhookRequest, opts ...grpc.CallOption) (*DeleteWebhookResponse, error)
	// Get ecosystem information
	EcosystemInfo(ctx context.Context, in *EcosystemInfoRequest, opts ...grpc.CallOption) (*EcosystemInfoResponse, error)
	// Generates an unprotected authentication token that can be used to
	// configure server side applications
	GenerateToken(ctx context.Context, in *GenerateTokenRequest, opts ...grpc.CallOption) (*GenerateTokenResponse, error)
	// Invite a user to the ecosystem
	Invite(ctx context.Context, in *InviteRequest, opts ...grpc.CallOption) (*InviteResponse, error)
	// Check the invitation status
	InvitationStatus(ctx context.Context, in *InvitationStatusRequest, opts ...grpc.CallOption) (*InvitationStatusResponse, error)
	// Returns the public key being used to create/verify oberon tokens
	GetOberonKey(ctx context.Context, in *GetOberonKeyRequest, opts ...grpc.CallOption) (*GetOberonKeyResponse, error)
	// Generate a signed token (JWT) that can be used to connect to the message bus
	GetEventToken(ctx context.Context, in *GetEventTokenRequest, opts ...grpc.CallOption) (*GetEventTokenResponse, error)
}

type providerClient struct {
	cc grpc.ClientConnInterface
}

func NewProviderClient(cc grpc.ClientConnInterface) ProviderClient {
	return &providerClient{cc}
}

func (c *providerClient) CreateEcosystem(ctx context.Context, in *CreateEcosystemRequest, opts ...grpc.CallOption) (*CreateEcosystemResponse, error) {
	out := new(CreateEcosystemResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/CreateEcosystem", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) UpdateEcosystem(ctx context.Context, in *UpdateEcosystemRequest, opts ...grpc.CallOption) (*UpdateEcosystemResponse, error) {
	out := new(UpdateEcosystemResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/UpdateEcosystem", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) GrantAuthorization(ctx context.Context, in *GrantAuthorizationRequest, opts ...grpc.CallOption) (*GrantAuthorizationResponse, error) {
	out := new(GrantAuthorizationResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/GrantAuthorization", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) RevokeAuthorization(ctx context.Context, in *RevokeAuthorizationRequest, opts ...grpc.CallOption) (*RevokeAuthorizationResponse, error) {
	out := new(RevokeAuthorizationResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/RevokeAuthorization", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) GetAuthorizations(ctx context.Context, in *GetAuthorizationsRequest, opts ...grpc.CallOption) (*GetAuthorizationsResponse, error) {
	out := new(GetAuthorizationsResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/GetAuthorizations", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) AddWebhook(ctx context.Context, in *AddWebhookRequest, opts ...grpc.CallOption) (*AddWebhookResponse, error) {
	out := new(AddWebhookResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/AddWebhook", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) DeleteWebhook(ctx context.Context, in *DeleteWebhookRequest, opts ...grpc.CallOption) (*DeleteWebhookResponse, error) {
	out := new(DeleteWebhookResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/DeleteWebhook", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) EcosystemInfo(ctx context.Context, in *EcosystemInfoRequest, opts ...grpc.CallOption) (*EcosystemInfoResponse, error) {
	out := new(EcosystemInfoResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/EcosystemInfo", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) GenerateToken(ctx context.Context, in *GenerateTokenRequest, opts ...grpc.CallOption) (*GenerateTokenResponse, error) {
	out := new(GenerateTokenResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/GenerateToken", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) Invite(ctx context.Context, in *InviteRequest, opts ...grpc.CallOption) (*InviteResponse, error) {
	out := new(InviteResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/Invite", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) InvitationStatus(ctx context.Context, in *InvitationStatusRequest, opts ...grpc.CallOption) (*InvitationStatusResponse, error) {
	out := new(InvitationStatusResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/InvitationStatus", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) GetOberonKey(ctx context.Context, in *GetOberonKeyRequest, opts ...grpc.CallOption) (*GetOberonKeyResponse, error) {
	out := new(GetOberonKeyResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/GetOberonKey", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *providerClient) GetEventToken(ctx context.Context, in *GetEventTokenRequest, opts ...grpc.CallOption) (*GetEventTokenResponse, error) {
	out := new(GetEventTokenResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/GetEventToken", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// ProviderServer is the server API for Provider service.
// All implementations must embed UnimplementedProviderServer
// for forward compatibility
type ProviderServer interface {
	// Create new ecosystem and assign the authenticated user as owner
	CreateEcosystem(context.Context, *CreateEcosystemRequest) (*CreateEcosystemResponse, error)
	// Update an existing ecosystem
	UpdateEcosystem(context.Context, *UpdateEcosystemRequest) (*UpdateEcosystemResponse, error)
	// Grant authorization to ecosystem resources
	GrantAuthorization(context.Context, *GrantAuthorizationRequest) (*GrantAuthorizationResponse, error)
	// Revoke authorization to ecosystem resources
	RevokeAuthorization(context.Context, *RevokeAuthorizationRequest) (*RevokeAuthorizationResponse, error)
	// Retreive the list of permissions for this particular account/ecosystem
	GetAuthorizations(context.Context, *GetAuthorizationsRequest) (*GetAuthorizationsResponse, error)
	// Add a webhook endpoint to the ecosystem
	AddWebhook(context.Context, *AddWebhookRequest) (*AddWebhookResponse, error)
	// Delete a webhook endpoint from the ecosystem
	DeleteWebhook(context.Context, *DeleteWebhookRequest) (*DeleteWebhookResponse, error)
	// Get ecosystem information
	EcosystemInfo(context.Context, *EcosystemInfoRequest) (*EcosystemInfoResponse, error)
	// Generates an unprotected authentication token that can be used to
	// configure server side applications
	GenerateToken(context.Context, *GenerateTokenRequest) (*GenerateTokenResponse, error)
	// Invite a user to the ecosystem
	Invite(context.Context, *InviteRequest) (*InviteResponse, error)
	// Check the invitation status
	InvitationStatus(context.Context, *InvitationStatusRequest) (*InvitationStatusResponse, error)
	// Returns the public key being used to create/verify oberon tokens
	GetOberonKey(context.Context, *GetOberonKeyRequest) (*GetOberonKeyResponse, error)
	// Generate a signed token (JWT) that can be used to connect to the message bus
	GetEventToken(context.Context, *GetEventTokenRequest) (*GetEventTokenResponse, error)
	mustEmbedUnimplementedProviderServer()
}

// UnimplementedProviderServer must be embedded to have forward compatible implementations.
type UnimplementedProviderServer struct {
}

func (UnimplementedProviderServer) CreateEcosystem(context.Context, *CreateEcosystemRequest) (*CreateEcosystemResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateEcosystem not implemented")
}
func (UnimplementedProviderServer) UpdateEcosystem(context.Context, *UpdateEcosystemRequest) (*UpdateEcosystemResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateEcosystem not implemented")
}
func (UnimplementedProviderServer) GrantAuthorization(context.Context, *GrantAuthorizationRequest) (*GrantAuthorizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GrantAuthorization not implemented")
}
func (UnimplementedProviderServer) RevokeAuthorization(context.Context, *RevokeAuthorizationRequest) (*RevokeAuthorizationResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RevokeAuthorization not implemented")
}
func (UnimplementedProviderServer) GetAuthorizations(context.Context, *GetAuthorizationsRequest) (*GetAuthorizationsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetAuthorizations not implemented")
}
func (UnimplementedProviderServer) AddWebhook(context.Context, *AddWebhookRequest) (*AddWebhookResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AddWebhook not implemented")
}
func (UnimplementedProviderServer) DeleteWebhook(context.Context, *DeleteWebhookRequest) (*DeleteWebhookResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteWebhook not implemented")
}
func (UnimplementedProviderServer) EcosystemInfo(context.Context, *EcosystemInfoRequest) (*EcosystemInfoResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method EcosystemInfo not implemented")
}
func (UnimplementedProviderServer) GenerateToken(context.Context, *GenerateTokenRequest) (*GenerateTokenResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GenerateToken not implemented")
}
func (UnimplementedProviderServer) Invite(context.Context, *InviteRequest) (*InviteResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Invite not implemented")
}
func (UnimplementedProviderServer) InvitationStatus(context.Context, *InvitationStatusRequest) (*InvitationStatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method InvitationStatus not implemented")
}
func (UnimplementedProviderServer) GetOberonKey(context.Context, *GetOberonKeyRequest) (*GetOberonKeyResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetOberonKey not implemented")
}
func (UnimplementedProviderServer) GetEventToken(context.Context, *GetEventTokenRequest) (*GetEventTokenResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetEventToken not implemented")
}
func (UnimplementedProviderServer) mustEmbedUnimplementedProviderServer() {}

// UnsafeProviderServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to ProviderServer will
// result in compilation errors.
type UnsafeProviderServer interface {
	mustEmbedUnimplementedProviderServer()
}

func RegisterProviderServer(s grpc.ServiceRegistrar, srv ProviderServer) {
	s.RegisterService(&Provider_ServiceDesc, srv)
}

func _Provider_CreateEcosystem_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateEcosystemRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).CreateEcosystem(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/CreateEcosystem",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).CreateEcosystem(ctx, req.(*CreateEcosystemRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_UpdateEcosystem_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateEcosystemRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).UpdateEcosystem(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/UpdateEcosystem",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).UpdateEcosystem(ctx, req.(*UpdateEcosystemRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_GrantAuthorization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GrantAuthorizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).GrantAuthorization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/GrantAuthorization",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).GrantAuthorization(ctx, req.(*GrantAuthorizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_RevokeAuthorization_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RevokeAuthorizationRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).RevokeAuthorization(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/RevokeAuthorization",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).RevokeAuthorization(ctx, req.(*RevokeAuthorizationRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_GetAuthorizations_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetAuthorizationsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).GetAuthorizations(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/GetAuthorizations",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).GetAuthorizations(ctx, req.(*GetAuthorizationsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_AddWebhook_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AddWebhookRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).AddWebhook(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/AddWebhook",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).AddWebhook(ctx, req.(*AddWebhookRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_DeleteWebhook_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteWebhookRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).DeleteWebhook(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/DeleteWebhook",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).DeleteWebhook(ctx, req.(*DeleteWebhookRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_EcosystemInfo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(EcosystemInfoRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).EcosystemInfo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/EcosystemInfo",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).EcosystemInfo(ctx, req.(*EcosystemInfoRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_GenerateToken_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GenerateTokenRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).GenerateToken(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/GenerateToken",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).GenerateToken(ctx, req.(*GenerateTokenRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_Invite_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(InviteRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).Invite(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/Invite",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).Invite(ctx, req.(*InviteRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_InvitationStatus_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(InvitationStatusRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).InvitationStatus(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/InvitationStatus",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).InvitationStatus(ctx, req.(*InvitationStatusRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_GetOberonKey_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetOberonKeyRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).GetOberonKey(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/GetOberonKey",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).GetOberonKey(ctx, req.(*GetOberonKeyRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _Provider_GetEventToken_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetEventTokenRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).GetEventToken(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/GetEventToken",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).GetEventToken(ctx, req.(*GetEventTokenRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// Provider_ServiceDesc is the grpc.ServiceDesc for Provider service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var Provider_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.provider.v1.Provider",
	HandlerType: (*ProviderServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateEcosystem",
			Handler:    _Provider_CreateEcosystem_Handler,
		},
		{
			MethodName: "UpdateEcosystem",
			Handler:    _Provider_UpdateEcosystem_Handler,
		},
		{
			MethodName: "GrantAuthorization",
			Handler:    _Provider_GrantAuthorization_Handler,
		},
		{
			MethodName: "RevokeAuthorization",
			Handler:    _Provider_RevokeAuthorization_Handler,
		},
		{
			MethodName: "GetAuthorizations",
			Handler:    _Provider_GetAuthorizations_Handler,
		},
		{
			MethodName: "AddWebhook",
			Handler:    _Provider_AddWebhook_Handler,
		},
		{
			MethodName: "DeleteWebhook",
			Handler:    _Provider_DeleteWebhook_Handler,
		},
		{
			MethodName: "EcosystemInfo",
			Handler:    _Provider_EcosystemInfo_Handler,
		},
		{
			MethodName: "GenerateToken",
			Handler:    _Provider_GenerateToken_Handler,
		},
		{
			MethodName: "Invite",
			Handler:    _Provider_Invite_Handler,
		},
		{
			MethodName: "InvitationStatus",
			Handler:    _Provider_InvitationStatus_Handler,
		},
		{
			MethodName: "GetOberonKey",
			Handler:    _Provider_GetOberonKey_Handler,
		},
		{
			MethodName: "GetEventToken",
			Handler:    _Provider_GetEventToken_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/provider/v1/provider.proto",
}
