package trinsic.services.trustregistry.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/** */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.49.2)",
    comments = "Source: services/trust-registry/v1/trust-registry.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class TrustRegistryGrpc {

  private TrustRegistryGrpc() {}

  public static final String SERVICE_NAME = "services.trustregistry.v1.TrustRegistry";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.SearchRegistryRequest,
          trinsic.services.trustregistry.v1.SearchRegistryResponse>
      getSearchRegistryMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "SearchRegistry",
      requestType = trinsic.services.trustregistry.v1.SearchRegistryRequest.class,
      responseType = trinsic.services.trustregistry.v1.SearchRegistryResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.SearchRegistryRequest,
          trinsic.services.trustregistry.v1.SearchRegistryResponse>
      getSearchRegistryMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.SearchRegistryRequest,
            trinsic.services.trustregistry.v1.SearchRegistryResponse>
        getSearchRegistryMethod;
    if ((getSearchRegistryMethod = TrustRegistryGrpc.getSearchRegistryMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getSearchRegistryMethod = TrustRegistryGrpc.getSearchRegistryMethod) == null) {
          TrustRegistryGrpc.getSearchRegistryMethod =
              getSearchRegistryMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.SearchRegistryRequest,
                          trinsic.services.trustregistry.v1.SearchRegistryResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "SearchRegistry"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.SearchRegistryRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.SearchRegistryResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("SearchRegistry"))
                      .build();
        }
      }
    }
    return getSearchRegistryMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.RegisterMemberRequest,
          trinsic.services.trustregistry.v1.RegisterMemberResponse>
      getRegisterMemberMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RegisterMember",
      requestType = trinsic.services.trustregistry.v1.RegisterMemberRequest.class,
      responseType = trinsic.services.trustregistry.v1.RegisterMemberResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.RegisterMemberRequest,
          trinsic.services.trustregistry.v1.RegisterMemberResponse>
      getRegisterMemberMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.RegisterMemberRequest,
            trinsic.services.trustregistry.v1.RegisterMemberResponse>
        getRegisterMemberMethod;
    if ((getRegisterMemberMethod = TrustRegistryGrpc.getRegisterMemberMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getRegisterMemberMethod = TrustRegistryGrpc.getRegisterMemberMethod) == null) {
          TrustRegistryGrpc.getRegisterMemberMethod =
              getRegisterMemberMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.RegisterMemberRequest,
                          trinsic.services.trustregistry.v1.RegisterMemberResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RegisterMember"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.RegisterMemberRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.RegisterMemberResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("RegisterMember"))
                      .build();
        }
      }
    }
    return getRegisterMemberMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.UnregisterMemberRequest,
          trinsic.services.trustregistry.v1.UnregisterMemberResponse>
      getUnregisterMemberMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UnregisterMember",
      requestType = trinsic.services.trustregistry.v1.UnregisterMemberRequest.class,
      responseType = trinsic.services.trustregistry.v1.UnregisterMemberResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.UnregisterMemberRequest,
          trinsic.services.trustregistry.v1.UnregisterMemberResponse>
      getUnregisterMemberMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.UnregisterMemberRequest,
            trinsic.services.trustregistry.v1.UnregisterMemberResponse>
        getUnregisterMemberMethod;
    if ((getUnregisterMemberMethod = TrustRegistryGrpc.getUnregisterMemberMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getUnregisterMemberMethod = TrustRegistryGrpc.getUnregisterMemberMethod) == null) {
          TrustRegistryGrpc.getUnregisterMemberMethod =
              getUnregisterMemberMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.UnregisterMemberRequest,
                          trinsic.services.trustregistry.v1.UnregisterMemberResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UnregisterMember"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.UnregisterMemberRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.UnregisterMemberResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("UnregisterMember"))
                      .build();
        }
      }
    }
    return getUnregisterMemberMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest,
          trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
      getGetMemberAuthorizationStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetMemberAuthorizationStatus",
      requestType = trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest.class,
      responseType = trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest,
          trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
      getGetMemberAuthorizationStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest,
            trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
        getGetMemberAuthorizationStatusMethod;
    if ((getGetMemberAuthorizationStatusMethod =
            TrustRegistryGrpc.getGetMemberAuthorizationStatusMethod)
        == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getGetMemberAuthorizationStatusMethod =
                TrustRegistryGrpc.getGetMemberAuthorizationStatusMethod)
            == null) {
          TrustRegistryGrpc.getGetMemberAuthorizationStatusMethod =
              getGetMemberAuthorizationStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest,
                          trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "GetMemberAuthorizationStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("GetMemberAuthorizationStatus"))
                      .build();
        }
      }
    }
    return getGetMemberAuthorizationStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest,
          trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
      getListAuthorizedMembersMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListAuthorizedMembers",
      requestType = trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest.class,
      responseType = trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest,
          trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
      getListAuthorizedMembersMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest,
            trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
        getListAuthorizedMembersMethod;
    if ((getListAuthorizedMembersMethod = TrustRegistryGrpc.getListAuthorizedMembersMethod)
        == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getListAuthorizedMembersMethod = TrustRegistryGrpc.getListAuthorizedMembersMethod)
            == null) {
          TrustRegistryGrpc.getListAuthorizedMembersMethod =
              getListAuthorizedMembersMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest,
                          trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "ListAuthorizedMembers"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("ListAuthorizedMembers"))
                      .build();
        }
      }
    }
    return getListAuthorizedMembersMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.GetMemberRequest,
          trinsic.services.trustregistry.v1.GetMemberResponse>
      getGetMemberMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetMember",
      requestType = trinsic.services.trustregistry.v1.GetMemberRequest.class,
      responseType = trinsic.services.trustregistry.v1.GetMemberResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.GetMemberRequest,
          trinsic.services.trustregistry.v1.GetMemberResponse>
      getGetMemberMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.GetMemberRequest,
            trinsic.services.trustregistry.v1.GetMemberResponse>
        getGetMemberMethod;
    if ((getGetMemberMethod = TrustRegistryGrpc.getGetMemberMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getGetMemberMethod = TrustRegistryGrpc.getGetMemberMethod) == null) {
          TrustRegistryGrpc.getGetMemberMethod =
              getGetMemberMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.GetMemberRequest,
                          trinsic.services.trustregistry.v1.GetMemberResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetMember"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.GetMemberRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.GetMemberResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("GetMember"))
                      .build();
        }
      }
    }
    return getGetMemberMethod;
  }

  /** Creates a new async stub that supports all call types for the service */
  public static TrustRegistryStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<TrustRegistryStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<TrustRegistryStub>() {
          @java.lang.Override
          public TrustRegistryStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new TrustRegistryStub(channel, callOptions);
          }
        };
    return TrustRegistryStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static TrustRegistryBlockingStub newBlockingStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<TrustRegistryBlockingStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<TrustRegistryBlockingStub>() {
          @java.lang.Override
          public TrustRegistryBlockingStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new TrustRegistryBlockingStub(channel, callOptions);
          }
        };
    return TrustRegistryBlockingStub.newStub(factory, channel);
  }

  /** Creates a new ListenableFuture-style stub that supports unary calls on the service */
  public static TrustRegistryFutureStub newFutureStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<TrustRegistryFutureStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<TrustRegistryFutureStub>() {
          @java.lang.Override
          public TrustRegistryFutureStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new TrustRegistryFutureStub(channel, callOptions);
          }
        };
    return TrustRegistryFutureStub.newStub(factory, channel);
  }

  /** */
  public abstract static class TrustRegistryImplBase implements io.grpc.BindableService {

    /**
     *
     *
     * <pre>
     * Search the ecosystem's governance framework
     * </pre>
     */
    public void searchRegistry(
        trinsic.services.trustregistry.v1.SearchRegistryRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.SearchRegistryResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getSearchRegistryMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Register an authoritative issuer for a credential schema
     * </pre>
     */
    public void registerMember(
        trinsic.services.trustregistry.v1.RegisterMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.RegisterMemberResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRegisterMemberMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Removes an authoritative issuer for a credential schema from the trust registry
     * </pre>
     */
    public void unregisterMember(
        trinsic.services.trustregistry.v1.UnregisterMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.UnregisterMemberResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getUnregisterMemberMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Fetch the status of a member for a given credential schema in a trust registry
     * </pre>
     */
    public void getMemberAuthorizationStatus(
        trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetMemberAuthorizationStatusMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
     * </pre>
     */
    public void listAuthorizedMembers(
        trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getListAuthorizedMembersMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get member for a given did in a trust registry
     * </pre>
     */
    public void getMember(
        trinsic.services.trustregistry.v1.GetMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.GetMemberResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetMemberMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getSearchRegistryMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.SearchRegistryRequest,
                      trinsic.services.trustregistry.v1.SearchRegistryResponse>(
                      this, METHODID_SEARCH_REGISTRY)))
          .addMethod(
              getRegisterMemberMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.RegisterMemberRequest,
                      trinsic.services.trustregistry.v1.RegisterMemberResponse>(
                      this, METHODID_REGISTER_MEMBER)))
          .addMethod(
              getUnregisterMemberMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.UnregisterMemberRequest,
                      trinsic.services.trustregistry.v1.UnregisterMemberResponse>(
                      this, METHODID_UNREGISTER_MEMBER)))
          .addMethod(
              getGetMemberAuthorizationStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest,
                      trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>(
                      this, METHODID_GET_MEMBER_AUTHORIZATION_STATUS)))
          .addMethod(
              getListAuthorizedMembersMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest,
                      trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>(
                      this, METHODID_LIST_AUTHORIZED_MEMBERS)))
          .addMethod(
              getGetMemberMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.GetMemberRequest,
                      trinsic.services.trustregistry.v1.GetMemberResponse>(
                      this, METHODID_GET_MEMBER)))
          .build();
    }
  }

  /** */
  public static final class TrustRegistryStub
      extends io.grpc.stub.AbstractAsyncStub<TrustRegistryStub> {
    private TrustRegistryStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected TrustRegistryStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new TrustRegistryStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Search the ecosystem's governance framework
     * </pre>
     */
    public void searchRegistry(
        trinsic.services.trustregistry.v1.SearchRegistryRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.SearchRegistryResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchRegistryMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Register an authoritative issuer for a credential schema
     * </pre>
     */
    public void registerMember(
        trinsic.services.trustregistry.v1.RegisterMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.RegisterMemberResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRegisterMemberMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Removes an authoritative issuer for a credential schema from the trust registry
     * </pre>
     */
    public void unregisterMember(
        trinsic.services.trustregistry.v1.UnregisterMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.UnregisterMemberResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUnregisterMemberMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Fetch the status of a member for a given credential schema in a trust registry
     * </pre>
     */
    public void getMemberAuthorizationStatus(
        trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetMemberAuthorizationStatusMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
     * </pre>
     */
    public void listAuthorizedMembers(
        trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListAuthorizedMembersMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get member for a given did in a trust registry
     * </pre>
     */
    public void getMember(
        trinsic.services.trustregistry.v1.GetMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.GetMemberResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetMemberMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /** */
  public static final class TrustRegistryBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<TrustRegistryBlockingStub> {
    private TrustRegistryBlockingStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected TrustRegistryBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new TrustRegistryBlockingStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Search the ecosystem's governance framework
     * </pre>
     */
    public trinsic.services.trustregistry.v1.SearchRegistryResponse searchRegistry(
        trinsic.services.trustregistry.v1.SearchRegistryRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchRegistryMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Register an authoritative issuer for a credential schema
     * </pre>
     */
    public trinsic.services.trustregistry.v1.RegisterMemberResponse registerMember(
        trinsic.services.trustregistry.v1.RegisterMemberRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRegisterMemberMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Removes an authoritative issuer for a credential schema from the trust registry
     * </pre>
     */
    public trinsic.services.trustregistry.v1.UnregisterMemberResponse unregisterMember(
        trinsic.services.trustregistry.v1.UnregisterMemberRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUnregisterMemberMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Fetch the status of a member for a given credential schema in a trust registry
     * </pre>
     */
    public trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse
        getMemberAuthorizationStatus(
            trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetMemberAuthorizationStatusMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
     * </pre>
     */
    public trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse listAuthorizedMembers(
        trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListAuthorizedMembersMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Get member for a given did in a trust registry
     * </pre>
     */
    public trinsic.services.trustregistry.v1.GetMemberResponse getMember(
        trinsic.services.trustregistry.v1.GetMemberRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetMemberMethod(), getCallOptions(), request);
    }
  }

  /** */
  public static final class TrustRegistryFutureStub
      extends io.grpc.stub.AbstractFutureStub<TrustRegistryFutureStub> {
    private TrustRegistryFutureStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected TrustRegistryFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new TrustRegistryFutureStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Search the ecosystem's governance framework
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.SearchRegistryResponse>
        searchRegistry(trinsic.services.trustregistry.v1.SearchRegistryRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchRegistryMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Register an authoritative issuer for a credential schema
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.RegisterMemberResponse>
        registerMember(trinsic.services.trustregistry.v1.RegisterMemberRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRegisterMemberMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Removes an authoritative issuer for a credential schema from the trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.UnregisterMemberResponse>
        unregisterMember(trinsic.services.trustregistry.v1.UnregisterMemberRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUnregisterMemberMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Fetch the status of a member for a given credential schema in a trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>
        getMemberAuthorizationStatus(
            trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetMemberAuthorizationStatusMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Fetch the ecosystem's authorized issuers and the respective templates against which it can issue
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>
        listAuthorizedMembers(
            trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListAuthorizedMembersMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Get member for a given did in a trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.GetMemberResponse>
        getMember(trinsic.services.trustregistry.v1.GetMemberRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetMemberMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_SEARCH_REGISTRY = 0;
  private static final int METHODID_REGISTER_MEMBER = 1;
  private static final int METHODID_UNREGISTER_MEMBER = 2;
  private static final int METHODID_GET_MEMBER_AUTHORIZATION_STATUS = 3;
  private static final int METHODID_LIST_AUTHORIZED_MEMBERS = 4;
  private static final int METHODID_GET_MEMBER = 5;

  private static final class MethodHandlers<Req, Resp>
      implements io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final TrustRegistryImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(TrustRegistryImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_SEARCH_REGISTRY:
          serviceImpl.searchRegistry(
              (trinsic.services.trustregistry.v1.SearchRegistryRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.SearchRegistryResponse>)
                  responseObserver);
          break;
        case METHODID_REGISTER_MEMBER:
          serviceImpl.registerMember(
              (trinsic.services.trustregistry.v1.RegisterMemberRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.RegisterMemberResponse>)
                  responseObserver);
          break;
        case METHODID_UNREGISTER_MEMBER:
          serviceImpl.unregisterMember(
              (trinsic.services.trustregistry.v1.UnregisterMemberRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.UnregisterMemberResponse>)
                  responseObserver);
          break;
        case METHODID_GET_MEMBER_AUTHORIZATION_STATUS:
          serviceImpl.getMemberAuthorizationStatus(
              (trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.GetMemberAuthorizationStatusResponse>)
                  responseObserver);
          break;
        case METHODID_LIST_AUTHORIZED_MEMBERS:
          serviceImpl.listAuthorizedMembers(
              (trinsic.services.trustregistry.v1.ListAuthorizedMembersRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.ListAuthorizedMembersResponse>)
                  responseObserver);
          break;
        case METHODID_GET_MEMBER:
          serviceImpl.getMember(
              (trinsic.services.trustregistry.v1.GetMemberRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.GetMemberResponse>)
                  responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  private abstract static class TrustRegistryBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier,
          io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    TrustRegistryBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("TrustRegistry");
    }
  }

  private static final class TrustRegistryFileDescriptorSupplier
      extends TrustRegistryBaseDescriptorSupplier {
    TrustRegistryFileDescriptorSupplier() {}
  }

  private static final class TrustRegistryMethodDescriptorSupplier
      extends TrustRegistryBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    TrustRegistryMethodDescriptorSupplier(String methodName) {
      this.methodName = methodName;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (TrustRegistryGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor =
              result =
                  io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
                      .setSchemaDescriptor(new TrustRegistryFileDescriptorSupplier())
                      .addMethod(getSearchRegistryMethod())
                      .addMethod(getRegisterMemberMethod())
                      .addMethod(getUnregisterMemberMethod())
                      .addMethod(getGetMemberAuthorizationStatusMethod())
                      .addMethod(getListAuthorizedMembersMethod())
                      .addMethod(getGetMemberMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
