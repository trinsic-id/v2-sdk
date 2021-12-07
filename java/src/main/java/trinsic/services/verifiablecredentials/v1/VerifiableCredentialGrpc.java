package trinsic.services.verifiablecredentials.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.1)",
    comments = "Source: services/verifiable-credentials/v1/verifiable-credentials.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class VerifiableCredentialGrpc {

  private VerifiableCredentialGrpc() {}

  public static final String SERVICE_NAME = "services.verifiablecredentials.v1.VerifiableCredential";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> getIssueMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Issue",
      requestType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> getIssueMethod() {
    io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> getIssueMethod;
    if ((getIssueMethod = VerifiableCredentialGrpc.getIssueMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getIssueMethod = VerifiableCredentialGrpc.getIssueMethod) == null) {
          VerifiableCredentialGrpc.getIssueMethod = getIssueMethod =
              io.grpc.MethodDescriptor.<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Issue"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse.getDefaultInstance()))
              .setSchemaDescriptor(new VerifiableCredentialMethodDescriptorSupplier("Issue"))
              .build();
        }
      }
    }
    return getIssueMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> getIssueFromTemplateMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "IssueFromTemplate",
      requestType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> getIssueFromTemplateMethod() {
    io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> getIssueFromTemplateMethod;
    if ((getIssueFromTemplateMethod = VerifiableCredentialGrpc.getIssueFromTemplateMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getIssueFromTemplateMethod = VerifiableCredentialGrpc.getIssueFromTemplateMethod) == null) {
          VerifiableCredentialGrpc.getIssueFromTemplateMethod = getIssueFromTemplateMethod =
              io.grpc.MethodDescriptor.<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "IssueFromTemplate"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse.getDefaultInstance()))
              .setSchemaDescriptor(new VerifiableCredentialMethodDescriptorSupplier("IssueFromTemplate"))
              .build();
        }
      }
    }
    return getIssueFromTemplateMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> getCreateProofMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateProof",
      requestType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> getCreateProofMethod() {
    io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> getCreateProofMethod;
    if ((getCreateProofMethod = VerifiableCredentialGrpc.getCreateProofMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getCreateProofMethod = VerifiableCredentialGrpc.getCreateProofMethod) == null) {
          VerifiableCredentialGrpc.getCreateProofMethod = getCreateProofMethod =
              io.grpc.MethodDescriptor.<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateProof"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse.getDefaultInstance()))
              .setSchemaDescriptor(new VerifiableCredentialMethodDescriptorSupplier("CreateProof"))
              .build();
        }
      }
    }
    return getCreateProofMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> getVerifyProofMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "VerifyProof",
      requestType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> getVerifyProofMethod() {
    io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> getVerifyProofMethod;
    if ((getVerifyProofMethod = VerifiableCredentialGrpc.getVerifyProofMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getVerifyProofMethod = VerifiableCredentialGrpc.getVerifyProofMethod) == null) {
          VerifiableCredentialGrpc.getVerifyProofMethod = getVerifyProofMethod =
              io.grpc.MethodDescriptor.<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "VerifyProof"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse.getDefaultInstance()))
              .setSchemaDescriptor(new VerifiableCredentialMethodDescriptorSupplier("VerifyProof"))
              .build();
        }
      }
    }
    return getVerifyProofMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> getSendMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Send",
      requestType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest,
      trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> getSendMethod() {
    io.grpc.MethodDescriptor<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> getSendMethod;
    if ((getSendMethod = VerifiableCredentialGrpc.getSendMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getSendMethod = VerifiableCredentialGrpc.getSendMethod) == null) {
          VerifiableCredentialGrpc.getSendMethod = getSendMethod =
              io.grpc.MethodDescriptor.<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest, trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Send"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse.getDefaultInstance()))
              .setSchemaDescriptor(new VerifiableCredentialMethodDescriptorSupplier("Send"))
              .build();
        }
      }
    }
    return getSendMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static VerifiableCredentialStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialStub>() {
        @java.lang.Override
        public VerifiableCredentialStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new VerifiableCredentialStub(channel, callOptions);
        }
      };
    return VerifiableCredentialStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static VerifiableCredentialBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialBlockingStub>() {
        @java.lang.Override
        public VerifiableCredentialBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new VerifiableCredentialBlockingStub(channel, callOptions);
        }
      };
    return VerifiableCredentialBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static VerifiableCredentialFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialFutureStub>() {
        @java.lang.Override
        public VerifiableCredentialFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new VerifiableCredentialFutureStub(channel, callOptions);
        }
      };
    return VerifiableCredentialFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class VerifiableCredentialImplBase implements io.grpc.BindableService {

    /**
     */
    public void issue(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getIssueMethod(), responseObserver);
    }

    /**
     */
    public void issueFromTemplate(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getIssueFromTemplateMethod(), responseObserver);
    }

    /**
     */
    public void createProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCreateProofMethod(), responseObserver);
    }

    /**
     */
    public void verifyProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getVerifyProofMethod(), responseObserver);
    }

    /**
     */
    public void send(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSendMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getIssueMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest,
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse>(
                  this, METHODID_ISSUE)))
          .addMethod(
            getIssueFromTemplateMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest,
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse>(
                  this, METHODID_ISSUE_FROM_TEMPLATE)))
          .addMethod(
            getCreateProofMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest,
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse>(
                  this, METHODID_CREATE_PROOF)))
          .addMethod(
            getVerifyProofMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest,
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse>(
                  this, METHODID_VERIFY_PROOF)))
          .addMethod(
            getSendMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest,
                trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse>(
                  this, METHODID_SEND)))
          .build();
    }
  }

  /**
   */
  public static final class VerifiableCredentialStub extends io.grpc.stub.AbstractAsyncStub<VerifiableCredentialStub> {
    private VerifiableCredentialStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected VerifiableCredentialStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new VerifiableCredentialStub(channel, callOptions);
    }

    /**
     */
    public void issue(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getIssueMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void issueFromTemplate(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getIssueFromTemplateMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void createProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateProofMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void verifyProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getVerifyProofMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void send(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSendMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class VerifiableCredentialBlockingStub extends io.grpc.stub.AbstractBlockingStub<VerifiableCredentialBlockingStub> {
    private VerifiableCredentialBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected VerifiableCredentialBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new VerifiableCredentialBlockingStub(channel, callOptions);
    }

    /**
     */
    public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse issue(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getIssueMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse issueFromTemplate(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getIssueFromTemplateMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse createProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateProofMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse verifyProof(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getVerifyProofMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse send(trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSendMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class VerifiableCredentialFutureStub extends io.grpc.stub.AbstractFutureStub<VerifiableCredentialFutureStub> {
    private VerifiableCredentialFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected VerifiableCredentialFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new VerifiableCredentialFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> issue(
        trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getIssueMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse> issueFromTemplate(
        trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getIssueFromTemplateMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse> createProof(
        trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateProofMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse> verifyProof(
        trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getVerifyProofMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse> send(
        trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSendMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ISSUE = 0;
  private static final int METHODID_ISSUE_FROM_TEMPLATE = 1;
  private static final int METHODID_CREATE_PROOF = 2;
  private static final int METHODID_VERIFY_PROOF = 3;
  private static final int METHODID_SEND = 4;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final VerifiableCredentialImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(VerifiableCredentialImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_ISSUE:
          serviceImpl.issue((trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse>) responseObserver);
          break;
        case METHODID_ISSUE_FROM_TEMPLATE:
          serviceImpl.issueFromTemplate((trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueFromTemplateRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.IssueResponse>) responseObserver);
          break;
        case METHODID_CREATE_PROOF:
          serviceImpl.createProof((trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.CreateProofResponse>) responseObserver);
          break;
        case METHODID_VERIFY_PROOF:
          serviceImpl.verifyProof((trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.VerifyProofResponse>) responseObserver);
          break;
        case METHODID_SEND:
          serviceImpl.send((trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifiableCredentials.SendResponse>) responseObserver);
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

  private static abstract class VerifiableCredentialBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    VerifiableCredentialBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.verifiablecredentials.v1.VerifiableCredentials.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("VerifiableCredential");
    }
  }

  private static final class VerifiableCredentialFileDescriptorSupplier
      extends VerifiableCredentialBaseDescriptorSupplier {
    VerifiableCredentialFileDescriptorSupplier() {}
  }

  private static final class VerifiableCredentialMethodDescriptorSupplier
      extends VerifiableCredentialBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    VerifiableCredentialMethodDescriptorSupplier(String methodName) {
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
      synchronized (VerifiableCredentialGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new VerifiableCredentialFileDescriptorSupplier())
              .addMethod(getIssueMethod())
              .addMethod(getIssueFromTemplateMethod())
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
