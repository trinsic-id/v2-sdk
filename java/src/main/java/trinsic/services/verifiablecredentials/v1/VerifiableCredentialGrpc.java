package trinsic.services.verifiablecredentials.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/** */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.49.2)",
    comments = "Source: services/verifiable-credentials/v1/verifiable-credentials.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class VerifiableCredentialGrpc {

  private VerifiableCredentialGrpc() {}

  public static final String SERVICE_NAME =
      "services.verifiablecredentials.v1.VerifiableCredential";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.IssueRequest,
          trinsic.services.verifiablecredentials.v1.IssueResponse>
      getIssueMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Issue",
      requestType = trinsic.services.verifiablecredentials.v1.IssueRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.IssueResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.IssueRequest,
          trinsic.services.verifiablecredentials.v1.IssueResponse>
      getIssueMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.IssueRequest,
            trinsic.services.verifiablecredentials.v1.IssueResponse>
        getIssueMethod;
    if ((getIssueMethod = VerifiableCredentialGrpc.getIssueMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getIssueMethod = VerifiableCredentialGrpc.getIssueMethod) == null) {
          VerifiableCredentialGrpc.getIssueMethod =
              getIssueMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.IssueRequest,
                          trinsic.services.verifiablecredentials.v1.IssueResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Issue"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.IssueRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.IssueResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new VerifiableCredentialMethodDescriptorSupplier("Issue"))
                      .build();
        }
      }
    }
    return getIssueMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest,
          trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
      getIssueFromTemplateMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "IssueFromTemplate",
      requestType = trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest,
          trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
      getIssueFromTemplateMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest,
            trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
        getIssueFromTemplateMethod;
    if ((getIssueFromTemplateMethod = VerifiableCredentialGrpc.getIssueFromTemplateMethod)
        == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getIssueFromTemplateMethod = VerifiableCredentialGrpc.getIssueFromTemplateMethod)
            == null) {
          VerifiableCredentialGrpc.getIssueFromTemplateMethod =
              getIssueFromTemplateMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest,
                          trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "IssueFromTemplate"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new VerifiableCredentialMethodDescriptorSupplier("IssueFromTemplate"))
                      .build();
        }
      }
    }
    return getIssueFromTemplateMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.CheckStatusRequest,
          trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
      getCheckStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CheckStatus",
      requestType = trinsic.services.verifiablecredentials.v1.CheckStatusRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.CheckStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.CheckStatusRequest,
          trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
      getCheckStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.CheckStatusRequest,
            trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
        getCheckStatusMethod;
    if ((getCheckStatusMethod = VerifiableCredentialGrpc.getCheckStatusMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getCheckStatusMethod = VerifiableCredentialGrpc.getCheckStatusMethod) == null) {
          VerifiableCredentialGrpc.getCheckStatusMethod =
              getCheckStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.CheckStatusRequest,
                          trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CheckStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.CheckStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.CheckStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new VerifiableCredentialMethodDescriptorSupplier("CheckStatus"))
                      .build();
        }
      }
    }
    return getCheckStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.UpdateStatusRequest,
          trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
      getUpdateStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UpdateStatus",
      requestType = trinsic.services.verifiablecredentials.v1.UpdateStatusRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.UpdateStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.UpdateStatusRequest,
          trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
      getUpdateStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.UpdateStatusRequest,
            trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
        getUpdateStatusMethod;
    if ((getUpdateStatusMethod = VerifiableCredentialGrpc.getUpdateStatusMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getUpdateStatusMethod = VerifiableCredentialGrpc.getUpdateStatusMethod) == null) {
          VerifiableCredentialGrpc.getUpdateStatusMethod =
              getUpdateStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.UpdateStatusRequest,
                          trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UpdateStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.UpdateStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.UpdateStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new VerifiableCredentialMethodDescriptorSupplier("UpdateStatus"))
                      .build();
        }
      }
    }
    return getUpdateStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.CreateProofRequest,
          trinsic.services.verifiablecredentials.v1.CreateProofResponse>
      getCreateProofMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateProof",
      requestType = trinsic.services.verifiablecredentials.v1.CreateProofRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.CreateProofResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.CreateProofRequest,
          trinsic.services.verifiablecredentials.v1.CreateProofResponse>
      getCreateProofMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.CreateProofRequest,
            trinsic.services.verifiablecredentials.v1.CreateProofResponse>
        getCreateProofMethod;
    if ((getCreateProofMethod = VerifiableCredentialGrpc.getCreateProofMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getCreateProofMethod = VerifiableCredentialGrpc.getCreateProofMethod) == null) {
          VerifiableCredentialGrpc.getCreateProofMethod =
              getCreateProofMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.CreateProofRequest,
                          trinsic.services.verifiablecredentials.v1.CreateProofResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateProof"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.CreateProofRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.CreateProofResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new VerifiableCredentialMethodDescriptorSupplier("CreateProof"))
                      .build();
        }
      }
    }
    return getCreateProofMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.VerifyProofRequest,
          trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
      getVerifyProofMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "VerifyProof",
      requestType = trinsic.services.verifiablecredentials.v1.VerifyProofRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.VerifyProofResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.VerifyProofRequest,
          trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
      getVerifyProofMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.VerifyProofRequest,
            trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
        getVerifyProofMethod;
    if ((getVerifyProofMethod = VerifiableCredentialGrpc.getVerifyProofMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getVerifyProofMethod = VerifiableCredentialGrpc.getVerifyProofMethod) == null) {
          VerifiableCredentialGrpc.getVerifyProofMethod =
              getVerifyProofMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.VerifyProofRequest,
                          trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "VerifyProof"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.VerifyProofRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.VerifyProofResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new VerifiableCredentialMethodDescriptorSupplier("VerifyProof"))
                      .build();
        }
      }
    }
    return getVerifyProofMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.SendRequest,
          trinsic.services.verifiablecredentials.v1.SendResponse>
      getSendMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Send",
      requestType = trinsic.services.verifiablecredentials.v1.SendRequest.class,
      responseType = trinsic.services.verifiablecredentials.v1.SendResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.verifiablecredentials.v1.SendRequest,
          trinsic.services.verifiablecredentials.v1.SendResponse>
      getSendMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.verifiablecredentials.v1.SendRequest,
            trinsic.services.verifiablecredentials.v1.SendResponse>
        getSendMethod;
    if ((getSendMethod = VerifiableCredentialGrpc.getSendMethod) == null) {
      synchronized (VerifiableCredentialGrpc.class) {
        if ((getSendMethod = VerifiableCredentialGrpc.getSendMethod) == null) {
          VerifiableCredentialGrpc.getSendMethod =
              getSendMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.verifiablecredentials.v1.SendRequest,
                          trinsic.services.verifiablecredentials.v1.SendResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Send"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.SendRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.verifiablecredentials.v1.SendResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new VerifiableCredentialMethodDescriptorSupplier("Send"))
                      .build();
        }
      }
    }
    return getSendMethod;
  }

  /** Creates a new async stub that supports all call types for the service */
  public static VerifiableCredentialStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialStub>() {
          @java.lang.Override
          public VerifiableCredentialStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new VerifiableCredentialStub(channel, callOptions);
          }
        };
    return VerifiableCredentialStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static VerifiableCredentialBlockingStub newBlockingStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialBlockingStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialBlockingStub>() {
          @java.lang.Override
          public VerifiableCredentialBlockingStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new VerifiableCredentialBlockingStub(channel, callOptions);
          }
        };
    return VerifiableCredentialBlockingStub.newStub(factory, channel);
  }

  /** Creates a new ListenableFuture-style stub that supports unary calls on the service */
  public static VerifiableCredentialFutureStub newFutureStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialFutureStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<VerifiableCredentialFutureStub>() {
          @java.lang.Override
          public VerifiableCredentialFutureStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new VerifiableCredentialFutureStub(channel, callOptions);
          }
        };
    return VerifiableCredentialFutureStub.newStub(factory, channel);
  }

  /** */
  public abstract static class VerifiableCredentialImplBase implements io.grpc.BindableService {

    /**
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a submitted document.
     * The document must be a valid JSON-LD document.
     * </pre>
     */
    public void issue(
        trinsic.services.verifiablecredentials.v1.IssueRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.IssueResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getIssueMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a pre-defined template.
     * This process will also add schema validation and
     * revocation registry values to the credential.
     * </pre>
     */
    public void issueFromTemplate(
        trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getIssueFromTemplateMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Check credential status in the revocation registry
     * </pre>
     */
    public void checkStatus(
        trinsic.services.verifiablecredentials.v1.CheckStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getCheckStatusMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Update credential status by setting the revocation value
     * </pre>
     */
    public void updateStatus(
        trinsic.services.verifiablecredentials.v1.UpdateStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getUpdateStatusMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Create a proof from a signed document that is a valid
     * verifiable credential and contains a signature from which a proof can be derived.
     * </pre>
     */
    public void createProof(
        trinsic.services.verifiablecredentials.v1.CreateProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.CreateProofResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getCreateProofMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Verifies a proof by checking the signature value, and if possible schema validation,
     * revocation status, and issuer status against a trust registry
     * </pre>
     */
    public void verifyProof(
        trinsic.services.verifiablecredentials.v1.VerifyProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getVerifyProofMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Sends a document directly to a user's email within the given ecosystem
     * </pre>
     */
    public void send(
        trinsic.services.verifiablecredentials.v1.SendRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.SendResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSendMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getIssueMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.IssueRequest,
                      trinsic.services.verifiablecredentials.v1.IssueResponse>(
                      this, METHODID_ISSUE)))
          .addMethod(
              getIssueFromTemplateMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest,
                      trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>(
                      this, METHODID_ISSUE_FROM_TEMPLATE)))
          .addMethod(
              getCheckStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.CheckStatusRequest,
                      trinsic.services.verifiablecredentials.v1.CheckStatusResponse>(
                      this, METHODID_CHECK_STATUS)))
          .addMethod(
              getUpdateStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.UpdateStatusRequest,
                      trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>(
                      this, METHODID_UPDATE_STATUS)))
          .addMethod(
              getCreateProofMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.CreateProofRequest,
                      trinsic.services.verifiablecredentials.v1.CreateProofResponse>(
                      this, METHODID_CREATE_PROOF)))
          .addMethod(
              getVerifyProofMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.VerifyProofRequest,
                      trinsic.services.verifiablecredentials.v1.VerifyProofResponse>(
                      this, METHODID_VERIFY_PROOF)))
          .addMethod(
              getSendMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.verifiablecredentials.v1.SendRequest,
                      trinsic.services.verifiablecredentials.v1.SendResponse>(this, METHODID_SEND)))
          .build();
    }
  }

  /** */
  public static final class VerifiableCredentialStub
      extends io.grpc.stub.AbstractAsyncStub<VerifiableCredentialStub> {
    private VerifiableCredentialStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected VerifiableCredentialStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new VerifiableCredentialStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a submitted document.
     * The document must be a valid JSON-LD document.
     * </pre>
     */
    public void issue(
        trinsic.services.verifiablecredentials.v1.IssueRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.IssueResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getIssueMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a pre-defined template.
     * This process will also add schema validation and
     * revocation registry values to the credential.
     * </pre>
     */
    public void issueFromTemplate(
        trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getIssueFromTemplateMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Check credential status in the revocation registry
     * </pre>
     */
    public void checkStatus(
        trinsic.services.verifiablecredentials.v1.CheckStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCheckStatusMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Update credential status by setting the revocation value
     * </pre>
     */
    public void updateStatus(
        trinsic.services.verifiablecredentials.v1.UpdateStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUpdateStatusMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Create a proof from a signed document that is a valid
     * verifiable credential and contains a signature from which a proof can be derived.
     * </pre>
     */
    public void createProof(
        trinsic.services.verifiablecredentials.v1.CreateProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.CreateProofResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateProofMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Verifies a proof by checking the signature value, and if possible schema validation,
     * revocation status, and issuer status against a trust registry
     * </pre>
     */
    public void verifyProof(
        trinsic.services.verifiablecredentials.v1.VerifyProofRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getVerifyProofMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Sends a document directly to a user's email within the given ecosystem
     * </pre>
     */
    public void send(
        trinsic.services.verifiablecredentials.v1.SendRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.SendResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSendMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /** */
  public static final class VerifiableCredentialBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<VerifiableCredentialBlockingStub> {
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
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a submitted document.
     * The document must be a valid JSON-LD document.
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.IssueResponse issue(
        trinsic.services.verifiablecredentials.v1.IssueRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getIssueMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a pre-defined template.
     * This process will also add schema validation and
     * revocation registry values to the credential.
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse issueFromTemplate(
        trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getIssueFromTemplateMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Check credential status in the revocation registry
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.CheckStatusResponse checkStatus(
        trinsic.services.verifiablecredentials.v1.CheckStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCheckStatusMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Update credential status by setting the revocation value
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.UpdateStatusResponse updateStatus(
        trinsic.services.verifiablecredentials.v1.UpdateStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpdateStatusMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Create a proof from a signed document that is a valid
     * verifiable credential and contains a signature from which a proof can be derived.
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.CreateProofResponse createProof(
        trinsic.services.verifiablecredentials.v1.CreateProofRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateProofMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Verifies a proof by checking the signature value, and if possible schema validation,
     * revocation status, and issuer status against a trust registry
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.VerifyProofResponse verifyProof(
        trinsic.services.verifiablecredentials.v1.VerifyProofRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getVerifyProofMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Sends a document directly to a user's email within the given ecosystem
     * </pre>
     */
    public trinsic.services.verifiablecredentials.v1.SendResponse send(
        trinsic.services.verifiablecredentials.v1.SendRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSendMethod(), getCallOptions(), request);
    }
  }

  /** */
  public static final class VerifiableCredentialFutureStub
      extends io.grpc.stub.AbstractFutureStub<VerifiableCredentialFutureStub> {
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
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a submitted document.
     * The document must be a valid JSON-LD document.
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.IssueResponse>
        issue(trinsic.services.verifiablecredentials.v1.IssueRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getIssueMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Sign and issue a verifiable credential from a pre-defined template.
     * This process will also add schema validation and
     * revocation registry values to the credential.
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>
        issueFromTemplate(
            trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getIssueFromTemplateMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Check credential status in the revocation registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.CheckStatusResponse>
        checkStatus(trinsic.services.verifiablecredentials.v1.CheckStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCheckStatusMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Update credential status by setting the revocation value
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>
        updateStatus(trinsic.services.verifiablecredentials.v1.UpdateStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpdateStatusMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Create a proof from a signed document that is a valid
     * verifiable credential and contains a signature from which a proof can be derived.
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.CreateProofResponse>
        createProof(trinsic.services.verifiablecredentials.v1.CreateProofRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateProofMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Verifies a proof by checking the signature value, and if possible schema validation,
     * revocation status, and issuer status against a trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.VerifyProofResponse>
        verifyProof(trinsic.services.verifiablecredentials.v1.VerifyProofRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getVerifyProofMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Sends a document directly to a user's email within the given ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.verifiablecredentials.v1.SendResponse>
        send(trinsic.services.verifiablecredentials.v1.SendRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSendMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ISSUE = 0;
  private static final int METHODID_ISSUE_FROM_TEMPLATE = 1;
  private static final int METHODID_CHECK_STATUS = 2;
  private static final int METHODID_UPDATE_STATUS = 3;
  private static final int METHODID_CREATE_PROOF = 4;
  private static final int METHODID_VERIFY_PROOF = 5;
  private static final int METHODID_SEND = 6;

  private static final class MethodHandlers<Req, Resp>
      implements io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
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
          serviceImpl.issue(
              (trinsic.services.verifiablecredentials.v1.IssueRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.IssueResponse>)
                  responseObserver);
          break;
        case METHODID_ISSUE_FROM_TEMPLATE:
          serviceImpl.issueFromTemplate(
              (trinsic.services.verifiablecredentials.v1.IssueFromTemplateRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.verifiablecredentials.v1.IssueFromTemplateResponse>)
                  responseObserver);
          break;
        case METHODID_CHECK_STATUS:
          serviceImpl.checkStatus(
              (trinsic.services.verifiablecredentials.v1.CheckStatusRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.verifiablecredentials.v1.CheckStatusResponse>)
                  responseObserver);
          break;
        case METHODID_UPDATE_STATUS:
          serviceImpl.updateStatus(
              (trinsic.services.verifiablecredentials.v1.UpdateStatusRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.verifiablecredentials.v1.UpdateStatusResponse>)
                  responseObserver);
          break;
        case METHODID_CREATE_PROOF:
          serviceImpl.createProof(
              (trinsic.services.verifiablecredentials.v1.CreateProofRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.verifiablecredentials.v1.CreateProofResponse>)
                  responseObserver);
          break;
        case METHODID_VERIFY_PROOF:
          serviceImpl.verifyProof(
              (trinsic.services.verifiablecredentials.v1.VerifyProofRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.verifiablecredentials.v1.VerifyProofResponse>)
                  responseObserver);
          break;
        case METHODID_SEND:
          serviceImpl.send(
              (trinsic.services.verifiablecredentials.v1.SendRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.verifiablecredentials.v1.SendResponse>)
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

  private abstract static class VerifiableCredentialBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier,
          io.grpc.protobuf.ProtoServiceDescriptorSupplier {
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
          serviceDescriptor =
              result =
                  io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
                      .setSchemaDescriptor(new VerifiableCredentialFileDescriptorSupplier())
                      .addMethod(getIssueMethod())
                      .addMethod(getIssueFromTemplateMethod())
                      .addMethod(getCheckStatusMethod())
                      .addMethod(getUpdateStatusMethod())
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
