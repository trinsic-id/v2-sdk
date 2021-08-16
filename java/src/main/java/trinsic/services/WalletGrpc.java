package trinsic.services;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.39.0)",
    comments = "Source: WalletService.proto")
public final class WalletGrpc {

  private WalletGrpc() {}

  public static final String SERVICE_NAME = "trinsic.services.Wallet";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      trinsic.services.WalletService.GetProviderConfigurationResponse> getGetProviderConfigurationMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetProviderConfiguration",
      requestType = com.google.protobuf.Empty.class,
      responseType = trinsic.services.WalletService.GetProviderConfigurationResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      trinsic.services.WalletService.GetProviderConfigurationResponse> getGetProviderConfigurationMethod() {
    io.grpc.MethodDescriptor<com.google.protobuf.Empty, trinsic.services.WalletService.GetProviderConfigurationResponse> getGetProviderConfigurationMethod;
    if ((getGetProviderConfigurationMethod = WalletGrpc.getGetProviderConfigurationMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getGetProviderConfigurationMethod = WalletGrpc.getGetProviderConfigurationMethod) == null) {
          WalletGrpc.getGetProviderConfigurationMethod = getGetProviderConfigurationMethod =
              io.grpc.MethodDescriptor.<com.google.protobuf.Empty, trinsic.services.WalletService.GetProviderConfigurationResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetProviderConfiguration"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.GetProviderConfigurationResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("GetProviderConfiguration"))
              .build();
        }
      }
    }
    return getGetProviderConfigurationMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.ConnectRequest,
      trinsic.services.WalletService.ConnectResponse> getConnectExternalIdentityMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ConnectExternalIdentity",
      requestType = trinsic.services.WalletService.ConnectRequest.class,
      responseType = trinsic.services.WalletService.ConnectResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.ConnectRequest,
      trinsic.services.WalletService.ConnectResponse> getConnectExternalIdentityMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.ConnectRequest, trinsic.services.WalletService.ConnectResponse> getConnectExternalIdentityMethod;
    if ((getConnectExternalIdentityMethod = WalletGrpc.getConnectExternalIdentityMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getConnectExternalIdentityMethod = WalletGrpc.getConnectExternalIdentityMethod) == null) {
          WalletGrpc.getConnectExternalIdentityMethod = getConnectExternalIdentityMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.ConnectRequest, trinsic.services.WalletService.ConnectResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "ConnectExternalIdentity"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.ConnectRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.ConnectResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("ConnectExternalIdentity"))
              .build();
        }
      }
    }
    return getConnectExternalIdentityMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.CreateWalletRequest,
      trinsic.services.WalletService.CreateWalletResponse> getCreateWalletMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateWallet",
      requestType = trinsic.services.WalletService.CreateWalletRequest.class,
      responseType = trinsic.services.WalletService.CreateWalletResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.CreateWalletRequest,
      trinsic.services.WalletService.CreateWalletResponse> getCreateWalletMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.CreateWalletRequest, trinsic.services.WalletService.CreateWalletResponse> getCreateWalletMethod;
    if ((getCreateWalletMethod = WalletGrpc.getCreateWalletMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getCreateWalletMethod = WalletGrpc.getCreateWalletMethod) == null) {
          WalletGrpc.getCreateWalletMethod = getCreateWalletMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.CreateWalletRequest, trinsic.services.WalletService.CreateWalletResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateWallet"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.CreateWalletRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.CreateWalletResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("CreateWallet"))
              .build();
        }
      }
    }
    return getCreateWalletMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.CreateWalletRequest,
      trinsic.services.WalletService.CreateWalletResponse> getCreateWalletWithWorkflowMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateWalletWithWorkflow",
      requestType = trinsic.services.WalletService.CreateWalletRequest.class,
      responseType = trinsic.services.WalletService.CreateWalletResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.CreateWalletRequest,
      trinsic.services.WalletService.CreateWalletResponse> getCreateWalletWithWorkflowMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.CreateWalletRequest, trinsic.services.WalletService.CreateWalletResponse> getCreateWalletWithWorkflowMethod;
    if ((getCreateWalletWithWorkflowMethod = WalletGrpc.getCreateWalletWithWorkflowMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getCreateWalletWithWorkflowMethod = WalletGrpc.getCreateWalletWithWorkflowMethod) == null) {
          WalletGrpc.getCreateWalletWithWorkflowMethod = getCreateWalletWithWorkflowMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.CreateWalletRequest, trinsic.services.WalletService.CreateWalletResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateWalletWithWorkflow"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.CreateWalletRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.CreateWalletResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("CreateWalletWithWorkflow"))
              .build();
        }
      }
    }
    return getCreateWalletWithWorkflowMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.Pbmse.EncryptedMessage,
      trinsic.services.Pbmse.EncryptedMessage> getCreateWalletEncryptedMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateWalletEncrypted",
      requestType = trinsic.services.Pbmse.EncryptedMessage.class,
      responseType = trinsic.services.Pbmse.EncryptedMessage.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.Pbmse.EncryptedMessage,
      trinsic.services.Pbmse.EncryptedMessage> getCreateWalletEncryptedMethod() {
    io.grpc.MethodDescriptor<trinsic.services.Pbmse.EncryptedMessage, trinsic.services.Pbmse.EncryptedMessage> getCreateWalletEncryptedMethod;
    if ((getCreateWalletEncryptedMethod = WalletGrpc.getCreateWalletEncryptedMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getCreateWalletEncryptedMethod = WalletGrpc.getCreateWalletEncryptedMethod) == null) {
          WalletGrpc.getCreateWalletEncryptedMethod = getCreateWalletEncryptedMethod =
              io.grpc.MethodDescriptor.<trinsic.services.Pbmse.EncryptedMessage, trinsic.services.Pbmse.EncryptedMessage>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateWalletEncrypted"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.Pbmse.EncryptedMessage.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.Pbmse.EncryptedMessage.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("CreateWalletEncrypted"))
              .build();
        }
      }
    }
    return getCreateWalletEncryptedMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.SearchRequest,
      trinsic.services.WalletService.SearchResponse> getSearchMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Search",
      requestType = trinsic.services.WalletService.SearchRequest.class,
      responseType = trinsic.services.WalletService.SearchResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.SearchRequest,
      trinsic.services.WalletService.SearchResponse> getSearchMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.SearchRequest, trinsic.services.WalletService.SearchResponse> getSearchMethod;
    if ((getSearchMethod = WalletGrpc.getSearchMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getSearchMethod = WalletGrpc.getSearchMethod) == null) {
          WalletGrpc.getSearchMethod = getSearchMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.SearchRequest, trinsic.services.WalletService.SearchResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Search"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.SearchRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.SearchResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("Search"))
              .build();
        }
      }
    }
    return getSearchMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.InsertItemRequest,
      trinsic.services.WalletService.InsertItemResponse> getInsertItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InsertItem",
      requestType = trinsic.services.WalletService.InsertItemRequest.class,
      responseType = trinsic.services.WalletService.InsertItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.InsertItemRequest,
      trinsic.services.WalletService.InsertItemResponse> getInsertItemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.InsertItemRequest, trinsic.services.WalletService.InsertItemResponse> getInsertItemMethod;
    if ((getInsertItemMethod = WalletGrpc.getInsertItemMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getInsertItemMethod = WalletGrpc.getInsertItemMethod) == null) {
          WalletGrpc.getInsertItemMethod = getInsertItemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.InsertItemRequest, trinsic.services.WalletService.InsertItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InsertItem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.InsertItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.InsertItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("InsertItem"))
              .build();
        }
      }
    }
    return getInsertItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.GrantAccessRequest,
      trinsic.services.WalletService.GrantAccessResponse> getGrantAccessMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GrantAccess",
      requestType = trinsic.services.WalletService.GrantAccessRequest.class,
      responseType = trinsic.services.WalletService.GrantAccessResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.GrantAccessRequest,
      trinsic.services.WalletService.GrantAccessResponse> getGrantAccessMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.GrantAccessRequest, trinsic.services.WalletService.GrantAccessResponse> getGrantAccessMethod;
    if ((getGrantAccessMethod = WalletGrpc.getGrantAccessMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getGrantAccessMethod = WalletGrpc.getGrantAccessMethod) == null) {
          WalletGrpc.getGrantAccessMethod = getGrantAccessMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.GrantAccessRequest, trinsic.services.WalletService.GrantAccessResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GrantAccess"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.GrantAccessRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.GrantAccessResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("GrantAccess"))
              .build();
        }
      }
    }
    return getGrantAccessMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.WalletService.RevokeAccessRequest,
      trinsic.services.WalletService.RevokeAccessResponse> getRevokeAccessMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RevokeAccess",
      requestType = trinsic.services.WalletService.RevokeAccessRequest.class,
      responseType = trinsic.services.WalletService.RevokeAccessResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.WalletService.RevokeAccessRequest,
      trinsic.services.WalletService.RevokeAccessResponse> getRevokeAccessMethod() {
    io.grpc.MethodDescriptor<trinsic.services.WalletService.RevokeAccessRequest, trinsic.services.WalletService.RevokeAccessResponse> getRevokeAccessMethod;
    if ((getRevokeAccessMethod = WalletGrpc.getRevokeAccessMethod) == null) {
      synchronized (WalletGrpc.class) {
        if ((getRevokeAccessMethod = WalletGrpc.getRevokeAccessMethod) == null) {
          WalletGrpc.getRevokeAccessMethod = getRevokeAccessMethod =
              io.grpc.MethodDescriptor.<trinsic.services.WalletService.RevokeAccessRequest, trinsic.services.WalletService.RevokeAccessResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RevokeAccess"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.RevokeAccessRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.WalletService.RevokeAccessResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletMethodDescriptorSupplier("RevokeAccess"))
              .build();
        }
      }
    }
    return getRevokeAccessMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static WalletStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<WalletStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<WalletStub>() {
        @java.lang.Override
        public WalletStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new WalletStub(channel, callOptions);
        }
      };
    return WalletStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static WalletBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<WalletBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<WalletBlockingStub>() {
        @java.lang.Override
        public WalletBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new WalletBlockingStub(channel, callOptions);
        }
      };
    return WalletBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static WalletFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<WalletFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<WalletFutureStub>() {
        @java.lang.Override
        public WalletFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new WalletFutureStub(channel, callOptions);
        }
      };
    return WalletFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class WalletImplBase implements io.grpc.BindableService {

    /**
     */
    public void getProviderConfiguration(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.GetProviderConfigurationResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetProviderConfigurationMethod(), responseObserver);
    }

    /**
     */
    public void connectExternalIdentity(trinsic.services.WalletService.ConnectRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.ConnectResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getConnectExternalIdentityMethod(), responseObserver);
    }

    /**
     */
    public void createWallet(trinsic.services.WalletService.CreateWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.CreateWalletResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCreateWalletMethod(), responseObserver);
    }

    /**
     */
    public void createWalletWithWorkflow(trinsic.services.WalletService.CreateWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.CreateWalletResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCreateWalletWithWorkflowMethod(), responseObserver);
    }

    /**
     */
    public void createWalletEncrypted(trinsic.services.Pbmse.EncryptedMessage request,
        io.grpc.stub.StreamObserver<trinsic.services.Pbmse.EncryptedMessage> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCreateWalletEncryptedMethod(), responseObserver);
    }

    /**
     */
    public void search(trinsic.services.WalletService.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.SearchResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSearchMethod(), responseObserver);
    }

    /**
     */
    public void insertItem(trinsic.services.WalletService.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.InsertItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInsertItemMethod(), responseObserver);
    }

    /**
     */
    public void grantAccess(trinsic.services.WalletService.GrantAccessRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.GrantAccessResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGrantAccessMethod(), responseObserver);
    }

    /**
     */
    public void revokeAccess(trinsic.services.WalletService.RevokeAccessRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.RevokeAccessResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRevokeAccessMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getGetProviderConfigurationMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.google.protobuf.Empty,
                trinsic.services.WalletService.GetProviderConfigurationResponse>(
                  this, METHODID_GET_PROVIDER_CONFIGURATION)))
          .addMethod(
            getConnectExternalIdentityMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.ConnectRequest,
                trinsic.services.WalletService.ConnectResponse>(
                  this, METHODID_CONNECT_EXTERNAL_IDENTITY)))
          .addMethod(
            getCreateWalletMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.CreateWalletRequest,
                trinsic.services.WalletService.CreateWalletResponse>(
                  this, METHODID_CREATE_WALLET)))
          .addMethod(
            getCreateWalletWithWorkflowMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.CreateWalletRequest,
                trinsic.services.WalletService.CreateWalletResponse>(
                  this, METHODID_CREATE_WALLET_WITH_WORKFLOW)))
          .addMethod(
            getCreateWalletEncryptedMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.Pbmse.EncryptedMessage,
                trinsic.services.Pbmse.EncryptedMessage>(
                  this, METHODID_CREATE_WALLET_ENCRYPTED)))
          .addMethod(
            getSearchMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.SearchRequest,
                trinsic.services.WalletService.SearchResponse>(
                  this, METHODID_SEARCH)))
          .addMethod(
            getInsertItemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.InsertItemRequest,
                trinsic.services.WalletService.InsertItemResponse>(
                  this, METHODID_INSERT_ITEM)))
          .addMethod(
            getGrantAccessMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.GrantAccessRequest,
                trinsic.services.WalletService.GrantAccessResponse>(
                  this, METHODID_GRANT_ACCESS)))
          .addMethod(
            getRevokeAccessMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.WalletService.RevokeAccessRequest,
                trinsic.services.WalletService.RevokeAccessResponse>(
                  this, METHODID_REVOKE_ACCESS)))
          .build();
    }
  }

  /**
   */
  public static final class WalletStub extends io.grpc.stub.AbstractAsyncStub<WalletStub> {
    private WalletStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected WalletStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new WalletStub(channel, callOptions);
    }

    /**
     */
    public void getProviderConfiguration(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.GetProviderConfigurationResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetProviderConfigurationMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void connectExternalIdentity(trinsic.services.WalletService.ConnectRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.ConnectResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getConnectExternalIdentityMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void createWallet(trinsic.services.WalletService.CreateWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.CreateWalletResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateWalletMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void createWalletWithWorkflow(trinsic.services.WalletService.CreateWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.CreateWalletResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateWalletWithWorkflowMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void createWalletEncrypted(trinsic.services.Pbmse.EncryptedMessage request,
        io.grpc.stub.StreamObserver<trinsic.services.Pbmse.EncryptedMessage> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateWalletEncryptedMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void search(trinsic.services.WalletService.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.SearchResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void insertItem(trinsic.services.WalletService.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.InsertItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void grantAccess(trinsic.services.WalletService.GrantAccessRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.GrantAccessResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGrantAccessMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void revokeAccess(trinsic.services.WalletService.RevokeAccessRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.WalletService.RevokeAccessResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRevokeAccessMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class WalletBlockingStub extends io.grpc.stub.AbstractBlockingStub<WalletBlockingStub> {
    private WalletBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected WalletBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new WalletBlockingStub(channel, callOptions);
    }

    /**
     */
    public trinsic.services.WalletService.GetProviderConfigurationResponse getProviderConfiguration(com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetProviderConfigurationMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.ConnectResponse connectExternalIdentity(trinsic.services.WalletService.ConnectRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getConnectExternalIdentityMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.CreateWalletResponse createWallet(trinsic.services.WalletService.CreateWalletRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateWalletMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.CreateWalletResponse createWalletWithWorkflow(trinsic.services.WalletService.CreateWalletRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateWalletWithWorkflowMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.Pbmse.EncryptedMessage createWalletEncrypted(trinsic.services.Pbmse.EncryptedMessage request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateWalletEncryptedMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.SearchResponse search(trinsic.services.WalletService.SearchRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.InsertItemResponse insertItem(trinsic.services.WalletService.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInsertItemMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.GrantAccessResponse grantAccess(trinsic.services.WalletService.GrantAccessRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGrantAccessMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.WalletService.RevokeAccessResponse revokeAccess(trinsic.services.WalletService.RevokeAccessRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRevokeAccessMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class WalletFutureStub extends io.grpc.stub.AbstractFutureStub<WalletFutureStub> {
    private WalletFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected WalletFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new WalletFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.GetProviderConfigurationResponse> getProviderConfiguration(
        com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetProviderConfigurationMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.ConnectResponse> connectExternalIdentity(
        trinsic.services.WalletService.ConnectRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getConnectExternalIdentityMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.CreateWalletResponse> createWallet(
        trinsic.services.WalletService.CreateWalletRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateWalletMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.CreateWalletResponse> createWalletWithWorkflow(
        trinsic.services.WalletService.CreateWalletRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateWalletWithWorkflowMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.Pbmse.EncryptedMessage> createWalletEncrypted(
        trinsic.services.Pbmse.EncryptedMessage request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateWalletEncryptedMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.SearchResponse> search(
        trinsic.services.WalletService.SearchRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.InsertItemResponse> insertItem(
        trinsic.services.WalletService.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.GrantAccessResponse> grantAccess(
        trinsic.services.WalletService.GrantAccessRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGrantAccessMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.WalletService.RevokeAccessResponse> revokeAccess(
        trinsic.services.WalletService.RevokeAccessRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRevokeAccessMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_GET_PROVIDER_CONFIGURATION = 0;
  private static final int METHODID_CONNECT_EXTERNAL_IDENTITY = 1;
  private static final int METHODID_CREATE_WALLET = 2;
  private static final int METHODID_CREATE_WALLET_WITH_WORKFLOW = 3;
  private static final int METHODID_CREATE_WALLET_ENCRYPTED = 4;
  private static final int METHODID_SEARCH = 5;
  private static final int METHODID_INSERT_ITEM = 6;
  private static final int METHODID_GRANT_ACCESS = 7;
  private static final int METHODID_REVOKE_ACCESS = 8;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final WalletImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(WalletImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_GET_PROVIDER_CONFIGURATION:
          serviceImpl.getProviderConfiguration((com.google.protobuf.Empty) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.GetProviderConfigurationResponse>) responseObserver);
          break;
        case METHODID_CONNECT_EXTERNAL_IDENTITY:
          serviceImpl.connectExternalIdentity((trinsic.services.WalletService.ConnectRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.ConnectResponse>) responseObserver);
          break;
        case METHODID_CREATE_WALLET:
          serviceImpl.createWallet((trinsic.services.WalletService.CreateWalletRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.CreateWalletResponse>) responseObserver);
          break;
        case METHODID_CREATE_WALLET_WITH_WORKFLOW:
          serviceImpl.createWalletWithWorkflow((trinsic.services.WalletService.CreateWalletRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.CreateWalletResponse>) responseObserver);
          break;
        case METHODID_CREATE_WALLET_ENCRYPTED:
          serviceImpl.createWalletEncrypted((trinsic.services.Pbmse.EncryptedMessage) request,
              (io.grpc.stub.StreamObserver<trinsic.services.Pbmse.EncryptedMessage>) responseObserver);
          break;
        case METHODID_SEARCH:
          serviceImpl.search((trinsic.services.WalletService.SearchRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.SearchResponse>) responseObserver);
          break;
        case METHODID_INSERT_ITEM:
          serviceImpl.insertItem((trinsic.services.WalletService.InsertItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.InsertItemResponse>) responseObserver);
          break;
        case METHODID_GRANT_ACCESS:
          serviceImpl.grantAccess((trinsic.services.WalletService.GrantAccessRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.GrantAccessResponse>) responseObserver);
          break;
        case METHODID_REVOKE_ACCESS:
          serviceImpl.revokeAccess((trinsic.services.WalletService.RevokeAccessRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.WalletService.RevokeAccessResponse>) responseObserver);
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

  private static abstract class WalletBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    WalletBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.WalletService.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Wallet");
    }
  }

  private static final class WalletFileDescriptorSupplier
      extends WalletBaseDescriptorSupplier {
    WalletFileDescriptorSupplier() {}
  }

  private static final class WalletMethodDescriptorSupplier
      extends WalletBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    WalletMethodDescriptorSupplier(String methodName) {
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
      synchronized (WalletGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new WalletFileDescriptorSupplier())
              .addMethod(getGetProviderConfigurationMethod())
              .addMethod(getConnectExternalIdentityMethod())
              .addMethod(getCreateWalletMethod())
              .addMethod(getCreateWalletWithWorkflowMethod())
              .addMethod(getCreateWalletEncryptedMethod())
              .addMethod(getSearchMethod())
              .addMethod(getInsertItemMethod())
              .addMethod(getGrantAccessMethod())
              .addMethod(getRevokeAccessMethod())
              .build();
        }
      }
    }
    return result;
  }
}
