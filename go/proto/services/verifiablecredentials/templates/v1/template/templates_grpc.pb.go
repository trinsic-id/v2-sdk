// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package template

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

// CredentialTemplatesClient is the client API for CredentialTemplates service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type CredentialTemplatesClient interface {
	Create(ctx context.Context, in *CreateCredentialTemplateRequest, opts ...grpc.CallOption) (*CreateCredentialTemplateResponse, error)
	Get(ctx context.Context, in *GetCredentialTemplateRequest, opts ...grpc.CallOption) (*GetCredentialTemplateResponse, error)
	List(ctx context.Context, in *ListCredentialTemplatesRequest, opts ...grpc.CallOption) (*ListCredentialTemplatesResponse, error)
	Search(ctx context.Context, in *SearchCredentialTemplatesRequest, opts ...grpc.CallOption) (*SearchCredentialTemplatesResponse, error)
	Delete(ctx context.Context, in *DeleteCredentialTemplateRequest, opts ...grpc.CallOption) (*DeleteCredentialTemplateResponse, error)
}

type credentialTemplatesClient struct {
	cc grpc.ClientConnInterface
}

func NewCredentialTemplatesClient(cc grpc.ClientConnInterface) CredentialTemplatesClient {
	return &credentialTemplatesClient{cc}
}

func (c *credentialTemplatesClient) Create(ctx context.Context, in *CreateCredentialTemplateRequest, opts ...grpc.CallOption) (*CreateCredentialTemplateResponse, error) {
	out := new(CreateCredentialTemplateResponse)
	err := c.cc.Invoke(ctx, "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *credentialTemplatesClient) Get(ctx context.Context, in *GetCredentialTemplateRequest, opts ...grpc.CallOption) (*GetCredentialTemplateResponse, error) {
	out := new(GetCredentialTemplateResponse)
	err := c.cc.Invoke(ctx, "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *credentialTemplatesClient) List(ctx context.Context, in *ListCredentialTemplatesRequest, opts ...grpc.CallOption) (*ListCredentialTemplatesResponse, error) {
	out := new(ListCredentialTemplatesResponse)
	err := c.cc.Invoke(ctx, "/services.verifiablecredentials.templates.v1.CredentialTemplates/List", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *credentialTemplatesClient) Search(ctx context.Context, in *SearchCredentialTemplatesRequest, opts ...grpc.CallOption) (*SearchCredentialTemplatesResponse, error) {
	out := new(SearchCredentialTemplatesResponse)
	err := c.cc.Invoke(ctx, "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *credentialTemplatesClient) Delete(ctx context.Context, in *DeleteCredentialTemplateRequest, opts ...grpc.CallOption) (*DeleteCredentialTemplateResponse, error) {
	out := new(DeleteCredentialTemplateResponse)
	err := c.cc.Invoke(ctx, "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// CredentialTemplatesServer is the server API for CredentialTemplates service.
// All implementations must embed UnimplementedCredentialTemplatesServer
// for forward compatibility
type CredentialTemplatesServer interface {
	Create(context.Context, *CreateCredentialTemplateRequest) (*CreateCredentialTemplateResponse, error)
	Get(context.Context, *GetCredentialTemplateRequest) (*GetCredentialTemplateResponse, error)
	List(context.Context, *ListCredentialTemplatesRequest) (*ListCredentialTemplatesResponse, error)
	Search(context.Context, *SearchCredentialTemplatesRequest) (*SearchCredentialTemplatesResponse, error)
	Delete(context.Context, *DeleteCredentialTemplateRequest) (*DeleteCredentialTemplateResponse, error)
	mustEmbedUnimplementedCredentialTemplatesServer()
}

// UnimplementedCredentialTemplatesServer must be embedded to have forward compatible implementations.
type UnimplementedCredentialTemplatesServer struct {
}

func (UnimplementedCredentialTemplatesServer) Create(context.Context, *CreateCredentialTemplateRequest) (*CreateCredentialTemplateResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Create not implemented")
}
func (UnimplementedCredentialTemplatesServer) Get(context.Context, *GetCredentialTemplateRequest) (*GetCredentialTemplateResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Get not implemented")
}
func (UnimplementedCredentialTemplatesServer) List(context.Context, *ListCredentialTemplatesRequest) (*ListCredentialTemplatesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method List not implemented")
}
func (UnimplementedCredentialTemplatesServer) Search(context.Context, *SearchCredentialTemplatesRequest) (*SearchCredentialTemplatesResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Search not implemented")
}
func (UnimplementedCredentialTemplatesServer) Delete(context.Context, *DeleteCredentialTemplateRequest) (*DeleteCredentialTemplateResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Delete not implemented")
}
func (UnimplementedCredentialTemplatesServer) mustEmbedUnimplementedCredentialTemplatesServer() {}

// UnsafeCredentialTemplatesServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to CredentialTemplatesServer will
// result in compilation errors.
type UnsafeCredentialTemplatesServer interface {
	mustEmbedUnimplementedCredentialTemplatesServer()
}

func RegisterCredentialTemplatesServer(s grpc.ServiceRegistrar, srv CredentialTemplatesServer) {
	s.RegisterService(&CredentialTemplates_ServiceDesc, srv)
}

func _CredentialTemplates_Create_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateCredentialTemplateRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CredentialTemplatesServer).Create(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.verifiablecredentials.templates.v1.CredentialTemplates/Create",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CredentialTemplatesServer).Create(ctx, req.(*CreateCredentialTemplateRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _CredentialTemplates_Get_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetCredentialTemplateRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CredentialTemplatesServer).Get(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.verifiablecredentials.templates.v1.CredentialTemplates/Get",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CredentialTemplatesServer).Get(ctx, req.(*GetCredentialTemplateRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _CredentialTemplates_List_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListCredentialTemplatesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CredentialTemplatesServer).List(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.verifiablecredentials.templates.v1.CredentialTemplates/List",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CredentialTemplatesServer).List(ctx, req.(*ListCredentialTemplatesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _CredentialTemplates_Search_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SearchCredentialTemplatesRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CredentialTemplatesServer).Search(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.verifiablecredentials.templates.v1.CredentialTemplates/Search",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CredentialTemplatesServer).Search(ctx, req.(*SearchCredentialTemplatesRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _CredentialTemplates_Delete_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteCredentialTemplateRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CredentialTemplatesServer).Delete(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/services.verifiablecredentials.templates.v1.CredentialTemplates/Delete",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CredentialTemplatesServer).Delete(ctx, req.(*DeleteCredentialTemplateRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// CredentialTemplates_ServiceDesc is the grpc.ServiceDesc for CredentialTemplates service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var CredentialTemplates_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.verifiablecredentials.templates.v1.CredentialTemplates",
	HandlerType: (*CredentialTemplatesServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Create",
			Handler:    _CredentialTemplates_Create_Handler,
		},
		{
			MethodName: "Get",
			Handler:    _CredentialTemplates_Get_Handler,
		},
		{
			MethodName: "List",
			Handler:    _CredentialTemplates_List_Handler,
		},
		{
			MethodName: "Search",
			Handler:    _CredentialTemplates_Search_Handler,
		},
		{
			MethodName: "Delete",
			Handler:    _CredentialTemplates_Delete_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/verifiable-credentials/templates/v1/templates.proto",
}
