package trinsic.services.universalwallet.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.1)",
    comments = "Source: services/universal-wallet/v1/universal-wallet.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class WalletServiceGrpc {

  private WalletServiceGrpc() {}

  public static final String SERVICE_NAME = "services.universalwallet.v1.WalletService";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest,
      trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse> getSearchMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Search",
      requestType = trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest,
      trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse> getSearchMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest, trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse> getSearchMethod;
    if ((getSearchMethod = WalletServiceGrpc.getSearchMethod) == null) {
      synchronized (WalletServiceGrpc.class) {
        if ((getSearchMethod = WalletServiceGrpc.getSearchMethod) == null) {
          WalletServiceGrpc.getSearchMethod = getSearchMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest, trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Search"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletServiceMethodDescriptorSupplier("Search"))
              .build();
        }
      }
    }
    return getSearchMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest,
      trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse> getInsertItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InsertItem",
      requestType = trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest,
      trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse> getInsertItemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest, trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse> getInsertItemMethod;
    if ((getInsertItemMethod = WalletServiceGrpc.getInsertItemMethod) == null) {
      synchronized (WalletServiceGrpc.class) {
        if ((getInsertItemMethod = WalletServiceGrpc.getInsertItemMethod) == null) {
          WalletServiceGrpc.getInsertItemMethod = getInsertItemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest, trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InsertItem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletServiceMethodDescriptorSupplier("InsertItem"))
              .build();
        }
      }
    }
    return getInsertItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest,
      trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse> getDeleteitemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Deleteitem",
      requestType = trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest,
      trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse> getDeleteitemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest, trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse> getDeleteitemMethod;
    if ((getDeleteitemMethod = WalletServiceGrpc.getDeleteitemMethod) == null) {
      synchronized (WalletServiceGrpc.class) {
        if ((getDeleteitemMethod = WalletServiceGrpc.getDeleteitemMethod) == null) {
          WalletServiceGrpc.getDeleteitemMethod = getDeleteitemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest, trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Deleteitem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new WalletServiceMethodDescriptorSupplier("Deleteitem"))
              .build();
        }
      }
    }
    return getDeleteitemMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static WalletServiceStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<WalletServiceStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<WalletServiceStub>() {
        @java.lang.Override
        public WalletServiceStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new WalletServiceStub(channel, callOptions);
        }
      };
    return WalletServiceStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static WalletServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<WalletServiceBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<WalletServiceBlockingStub>() {
        @java.lang.Override
        public WalletServiceBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new WalletServiceBlockingStub(channel, callOptions);
        }
      };
    return WalletServiceBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static WalletServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<WalletServiceFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<WalletServiceFutureStub>() {
        @java.lang.Override
        public WalletServiceFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new WalletServiceFutureStub(channel, callOptions);
        }
      };
    return WalletServiceFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class WalletServiceImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public void search(trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSearchMethod(), responseObserver);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public void insertItem(trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInsertItemMethod(), responseObserver);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public void deleteitem(trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getDeleteitemMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getSearchMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest,
                trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse>(
                  this, METHODID_SEARCH)))
          .addMethod(
            getInsertItemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest,
                trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse>(
                  this, METHODID_INSERT_ITEM)))
          .addMethod(
            getDeleteitemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest,
                trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse>(
                  this, METHODID_DELETEITEM)))
          .build();
    }
  }

  /**
   */
  public static final class WalletServiceStub extends io.grpc.stub.AbstractAsyncStub<WalletServiceStub> {
    private WalletServiceStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected WalletServiceStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new WalletServiceStub(channel, callOptions);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public void search(trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public void insertItem(trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public void deleteitem(trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDeleteitemMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class WalletServiceBlockingStub extends io.grpc.stub.AbstractBlockingStub<WalletServiceBlockingStub> {
    private WalletServiceBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected WalletServiceBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new WalletServiceBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse search(trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse insertItem(trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInsertItemMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse deleteitem(trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDeleteitemMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class WalletServiceFutureStub extends io.grpc.stub.AbstractFutureStub<WalletServiceFutureStub> {
    private WalletServiceFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected WalletServiceFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new WalletServiceFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse> search(
        trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse> insertItem(
        trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse> deleteitem(
        trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDeleteitemMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_SEARCH = 0;
  private static final int METHODID_INSERT_ITEM = 1;
  private static final int METHODID_DELETEITEM = 2;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final WalletServiceImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(WalletServiceImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_SEARCH:
          serviceImpl.search((trinsic.services.universalwallet.v1.UniversalWallet.SearchRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.SearchResponse>) responseObserver);
          break;
        case METHODID_INSERT_ITEM:
          serviceImpl.insertItem((trinsic.services.universalwallet.v1.UniversalWallet.InsertItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.InsertItemResponse>) responseObserver);
          break;
        case METHODID_DELETEITEM:
          serviceImpl.deleteitem((trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWallet.DeleteItemResponse>) responseObserver);
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

  private static abstract class WalletServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    WalletServiceBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.universalwallet.v1.UniversalWallet.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("WalletService");
    }
  }

  private static final class WalletServiceFileDescriptorSupplier
      extends WalletServiceBaseDescriptorSupplier {
    WalletServiceFileDescriptorSupplier() {}
  }

  private static final class WalletServiceMethodDescriptorSupplier
      extends WalletServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    WalletServiceMethodDescriptorSupplier(String methodName) {
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
      synchronized (WalletServiceGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new WalletServiceFileDescriptorSupplier())
              .addMethod(getSearchMethod())
              .addMethod(getInsertItemMethod())
              .addMethod(getDeleteitemMethod())
              .build();
        }
      }
    }
    return result;
  }
}
