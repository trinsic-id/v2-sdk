// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v3.20.3
// source: services/provider/v1/access-management.proto

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

// AccessManagementClient is the client API for AccessManagement service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type AccessManagementClient interface {
	// Adds a role assignment to an account
	AddRoleAssignment(ctx context.Context, in *AddRoleAssignmentRequest, opts ...grpc.CallOption) (*AddRoleAssignmentResponse, error)
	// Removes a role assignment from the account
	RemoveRoleAssignment(ctx context.Context, in *RemoveRoleAssignmentRequest, opts ...grpc.CallOption) (*RemoveRoleAssignmentResponse, error)
	// List the role assignments for the given account
	ListRoleAssignments(ctx context.Context, in *ListRoleAssignmentsRequest, opts ...grpc.CallOption) (*ListRoleAssignmentsResponse, error)
	// List the roles available in the ecosystem
	ListAvailableRoles(ctx context.Context, in *ListAvailableRolesRequest, opts ...grpc.CallOption) (*ListAvailableRolesResponse, error)
}

type accessManagementClient struct {
	cc grpc.ClientConnInterface
}

func NewAccessManagementClient(cc grpc.ClientConnInterface) AccessManagementClient {
	return &accessManagementClient{cc}
}

func (c *accessManagementClient) AddRoleAssignment(ctx context.Context, in *AddRoleAssignmentRequest, opts ...grpc.CallOption) (*AddRoleAssignmentResponse, error) {
	out := new(AddRoleAssignmentResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.AccessManagement/AddRoleAssignment", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accessManagementClient) RemoveRoleAssignment(ctx context.Context, in *RemoveRoleAssignmentRequest, opts ...grpc.CallOption) (*RemoveRoleAssignmentResponse, error) {
	out := new(RemoveRoleAssignmentResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.AccessManagement/RemoveRoleAssignment", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accessManagementClient) ListRoleAssignments(ctx context.Context, in *ListRoleAssignmentsRequest, opts ...grpc.CallOption) (*ListRoleAssignmentsResponse, error) {
	out := new(ListRoleAssignmentsResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.AccessManagement/ListRoleAssignments", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *accessManagementClient) ListAvailableRoles(ctx context.Context, in *ListAvailableRolesRequest, opts ...grpc.CallOption) (*ListAvailableRolesResponse, error) {
	out := new(ListAvailableRolesResponse)
	err := c.cc.Invoke(ctx, "/services.provider.v1.AccessManagement/ListAvailableRoles", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// AccessManagementServer is the server API for AccessManagement service.
// All implementations must embed UnimplementedAccessManagementServer
// for forward compatibility
type AccessManagementServer interface {
	// Adds a role assignment to an account
	AddRoleAssignment(context.Context, *AddRoleAssignmentRequest) (*AddRoleAssignmentResponse, error)
	// Removes a role assignment from the account
	RemoveRoleAssignment(context.Context, *RemoveRoleAssignmentRequest) (*RemoveRoleAssignmentResponse, error)
	// List the role assignments for the given account
	ListRoleAssignments(context.Context, *ListRoleAssignmentsRequest) (*ListRoleAssignmentsResponse, error)
	// List the roles available in the ecosystem
	ListAvailableRoles(context.Context, *ListAvailableRolesRequest) (*ListAvailableRolesResponse, error)
	mustEmbedUnimplementedAccessManagementServer()
}

// UnimplementedAccessManagementServer must be embedded to have forward compatible implementations.
type UnimplementedAccessManagementServer struct {
}

func (UnimplementedAccessManagementServer) AddRoleAssignment(context.Context, *AddRoleAssignmentRequest) (*AddRoleAssignmentResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AddRoleAssignment not implemented")
}
func (UnimplementedAccessManagementServer) RemoveRoleAssignment(context.Context, *RemoveRoleAssignmentRequest) (*RemoveRoleAssignmentResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RemoveRoleAssignment not implemented")
}
func (UnimplementedAccessManagementServer) ListRoleAssignments(context.Context, *ListRoleAssignmentsRequest) (*ListRoleAssignmentsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListRoleAssignments not implemented")
}
func (UnimplementedAccessManagementServer) ListAvailableRoles(context.Context, *ListAvailableRolesRequest) (*ListAvailableRolesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListAvailableRoles not implemented")
}
func (UnimplementedAccessManagementServer) mustEmbedUnimplementedAccessManagementServer() {}

// UnsafeAccessManagementServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to AccessManagementServer will
// result in compilation errors.
type UnsafeAccessManagementServer interface {
	mustEmbedUnimplementedAccessManagementServer()
}

func RegisterAccessManagementServer(s grpc.ServiceRegistrar, srv AccessManagementServer) {
	s.RegisterService(&AccessManagement_ServiceDesc, srv)
}

func _AccessManagement_AddRoleAssignment_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AddRoleAssignmentRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccessManagementServer).AddRoleAssignment(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.AccessManagement/AddRoleAssignment",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccessManagementServer).AddRoleAssignment(ctx, req.(*AddRoleAssignmentRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccessManagement_RemoveRoleAssignment_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RemoveRoleAssignmentRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccessManagementServer).RemoveRoleAssignment(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.AccessManagement/RemoveRoleAssignment",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccessManagementServer).RemoveRoleAssignment(ctx, req.(*RemoveRoleAssignmentRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccessManagement_ListRoleAssignments_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListRoleAssignmentsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccessManagementServer).ListRoleAssignments(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.AccessManagement/ListRoleAssignments",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccessManagementServer).ListRoleAssignments(ctx, req.(*ListRoleAssignmentsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _AccessManagement_ListAvailableRoles_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListAvailableRolesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(AccessManagementServer).ListAvailableRoles(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.provider.v1.AccessManagement/ListAvailableRoles",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(AccessManagementServer).ListAvailableRoles(ctx, req.(*ListAvailableRolesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// AccessManagement_ServiceDesc is the grpc.ServiceDesc for AccessManagement service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var AccessManagement_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.provider.v1.AccessManagement",
	HandlerType: (*AccessManagementServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "AddRoleAssignment",
			Handler:    _AccessManagement_AddRoleAssignment_Handler,
		},
		{
			MethodName: "RemoveRoleAssignment",
			Handler:    _AccessManagement_RemoveRoleAssignment_Handler,
		},
		{
			MethodName: "ListRoleAssignments",
			Handler:    _AccessManagement_ListRoleAssignments_Handler,
		},
		{
			MethodName: "ListAvailableRoles",
			Handler:    _AccessManagement_ListAvailableRoles_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/provider/v1/access-management.proto",
}
