package trinsic.services.universalwallet.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.44.1)",
    comments = "Source: services/universal-wallet/v1/universal-wallet.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class UniversalWalletGrpc {

  private UniversalWalletGrpc() {}

  public static final String SERVICE_NAME = "services.universalwallet.v1.UniversalWallet";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse> getGetItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetItem",
      requestType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse> getGetItemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse> getGetItemMethod;
    if ((getGetItemMethod = UniversalWalletGrpc.getGetItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getGetItemMethod = UniversalWalletGrpc.getGetItemMethod) == null) {
          UniversalWalletGrpc.getGetItemMethod = getGetItemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetItem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("GetItem"))
              .build();
        }
      }
    }
    return getGetItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> getSearchMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Search",
      requestType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> getSearchMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> getSearchMethod;
    if ((getSearchMethod = UniversalWalletGrpc.getSearchMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getSearchMethod = UniversalWalletGrpc.getSearchMethod) == null) {
          UniversalWalletGrpc.getSearchMethod = getSearchMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Search"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse.getDefaultInstance()))
              .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("Search"))
              .build();
        }
      }
    }
    return getSearchMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> getInsertItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InsertItem",
      requestType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> getInsertItemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> getInsertItemMethod;
    if ((getInsertItemMethod = UniversalWalletGrpc.getInsertItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getInsertItemMethod = UniversalWalletGrpc.getInsertItemMethod) == null) {
          UniversalWalletGrpc.getInsertItemMethod = getInsertItemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InsertItem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("InsertItem"))
              .build();
        }
      }
    }
    return getInsertItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse> getUpdateItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UpdateItem",
      requestType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse> getUpdateItemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse> getUpdateItemMethod;
    if ((getUpdateItemMethod = UniversalWalletGrpc.getUpdateItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getUpdateItemMethod = UniversalWalletGrpc.getUpdateItemMethod) == null) {
          UniversalWalletGrpc.getUpdateItemMethod = getUpdateItemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UpdateItem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("UpdateItem"))
              .build();
        }
      }
    }
    return getUpdateItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> getDeleteItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "DeleteItem",
      requestType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest,
      trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> getDeleteItemMethod() {
    io.grpc.MethodDescriptor<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> getDeleteItemMethod;
    if ((getDeleteItemMethod = UniversalWalletGrpc.getDeleteItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getDeleteItemMethod = UniversalWalletGrpc.getDeleteItemMethod) == null) {
          UniversalWalletGrpc.getDeleteItemMethod = getDeleteItemMethod =
              io.grpc.MethodDescriptor.<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest, trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "DeleteItem"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse.getDefaultInstance()))
              .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("DeleteItem"))
              .build();
        }
      }
    }
    return getDeleteItemMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static UniversalWalletStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UniversalWalletStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<UniversalWalletStub>() {
        @java.lang.Override
        public UniversalWalletStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new UniversalWalletStub(channel, callOptions);
        }
      };
    return UniversalWalletStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static UniversalWalletBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UniversalWalletBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<UniversalWalletBlockingStub>() {
        @java.lang.Override
        public UniversalWalletBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new UniversalWalletBlockingStub(channel, callOptions);
        }
      };
    return UniversalWalletBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static UniversalWalletFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UniversalWalletFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<UniversalWalletFutureStub>() {
        @java.lang.Override
        public UniversalWalletFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new UniversalWalletFutureStub(channel, callOptions);
        }
      };
    return UniversalWalletFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class UniversalWalletImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public void getItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetItemMethod(), responseObserver);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public void search(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSearchMethod(), responseObserver);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public void insertItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInsertItemMethod(), responseObserver);
    }

    /**
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public void updateItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUpdateItemMethod(), responseObserver);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public void deleteItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getDeleteItemMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getGetItemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest,
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse>(
                  this, METHODID_GET_ITEM)))
          .addMethod(
            getSearchMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest,
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse>(
                  this, METHODID_SEARCH)))
          .addMethod(
            getInsertItemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest,
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse>(
                  this, METHODID_INSERT_ITEM)))
          .addMethod(
            getUpdateItemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest,
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse>(
                  this, METHODID_UPDATE_ITEM)))
          .addMethod(
            getDeleteItemMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest,
                trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse>(
                  this, METHODID_DELETE_ITEM)))
          .build();
    }
  }

  /**
   */
  public static final class UniversalWalletStub extends io.grpc.stub.AbstractAsyncStub<UniversalWalletStub> {
    private UniversalWalletStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UniversalWalletStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UniversalWalletStub(channel, callOptions);
    }

    /**
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public void getItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public void search(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public void insertItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public void updateItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUpdateItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public void deleteItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDeleteItemMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class UniversalWalletBlockingStub extends io.grpc.stub.AbstractBlockingStub<UniversalWalletBlockingStub> {
    private UniversalWalletBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UniversalWalletBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UniversalWalletBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse getItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetItemMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse search(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse insertItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInsertItemMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse updateItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpdateItemMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse deleteItem(trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDeleteItemMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class UniversalWalletFutureStub extends io.grpc.stub.AbstractFutureStub<UniversalWalletFutureStub> {
    private UniversalWalletFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UniversalWalletFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UniversalWalletFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse> getItem(
        trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetItemMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Search the wallet using a SQL-like syntax
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse> search(
        trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse> insertItem(
        trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse> updateItem(
        trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpdateItemMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse> deleteItem(
        trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDeleteItemMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_GET_ITEM = 0;
  private static final int METHODID_SEARCH = 1;
  private static final int METHODID_INSERT_ITEM = 2;
  private static final int METHODID_UPDATE_ITEM = 3;
  private static final int METHODID_DELETE_ITEM = 4;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final UniversalWalletImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(UniversalWalletImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_GET_ITEM:
          serviceImpl.getItem((trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.GetItemResponse>) responseObserver);
          break;
        case METHODID_SEARCH:
          serviceImpl.search((trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.SearchResponse>) responseObserver);
          break;
        case METHODID_INSERT_ITEM:
          serviceImpl.insertItem((trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.InsertItemResponse>) responseObserver);
          break;
        case METHODID_UPDATE_ITEM:
          serviceImpl.updateItem((trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.UpdateItemResponse>) responseObserver);
          break;
        case METHODID_DELETE_ITEM:
          serviceImpl.deleteItem((trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UniversalWalletOuterClass.DeleteItemResponse>) responseObserver);
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

  private static abstract class UniversalWalletBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    UniversalWalletBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("UniversalWallet");
    }
  }

  private static final class UniversalWalletFileDescriptorSupplier
      extends UniversalWalletBaseDescriptorSupplier {
    UniversalWalletFileDescriptorSupplier() {}
  }

  private static final class UniversalWalletMethodDescriptorSupplier
      extends UniversalWalletBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    UniversalWalletMethodDescriptorSupplier(String methodName) {
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
      synchronized (UniversalWalletGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new UniversalWalletFileDescriptorSupplier())
              .addMethod(getGetItemMethod())
              .addMethod(getSearchMethod())
              .addMethod(getInsertItemMethod())
              .addMethod(getUpdateItemMethod())
              .addMethod(getDeleteItemMethod())
              .build();
        }
      }
    }
    return result;
  }
}
