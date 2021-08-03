package trinsic.services;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.39.0)",
    comments = "Source: ProviderService.proto")
public final class ProviderGrpc {

  private ProviderGrpc() {}

  public static final String SERVICE_NAME = "trinsic.services.Provider";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.ProviderService.InviteRequest,
      trinsic.services.ProviderService.InviteResponse> getInviteMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Invite",
      requestType = trinsic.services.ProviderService.InviteRequest.class,
      responseType = trinsic.services.ProviderService.InviteResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.ProviderService.InviteRequest,
      trinsic.services.ProviderService.InviteResponse> getInviteMethod() {
    io.grpc.MethodDescriptor<trinsic.services.ProviderService.InviteRequest, trinsic.services.ProviderService.InviteResponse> getInviteMethod;
    if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
          ProviderGrpc.getInviteMethod = getInviteMethod =
              io.grpc.MethodDescriptor.<trinsic.services.ProviderService.InviteRequest, trinsic.services.ProviderService.InviteResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Invite"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.ProviderService.InviteRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.ProviderService.InviteResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("Invite"))
              .build();
        }
      }
    }
    return getInviteMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.ProviderService.InviteRequest,
      trinsic.services.ProviderService.InviteResponse> getInviteWithWorkflowMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InviteWithWorkflow",
      requestType = trinsic.services.ProviderService.InviteRequest.class,
      responseType = trinsic.services.ProviderService.InviteResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.ProviderService.InviteRequest,
      trinsic.services.ProviderService.InviteResponse> getInviteWithWorkflowMethod() {
    io.grpc.MethodDescriptor<trinsic.services.ProviderService.InviteRequest, trinsic.services.ProviderService.InviteResponse> getInviteWithWorkflowMethod;
    if ((getInviteWithWorkflowMethod = ProviderGrpc.getInviteWithWorkflowMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInviteWithWorkflowMethod = ProviderGrpc.getInviteWithWorkflowMethod) == null) {
          ProviderGrpc.getInviteWithWorkflowMethod = getInviteWithWorkflowMethod =
              io.grpc.MethodDescriptor.<trinsic.services.ProviderService.InviteRequest, trinsic.services.ProviderService.InviteResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InviteWithWorkflow"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.ProviderService.InviteRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.ProviderService.InviteResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("InviteWithWorkflow"))
              .build();
        }
      }
    }
    return getInviteWithWorkflowMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.ProviderService.InvitationStatusRequest,
      trinsic.services.ProviderService.InvitationStatusResponse> getInvitationStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InvitationStatus",
      requestType = trinsic.services.ProviderService.InvitationStatusRequest.class,
      responseType = trinsic.services.ProviderService.InvitationStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.ProviderService.InvitationStatusRequest,
      trinsic.services.ProviderService.InvitationStatusResponse> getInvitationStatusMethod() {
    io.grpc.MethodDescriptor<trinsic.services.ProviderService.InvitationStatusRequest, trinsic.services.ProviderService.InvitationStatusResponse> getInvitationStatusMethod;
    if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
          ProviderGrpc.getInvitationStatusMethod = getInvitationStatusMethod =
              io.grpc.MethodDescriptor.<trinsic.services.ProviderService.InvitationStatusRequest, trinsic.services.ProviderService.InvitationStatusResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InvitationStatus"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.ProviderService.InvitationStatusRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.ProviderService.InvitationStatusResponse.getDefaultInstance()))
              .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("InvitationStatus"))
              .build();
        }
      }
    }
    return getInvitationStatusMethod;
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
     *   rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);
     * </pre>
     */
    public void invite(trinsic.services.ProviderService.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InviteResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInviteMethod(), responseObserver);
    }

    /**
     */
    public void inviteWithWorkflow(trinsic.services.ProviderService.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InviteResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInviteWithWorkflowMethod(), responseObserver);
    }

    /**
     * <pre>
     *   rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
     *   rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);
     * </pre>
     */
    public void invitationStatus(trinsic.services.ProviderService.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InvitationStatusResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInvitationStatusMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getInviteMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.ProviderService.InviteRequest,
                trinsic.services.ProviderService.InviteResponse>(
                  this, METHODID_INVITE)))
          .addMethod(
            getInviteWithWorkflowMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.ProviderService.InviteRequest,
                trinsic.services.ProviderService.InviteResponse>(
                  this, METHODID_INVITE_WITH_WORKFLOW)))
          .addMethod(
            getInvitationStatusMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.ProviderService.InvitationStatusRequest,
                trinsic.services.ProviderService.InvitationStatusResponse>(
                  this, METHODID_INVITATION_STATUS)))
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
     *   rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);
     * </pre>
     */
    public void invite(trinsic.services.ProviderService.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InviteResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void inviteWithWorkflow(trinsic.services.ProviderService.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InviteResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInviteWithWorkflowMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     *   rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
     *   rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);
     * </pre>
     */
    public void invitationStatus(trinsic.services.ProviderService.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InvitationStatusResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInvitationStatusMethod(), getCallOptions()), request, responseObserver);
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
     *   rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);
     * </pre>
     */
    public trinsic.services.ProviderService.InviteResponse invite(trinsic.services.ProviderService.InviteRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInviteMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.ProviderService.InviteResponse inviteWithWorkflow(trinsic.services.ProviderService.InviteRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInviteWithWorkflowMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     *   rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
     *   rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);
     * </pre>
     */
    public trinsic.services.ProviderService.InvitationStatusResponse invitationStatus(trinsic.services.ProviderService.InvitationStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInvitationStatusMethod(), getCallOptions(), request);
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
     *   rpc CreateOrganization(CreateOrganizationRequest) returns (CreateOrganizationResponse);
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.ProviderService.InviteResponse> invite(
        trinsic.services.ProviderService.InviteRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.ProviderService.InviteResponse> inviteWithWorkflow(
        trinsic.services.ProviderService.InviteRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInviteWithWorkflowMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     *   rpc CreateCredentialTemplate(CreateCredentialTemplateRequest) returns (CreateCredentialTemplateResponse);
     *   rpc ListCredentialTemplates(ListCredentialTemplatesRequest) returns (ListCredentialTemplatesResponse);
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.ProviderService.InvitationStatusResponse> invitationStatus(
        trinsic.services.ProviderService.InvitationStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInvitationStatusMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_INVITE = 0;
  private static final int METHODID_INVITE_WITH_WORKFLOW = 1;
  private static final int METHODID_INVITATION_STATUS = 2;

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
        case METHODID_INVITE:
          serviceImpl.invite((trinsic.services.ProviderService.InviteRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InviteResponse>) responseObserver);
          break;
        case METHODID_INVITE_WITH_WORKFLOW:
          serviceImpl.inviteWithWorkflow((trinsic.services.ProviderService.InviteRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InviteResponse>) responseObserver);
          break;
        case METHODID_INVITATION_STATUS:
          serviceImpl.invitationStatus((trinsic.services.ProviderService.InvitationStatusRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.ProviderService.InvitationStatusResponse>) responseObserver);
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
      return trinsic.services.ProviderService.getDescriptor();
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
              .addMethod(getInviteMethod())
              .addMethod(getInviteWithWorkflowMethod())
              .addMethod(getInvitationStatusMethod())
              .build();
        }
      }
    }
    return result;
  }
}
