package trinsic.services;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.39.0)",
    comments = "Source: IssuerService.proto")
public final class CredentialGrpc {

  private CredentialGrpc() {}

  public static final String SERVICE_NAME = "trinsic.services.Credential";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.IssuerService.IssueRequest,
      trinsic.services.IssuerService.IssueResponse> getIssueMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Issue",
      requestType = trinsic.services.IssuerService.IssueRequest.class,
      responseType = trinsic.services.IssuerService.IssueResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.IssuerService.IssueRequest,
      trinsic.services.IssuerService.IssueResponse> getIssueMethod() {
    io.grpc.MethodDescriptor<trinsic.services.IssuerService.IssueRequest, trinsic.services.IssuerService.IssueResponse> getIssueMethod;
    if ((getIssueMethod = CredentialGrpc.getIssueMethod) == null) {
      synchronized (CredentialGrpc.class) {
        if ((getIssueMethod = CredentialGrpc.getIssueMethod) == null) {
          CredentialGrpc.getIssueMethod = getIssueMethod =
              io.grpc.MethodDescriptor.<trinsic.services.IssuerService.IssueRequest, trinsic.services.IssuerService.IssueResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Issue"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.IssueRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.IssueResponse.getDefaultInstance()))
              .setSchemaDescriptor(new CredentialMethodDescriptorSupplier("Issue"))
              .build();
        }
      }
    }
    return getIssueMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.IssuerService.CreateProofRequest,
      trinsic.services.IssuerService.CreateProofResponse> getCreateProofMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateProof",
      requestType = trinsic.services.IssuerService.CreateProofRequest.class,
      responseType = trinsic.services.IssuerService.CreateProofResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.IssuerService.CreateProofRequest,
      trinsic.services.IssuerService.CreateProofResponse> getCreateProofMethod() {
    io.grpc.MethodDescriptor<trinsic.services.IssuerService.CreateProofRequest, trinsic.services.IssuerService.CreateProofResponse> getCreateProofMethod;
    if ((getCreateProofMethod = CredentialGrpc.getCreateProofMethod) == null) {
      synchronized (CredentialGrpc.class) {
        if ((getCreateProofMethod = CredentialGrpc.getCreateProofMethod) == null) {
          CredentialGrpc.getCreateProofMethod = getCreateProofMethod =
              io.grpc.MethodDescriptor.<trinsic.services.IssuerService.CreateProofRequest, trinsic.services.IssuerService.CreateProofResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateProof"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.CreateProofRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.CreateProofResponse.getDefaultInstance()))
              .setSchemaDescriptor(new CredentialMethodDescriptorSupplier("CreateProof"))
              .build();
        }
      }
    }
    return getCreateProofMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.IssuerService.VerifyProofRequest,
      trinsic.services.IssuerService.VerifyProofResponse> getVerifyProofMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "VerifyProof",
      requestType = trinsic.services.IssuerService.VerifyProofRequest.class,
      responseType = trinsic.services.IssuerService.VerifyProofResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.IssuerService.VerifyProofRequest,
      trinsic.services.IssuerService.VerifyProofResponse> getVerifyProofMethod() {
    io.grpc.MethodDescriptor<trinsic.services.IssuerService.VerifyProofRequest, trinsic.services.IssuerService.VerifyProofResponse> getVerifyProofMethod;
    if ((getVerifyProofMethod = CredentialGrpc.getVerifyProofMethod) == null) {
      synchronized (CredentialGrpc.class) {
        if ((getVerifyProofMethod = CredentialGrpc.getVerifyProofMethod) == null) {
          CredentialGrpc.getVerifyProofMethod = getVerifyProofMethod =
              io.grpc.MethodDescriptor.<trinsic.services.IssuerService.VerifyProofRequest, trinsic.services.IssuerService.VerifyProofResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "VerifyProof"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.VerifyProofRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.VerifyProofResponse.getDefaultInstance()))
              .setSchemaDescriptor(new CredentialMethodDescriptorSupplier("VerifyProof"))
              .build();
        }
      }
    }
    return getVerifyProofMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.IssuerService.SendRequest,
      trinsic.services.IssuerService.SendResponse> getSendMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Send",
      requestType = trinsic.services.IssuerService.SendRequest.class,
      responseType = trinsic.services.IssuerService.SendResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.IssuerService.SendRequest,
      trinsic.services.IssuerService.SendResponse> getSendMethod() {
    io.grpc.MethodDescriptor<trinsic.services.IssuerService.SendRequest, trinsic.services.IssuerService.SendResponse> getSendMethod;
    if ((getSendMethod = CredentialGrpc.getSendMethod) == null) {
      synchronized (CredentialGrpc.class) {
        if ((getSendMethod = CredentialGrpc.getSendMethod) == null) {
          CredentialGrpc.getSendMethod = getSendMethod =
              io.grpc.MethodDescriptor.<trinsic.services.IssuerService.SendRequest, trinsic.services.IssuerService.SendResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Send"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.SendRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.IssuerService.SendResponse.getDefaultInstance()))
              .setSchemaDescriptor(new CredentialMethodDescriptorSupplier("Send"))
              .build();
        }
      }
    }
    return getSendMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static CredentialStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<CredentialStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<CredentialStub>() {
        @java.lang.Override
        public CredentialStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new CredentialStub(channel, callOptions);
        }
      };
    return CredentialStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static CredentialBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<CredentialBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<CredentialBlockingStub>() {
        @java.lang.Override
        public CredentialBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new CredentialBlockingStub(channel, callOptions);
        }
      };
    return CredentialBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static CredentialFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<CredentialFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<CredentialFutureStub>() {
        @java.lang.Override
        public CredentialFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new CredentialFutureStub(channel, callOptions);
        }
      };
    return CredentialFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class CredentialImplBase implements io.grpc.BindableService {

    /**
     */
    public void issue(trinsic.services.IssuerService.IssueRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.IssueResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getIssueMethod(), responseObserver);
    }

    /**
     */
    public void createProof(trinsic.services.IssuerService.CreateProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.CreateProofResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCreateProofMethod(), responseObserver);
    }

    /**
     */
    public void verifyProof(trinsic.services.IssuerService.VerifyProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.VerifyProofResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getVerifyProofMethod(), responseObserver);
    }

    /**
     */
    public void send(trinsic.services.IssuerService.SendRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.SendResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSendMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getIssueMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.IssuerService.IssueRequest,
                trinsic.services.IssuerService.IssueResponse>(
                  this, METHODID_ISSUE)))
          .addMethod(
            getCreateProofMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.IssuerService.CreateProofRequest,
                trinsic.services.IssuerService.CreateProofResponse>(
                  this, METHODID_CREATE_PROOF)))
          .addMethod(
            getVerifyProofMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.IssuerService.VerifyProofRequest,
                trinsic.services.IssuerService.VerifyProofResponse>(
                  this, METHODID_VERIFY_PROOF)))
          .addMethod(
            getSendMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.IssuerService.SendRequest,
                trinsic.services.IssuerService.SendResponse>(
                  this, METHODID_SEND)))
          .build();
    }
  }

  /**
   */
  public static final class CredentialStub extends io.grpc.stub.AbstractAsyncStub<CredentialStub> {
    private CredentialStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CredentialStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new CredentialStub(channel, callOptions);
    }

    /**
     */
    public void issue(trinsic.services.IssuerService.IssueRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.IssueResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getIssueMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void createProof(trinsic.services.IssuerService.CreateProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.CreateProofResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateProofMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void verifyProof(trinsic.services.IssuerService.VerifyProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.VerifyProofResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getVerifyProofMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void send(trinsic.services.IssuerService.SendRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.IssuerService.SendResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSendMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class CredentialBlockingStub extends io.grpc.stub.AbstractBlockingStub<CredentialBlockingStub> {
    private CredentialBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CredentialBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new CredentialBlockingStub(channel, callOptions);
    }

    /**
     */
    public trinsic.services.IssuerService.IssueResponse issue(trinsic.services.IssuerService.IssueRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getIssueMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.IssuerService.CreateProofResponse createProof(trinsic.services.IssuerService.CreateProofRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateProofMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.IssuerService.VerifyProofResponse verifyProof(trinsic.services.IssuerService.VerifyProofRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getVerifyProofMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.IssuerService.SendResponse send(trinsic.services.IssuerService.SendRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSendMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class CredentialFutureStub extends io.grpc.stub.AbstractFutureStub<CredentialFutureStub> {
    private CredentialFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CredentialFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new CredentialFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.IssuerService.IssueResponse> issue(
        trinsic.services.IssuerService.IssueRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getIssueMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.IssuerService.CreateProofResponse> createProof(
        trinsic.services.IssuerService.CreateProofRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateProofMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.IssuerService.VerifyProofResponse> verifyProof(
        trinsic.services.IssuerService.VerifyProofRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getVerifyProofMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.IssuerService.SendResponse> send(
        trinsic.services.IssuerService.SendRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSendMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ISSUE = 0;
  private static final int METHODID_CREATE_PROOF = 1;
  private static final int METHODID_VERIFY_PROOF = 2;
  private static final int METHODID_SEND = 3;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final CredentialImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(CredentialImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_ISSUE:
          serviceImpl.issue((trinsic.services.IssuerService.IssueRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.IssuerService.IssueResponse>) responseObserver);
          break;
        case METHODID_CREATE_PROOF:
          serviceImpl.createProof((trinsic.services.IssuerService.CreateProofRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.IssuerService.CreateProofResponse>) responseObserver);
          break;
        case METHODID_VERIFY_PROOF:
          serviceImpl.verifyProof((trinsic.services.IssuerService.VerifyProofRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.IssuerService.VerifyProofResponse>) responseObserver);
          break;
        case METHODID_SEND:
          serviceImpl.send((trinsic.services.IssuerService.SendRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.IssuerService.SendResponse>) responseObserver);
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

  private static abstract class CredentialBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    CredentialBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.IssuerService.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Credential");
    }
  }

  private static final class CredentialFileDescriptorSupplier
      extends CredentialBaseDescriptorSupplier {
    CredentialFileDescriptorSupplier() {}
  }

  private static final class CredentialMethodDescriptorSupplier
      extends CredentialBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    CredentialMethodDescriptorSupplier(String methodName) {
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
      synchronized (CredentialGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new CredentialFileDescriptorSupplier())
              .addMethod(getIssueMethod())
              .addMethod(getCreateProofMethod())
              .addMethod(getVerifyProofMethod())
              .addMethod(getSendMethod())
              .build();
        }
      }
    }
    return result;
  }
}
