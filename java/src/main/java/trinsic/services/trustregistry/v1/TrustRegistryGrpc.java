package trinsic.services.trustregistry.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/** */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.46.0)",
    comments = "Source: services/trust-registry/v1/trust-registry.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class TrustRegistryGrpc {

  private TrustRegistryGrpc() {}

  public static final String SERVICE_NAME = "services.trustregistry.v1.TrustRegistry";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.AddFrameworkRequest,
          trinsic.services.trustregistry.v1.AddFrameworkResponse>
      getAddFrameworkMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddFramework",
      requestType = trinsic.services.trustregistry.v1.AddFrameworkRequest.class,
      responseType = trinsic.services.trustregistry.v1.AddFrameworkResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.AddFrameworkRequest,
          trinsic.services.trustregistry.v1.AddFrameworkResponse>
      getAddFrameworkMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.AddFrameworkRequest,
            trinsic.services.trustregistry.v1.AddFrameworkResponse>
        getAddFrameworkMethod;
    if ((getAddFrameworkMethod = TrustRegistryGrpc.getAddFrameworkMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getAddFrameworkMethod = TrustRegistryGrpc.getAddFrameworkMethod) == null) {
          TrustRegistryGrpc.getAddFrameworkMethod =
              getAddFrameworkMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.AddFrameworkRequest,
                          trinsic.services.trustregistry.v1.AddFrameworkResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "AddFramework"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.AddFrameworkRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.AddFrameworkResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("AddFramework"))
                      .build();
        }
      }
    }
    return getAddFrameworkMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.RemoveFrameworkRequest,
          trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
      getRemoveFrameworkMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RemoveFramework",
      requestType = trinsic.services.trustregistry.v1.RemoveFrameworkRequest.class,
      responseType = trinsic.services.trustregistry.v1.RemoveFrameworkResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.RemoveFrameworkRequest,
          trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
      getRemoveFrameworkMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.RemoveFrameworkRequest,
            trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
        getRemoveFrameworkMethod;
    if ((getRemoveFrameworkMethod = TrustRegistryGrpc.getRemoveFrameworkMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getRemoveFrameworkMethod = TrustRegistryGrpc.getRemoveFrameworkMethod) == null) {
          TrustRegistryGrpc.getRemoveFrameworkMethod =
              getRemoveFrameworkMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.RemoveFrameworkRequest,
                          trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RemoveFramework"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.RemoveFrameworkRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.RemoveFrameworkResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("RemoveFramework"))
                      .build();
        }
      }
    }
    return getRemoveFrameworkMethod;
  }

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
          trinsic.services.trustregistry.v1.GetMembershipStatusRequest,
          trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
      getGetMembershipStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetMembershipStatus",
      requestType = trinsic.services.trustregistry.v1.GetMembershipStatusRequest.class,
      responseType = trinsic.services.trustregistry.v1.GetMembershipStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.GetMembershipStatusRequest,
          trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
      getGetMembershipStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.GetMembershipStatusRequest,
            trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
        getGetMembershipStatusMethod;
    if ((getGetMembershipStatusMethod = TrustRegistryGrpc.getGetMembershipStatusMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getGetMembershipStatusMethod = TrustRegistryGrpc.getGetMembershipStatusMethod)
            == null) {
          TrustRegistryGrpc.getGetMembershipStatusMethod =
              getGetMembershipStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.GetMembershipStatusRequest,
                          trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "GetMembershipStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.GetMembershipStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.GetMembershipStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new TrustRegistryMethodDescriptorSupplier("GetMembershipStatus"))
                      .build();
        }
      }
    }
    return getGetMembershipStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.FetchDataRequest,
          trinsic.services.trustregistry.v1.FetchDataResponse>
      getFetchDataMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "FetchData",
      requestType = trinsic.services.trustregistry.v1.FetchDataRequest.class,
      responseType = trinsic.services.trustregistry.v1.FetchDataResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
  public static io.grpc.MethodDescriptor<
          trinsic.services.trustregistry.v1.FetchDataRequest,
          trinsic.services.trustregistry.v1.FetchDataResponse>
      getFetchDataMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.trustregistry.v1.FetchDataRequest,
            trinsic.services.trustregistry.v1.FetchDataResponse>
        getFetchDataMethod;
    if ((getFetchDataMethod = TrustRegistryGrpc.getFetchDataMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getFetchDataMethod = TrustRegistryGrpc.getFetchDataMethod) == null) {
          TrustRegistryGrpc.getFetchDataMethod =
              getFetchDataMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.trustregistry.v1.FetchDataRequest,
                          trinsic.services.trustregistry.v1.FetchDataResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "FetchData"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.FetchDataRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.trustregistry.v1.FetchDataResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("FetchData"))
                      .build();
        }
      }
    }
    return getFetchDataMethod;
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
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public void addFramework(
        trinsic.services.trustregistry.v1.AddFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.AddFrameworkResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getAddFrameworkMethod(), responseObserver);
    }

    /** */
    public void removeFramework(
        trinsic.services.trustregistry.v1.RemoveFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRemoveFrameworkMethod(), responseObserver);
    }

    /** */
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
     * Registers an authoritative issuer with a credential template
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
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public void unregisterMember(
        trinsic.services.trustregistry.v1.UnregisterMemberRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.UnregisterMemberResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getUnregisterMemberMethod(), responseObserver);
    }

    /** */
    public void getMembershipStatus(
        trinsic.services.trustregistry.v1.GetMembershipStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetMembershipStatusMethod(), responseObserver);
    }

    /** */
    public void fetchData(
        trinsic.services.trustregistry.v1.FetchDataRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.FetchDataResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getFetchDataMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getAddFrameworkMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.AddFrameworkRequest,
                      trinsic.services.trustregistry.v1.AddFrameworkResponse>(
                      this, METHODID_ADD_FRAMEWORK)))
          .addMethod(
              getRemoveFrameworkMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.RemoveFrameworkRequest,
                      trinsic.services.trustregistry.v1.RemoveFrameworkResponse>(
                      this, METHODID_REMOVE_FRAMEWORK)))
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
              getGetMembershipStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.GetMembershipStatusRequest,
                      trinsic.services.trustregistry.v1.GetMembershipStatusResponse>(
                      this, METHODID_GET_MEMBERSHIP_STATUS)))
          .addMethod(
              getFetchDataMethod(),
              io.grpc.stub.ServerCalls.asyncServerStreamingCall(
                  new MethodHandlers<
                      trinsic.services.trustregistry.v1.FetchDataRequest,
                      trinsic.services.trustregistry.v1.FetchDataResponse>(
                      this, METHODID_FETCH_DATA)))
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
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public void addFramework(
        trinsic.services.trustregistry.v1.AddFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.AddFrameworkResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAddFrameworkMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /** */
    public void removeFramework(
        trinsic.services.trustregistry.v1.RemoveFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRemoveFrameworkMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /** */
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
     * Registers an authoritative issuer with a credential template
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
     * Removes an authoritative issuer with a credential template from the trust registry
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

    /** */
    public void getMembershipStatus(
        trinsic.services.trustregistry.v1.GetMembershipStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetMembershipStatusMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /** */
    public void fetchData(
        trinsic.services.trustregistry.v1.FetchDataRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.FetchDataResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncServerStreamingCall(
          getChannel().newCall(getFetchDataMethod(), getCallOptions()), request, responseObserver);
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
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public trinsic.services.trustregistry.v1.AddFrameworkResponse addFramework(
        trinsic.services.trustregistry.v1.AddFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAddFrameworkMethod(), getCallOptions(), request);
    }

    /** */
    public trinsic.services.trustregistry.v1.RemoveFrameworkResponse removeFramework(
        trinsic.services.trustregistry.v1.RemoveFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRemoveFrameworkMethod(), getCallOptions(), request);
    }

    /** */
    public trinsic.services.trustregistry.v1.SearchRegistryResponse searchRegistry(
        trinsic.services.trustregistry.v1.SearchRegistryRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchRegistryMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Registers an authoritative issuer with a credential template
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
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public trinsic.services.trustregistry.v1.UnregisterMemberResponse unregisterMember(
        trinsic.services.trustregistry.v1.UnregisterMemberRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUnregisterMemberMethod(), getCallOptions(), request);
    }

    /** */
    public trinsic.services.trustregistry.v1.GetMembershipStatusResponse getMembershipStatus(
        trinsic.services.trustregistry.v1.GetMembershipStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetMembershipStatusMethod(), getCallOptions(), request);
    }

    /** */
    public java.util.Iterator<trinsic.services.trustregistry.v1.FetchDataResponse> fetchData(
        trinsic.services.trustregistry.v1.FetchDataRequest request) {
      return io.grpc.stub.ClientCalls.blockingServerStreamingCall(
          getChannel(), getFetchDataMethod(), getCallOptions(), request);
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
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.AddFrameworkResponse>
        addFramework(trinsic.services.trustregistry.v1.AddFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAddFrameworkMethod(), getCallOptions()), request);
    }

    /** */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.RemoveFrameworkResponse>
        removeFramework(trinsic.services.trustregistry.v1.RemoveFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRemoveFrameworkMethod(), getCallOptions()), request);
    }

    /** */
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
     * Registers an authoritative issuer with a credential template
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
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.UnregisterMemberResponse>
        unregisterMember(trinsic.services.trustregistry.v1.UnregisterMemberRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUnregisterMemberMethod(), getCallOptions()), request);
    }

    /** */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.trustregistry.v1.GetMembershipStatusResponse>
        getMembershipStatus(trinsic.services.trustregistry.v1.GetMembershipStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetMembershipStatusMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ADD_FRAMEWORK = 0;
  private static final int METHODID_REMOVE_FRAMEWORK = 1;
  private static final int METHODID_SEARCH_REGISTRY = 2;
  private static final int METHODID_REGISTER_MEMBER = 3;
  private static final int METHODID_UNREGISTER_MEMBER = 4;
  private static final int METHODID_GET_MEMBERSHIP_STATUS = 5;
  private static final int METHODID_FETCH_DATA = 6;

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
        case METHODID_ADD_FRAMEWORK:
          serviceImpl.addFramework(
              (trinsic.services.trustregistry.v1.AddFrameworkRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.AddFrameworkResponse>)
                  responseObserver);
          break;
        case METHODID_REMOVE_FRAMEWORK:
          serviceImpl.removeFramework(
              (trinsic.services.trustregistry.v1.RemoveFrameworkRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.RemoveFrameworkResponse>)
                  responseObserver);
          break;
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
        case METHODID_GET_MEMBERSHIP_STATUS:
          serviceImpl.getMembershipStatus(
              (trinsic.services.trustregistry.v1.GetMembershipStatusRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.trustregistry.v1.GetMembershipStatusResponse>)
                  responseObserver);
          break;
        case METHODID_FETCH_DATA:
          serviceImpl.fetchData(
              (trinsic.services.trustregistry.v1.FetchDataRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.FetchDataResponse>)
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
                      .addMethod(getAddFrameworkMethod())
                      .addMethod(getRemoveFrameworkMethod())
                      .addMethod(getSearchRegistryMethod())
                      .addMethod(getRegisterMemberMethod())
                      .addMethod(getUnregisterMemberMethod())
                      .addMethod(getGetMembershipStatusMethod())
                      .addMethod(getFetchDataMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
