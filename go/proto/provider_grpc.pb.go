// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package sdk

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
	// List all ecosystems assigned to the authenticated account
	ListEcosystems(ctx context.Context, in *ListEcosystemsRequest, opts ...grpc.CallOption) (*ListEcosystemsResponse, error)
	// Invite a user to the ecosystem
	Invite(ctx context.Context, in *InviteRequest, opts ...grpc.CallOption) (*InviteResponse, error)
	// Accept an invite to the ecosystem
	AcceptInvite(ctx context.Context, in *AcceptInviteRequest, opts ...grpc.CallOption) (*AcceptInviteResponse, error)
	// Check the invitation status
	InvitationStatus(ctx context.Context, in *InvitationStatusRequest, opts ...grpc.CallOption) (*InvitationStatusResponse, error)
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

func (c *providerClient) ListEcosystems(ctx context.Context, in *ListEcosystemsRequest, opts ...grpc.CallOption) (*ListEcosystemsResponse, error) {
	out := new(ListEcosystemsResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/ListEcosystems", in, out, opts...)
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

func (c *providerClient) AcceptInvite(ctx context.Context, in *AcceptInviteRequest, opts ...grpc.CallOption) (*AcceptInviteResponse, error) {
	out := new(AcceptInviteResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.Provider/AcceptInvite", in, out, opts...)
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

// ProviderServer is the server API for Provider service.
// All implementations must embed UnimplementedProviderServer
// for forward compatibility
type ProviderServer interface {
	// Create new ecosystem and assign the authenticated user as owner
	CreateEcosystem(context.Context, *CreateEcosystemRequest) (*CreateEcosystemResponse, error)
	// List all ecosystems assigned to the authenticated account
	ListEcosystems(context.Context, *ListEcosystemsRequest) (*ListEcosystemsResponse, error)
	// Invite a user to the ecosystem
	Invite(context.Context, *InviteRequest) (*InviteResponse, error)
	// Accept an invite to the ecosystem
	AcceptInvite(context.Context, *AcceptInviteRequest) (*AcceptInviteResponse, error)
	// Check the invitation status
	InvitationStatus(context.Context, *InvitationStatusRequest) (*InvitationStatusResponse, error)
	mustEmbedUnimplementedProviderServer()
}

// UnimplementedProviderServer must be embedded to have forward compatible implementations.
type UnimplementedProviderServer struct {
}

func (UnimplementedProviderServer) CreateEcosystem(context.Context, *CreateEcosystemRequest) (*CreateEcosystemResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateEcosystem not implemented")
}
func (UnimplementedProviderServer) ListEcosystems(context.Context, *ListEcosystemsRequest) (*ListEcosystemsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListEcosystems not implemented")
}
func (UnimplementedProviderServer) Invite(context.Context, *InviteRequest) (*InviteResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Invite not implemented")
}
func (UnimplementedProviderServer) AcceptInvite(context.Context, *AcceptInviteRequest) (*AcceptInviteResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AcceptInvite not implemented")
}
func (UnimplementedProviderServer) InvitationStatus(context.Context, *InvitationStatusRequest) (*InvitationStatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method InvitationStatus not implemented")
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

func _Provider_ListEcosystems_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListEcosystemsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).ListEcosystems(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/ListEcosystems",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).ListEcosystems(ctx, req.(*ListEcosystemsRequest))
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

func _Provider_AcceptInvite_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AcceptInviteRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ProviderServer).AcceptInvite(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.Provider/AcceptInvite",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ProviderServer).AcceptInvite(ctx, req.(*AcceptInviteRequest))
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
			MethodName: "ListEcosystems",
			Handler:    _Provider_ListEcosystems_Handler,
		},
		{
			MethodName: "Invite",
			Handler:    _Provider_Invite_Handler,
		},
		{
			MethodName: "AcceptInvite",
			Handler:    _Provider_AcceptInvite_Handler,
		},
		{
			MethodName: "InvitationStatus",
			Handler:    _Provider_InvitationStatus_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/provider/v1/provider.proto",
}
