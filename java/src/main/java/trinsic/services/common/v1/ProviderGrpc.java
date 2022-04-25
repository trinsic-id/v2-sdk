package trinsic.services.common.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.44.1)",
    comments = "Source: services/provider/v1/provider.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class ProviderGrpc {

  private ProviderGrpc() {}

  public static final String SERVICE_NAME = "services.provider.v1.Provider";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
      trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> getCreateEcosystemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateEcosystem",
      requestType = trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
      trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> getCreateEcosystemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest, trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> getCreateEcosystemMethod;
    if ((getCreateEcosystemMethod = ProviderGrpc.getCreateEcosystemMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getCreateEcosystemMethod = ProviderGrpc.getCreateEcosystemMethod) == null) {
          ProviderGrpc.getCreateEcosystemMethod = getCreateEcosystemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest, trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateEcosystem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("CreateEcosystem"))
              .build();
        }
      }
    }
    return getCreateEcosystemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
      trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse> getGenerateTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GenerateToken",
      requestType = trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
      trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse> getGenerateTokenMethod() {
    io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest, trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse> getGenerateTokenMethod;
    if ((getGenerateTokenMethod = ProviderGrpc.getGenerateTokenMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGenerateTokenMethod = ProviderGrpc.getGenerateTokenMethod) == null) {
          ProviderGrpc.getGenerateTokenMethod = getGenerateTokenMethod =
              io.grpc.MethodDescriptor.<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest, trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GenerateToken"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GenerateToken"))
              .build();
        }
      }
    }
    return getGenerateTokenMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
      trinsic.services.common.v1.ProviderOuterClass.InviteResponse> getInviteMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Invite",
      requestType = trinsic.services.common.v1.ProviderOuterClass.InviteRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.InviteResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
      trinsic.services.common.v1.ProviderOuterClass.InviteResponse> getInviteMethod() {
    io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.InviteRequest, trinsic.services.common.v1.ProviderOuterClass.InviteResponse> getInviteMethod;
    if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
          ProviderGrpc.getInviteMethod = getInviteMethod =
              io.grpc.MethodDescriptor.<trinsic.services.common.v1.ProviderOuterClass.InviteRequest, trinsic.services.common.v1.ProviderOuterClass.InviteResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Invite"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.InviteRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.InviteResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("Invite"))
              .build();
        }
      }
    }
    return getInviteMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
      trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> getInvitationStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InvitationStatus",
      requestType = trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
      trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> getInvitationStatusMethod() {
    io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest, trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> getInvitationStatusMethod;
    if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
          ProviderGrpc.getInvitationStatusMethod = getInvitationStatusMethod =
              io.grpc.MethodDescriptor.<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest, trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InvitationStatus"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("InvitationStatus"))
              .build();
        }
      }
    }
    return getInvitationStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
      trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse> getGetOberonKeyMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetOberonKey",
      requestType = trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
      trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse> getGetOberonKeyMethod() {
    io.grpc.MethodDescriptor<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest, trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse> getGetOberonKeyMethod;
    if ((getGetOberonKeyMethod = ProviderGrpc.getGetOberonKeyMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetOberonKeyMethod = ProviderGrpc.getGetOberonKeyMethod) == null) {
          ProviderGrpc.getGetOberonKeyMethod = getGetOberonKeyMethod =
              io.grpc.MethodDescriptor.<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest, trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetOberonKey"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GetOberonKey"))
              .build();
        }
      }
    }
    return getGetOberonKeyMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static ProviderStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<ProviderStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<ProviderStub>() {
        @java.lang.Override
        public ProviderStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new ProviderStub(channel, callOptions);
        }
      };
    return ProviderStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static ProviderBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<ProviderBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<ProviderBlockingStub>() {
        @java.lang.Override
        public ProviderBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new ProviderBlockingStub(channel, callOptions);
        }
      };
    return ProviderBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static ProviderFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<ProviderFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<ProviderFutureStub>() {
        @java.lang.Override
        public ProviderFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new ProviderFutureStub(channel, callOptions);
        }
      };
    return ProviderFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class ProviderImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public void createEcosystem(trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCreateEcosystemMethod(), responseObserver);
    }

    /**
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public void generateToken(trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGenerateTokenMethod(), responseObserver);
    }

    /**
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public void invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInviteMethod(), responseObserver);
    }

    /**
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public void invitationStatus(trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInvitationStatusMethod(), responseObserver);
    }

    /**
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public void getOberonKey(trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetOberonKeyMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getCreateEcosystemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
                trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>(
                  this, METHODID_CREATE_ECOSYSTEM)))
          .addMethod(
            getGenerateTokenMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
                trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>(
                  this, METHODID_GENERATE_TOKEN)))
          .addMethod(
            getInviteMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
                trinsic.services.common.v1.ProviderOuterClass.InviteResponse>(
                  this, METHODID_INVITE)))
          .addMethod(
            getInvitationStatusMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
                trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>(
                  this, METHODID_INVITATION_STATUS)))
          .addMethod(
            getGetOberonKeyMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
                trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>(
                  this, METHODID_GET_OBERON_KEY)))
          .build();
    }
  }

  /**
   */
  public static final class ProviderStub extends io.grpc.stub.AbstractAsyncStub<ProviderStub> {
    private ProviderStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ProviderStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new ProviderStub(channel, callOptions);
    }

    /**
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public void createEcosystem(trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateEcosystemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public void generateToken(trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGenerateTokenMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public void invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public void invitationStatus(trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInvitationStatusMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public void getOberonKey(trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetOberonKeyMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class ProviderBlockingStub extends io.grpc.stub.AbstractBlockingStub<ProviderBlockingStub> {
    private ProviderBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ProviderBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new ProviderBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse createEcosystem(trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateEcosystemMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse generateToken(trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGenerateTokenMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.InviteResponse invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInviteMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse invitationStatus(trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInvitationStatusMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse getOberonKey(trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetOberonKeyMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class ProviderFutureStub extends io.grpc.stub.AbstractFutureStub<ProviderFutureStub> {
    private ProviderFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ProviderFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new ProviderFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse> createEcosystem(
        trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateEcosystemMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse> generateToken(
        trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGenerateTokenMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.InviteResponse> invite(
        trinsic.services.common.v1.ProviderOuterClass.InviteRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse> invitationStatus(
        trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInvitationStatusMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse> getOberonKey(
        trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetOberonKeyMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_CREATE_ECOSYSTEM = 0;
  private static final int METHODID_GENERATE_TOKEN = 1;
  private static final int METHODID_INVITE = 2;
  private static final int METHODID_INVITATION_STATUS = 3;
  private static final int METHODID_GET_OBERON_KEY = 4;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final ProviderImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(ProviderImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_CREATE_ECOSYSTEM:
          serviceImpl.createEcosystem((trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>) responseObserver);
          break;
        case METHODID_GENERATE_TOKEN:
          serviceImpl.generateToken((trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>) responseObserver);
          break;
        case METHODID_INVITE:
          serviceImpl.invite((trinsic.services.common.v1.ProviderOuterClass.InviteRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse>) responseObserver);
          break;
        case METHODID_INVITATION_STATUS:
          serviceImpl.invitationStatus((trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>) responseObserver);
          break;
        case METHODID_GET_OBERON_KEY:
          serviceImpl.getOberonKey((trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>) responseObserver);
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

  private static abstract class ProviderBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    ProviderBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.common.v1.ProviderOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Provider");
    }
  }

  private static final class ProviderFileDescriptorSupplier
      extends ProviderBaseDescriptorSupplier {
    ProviderFileDescriptorSupplier() {}
  }

  private static final class ProviderMethodDescriptorSupplier
      extends ProviderBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    ProviderMethodDescriptorSupplier(String methodName) {
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
      synchronized (ProviderGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new ProviderFileDescriptorSupplier())
              .addMethod(getCreateEcosystemMethod())
              .addMethod(getGenerateTokenMethod())
              .addMethod(getInviteMethod())
              .addMethod(getInvitationStatusMethod())
              .addMethod(getGetOberonKeyMethod())
              .build();
        }
      }
    }
    return result;
  }
}
