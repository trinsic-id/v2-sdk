package trinsic.services;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.39.0)",
    comments = "Source: DebugService.proto")
public final class DebuggingGrpc {

  private DebuggingGrpc() {}

  public static final String SERVICE_NAME = "trinsic.services.Debugging";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      com.google.protobuf.Empty> getCallEmptyMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CallEmpty",
      requestType = com.google.protobuf.Empty.class,
      responseType = com.google.protobuf.Empty.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      com.google.protobuf.Empty> getCallEmptyMethod() {
    io.grpc.MethodDescriptor<com.google.protobuf.Empty, com.google.protobuf.Empty> getCallEmptyMethod;
    if ((getCallEmptyMethod = DebuggingGrpc.getCallEmptyMethod) == null) {
      synchronized (DebuggingGrpc.class) {
        if ((getCallEmptyMethod = DebuggingGrpc.getCallEmptyMethod) == null) {
          DebuggingGrpc.getCallEmptyMethod = getCallEmptyMethod =
              io.grpc.MethodDescriptor.<com.google.protobuf.Empty, com.google.protobuf.Empty>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CallEmpty"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setSchemaDescriptor(new DebuggingMethodDescriptorSupplier("CallEmpty"))
              .build();
        }
      }
    }
    return getCallEmptyMethod;
  }

  private static volatile io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      com.google.protobuf.Empty> getCallEmptyAuthMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CallEmptyAuth",
      requestType = com.google.protobuf.Empty.class,
      responseType = com.google.protobuf.Empty.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<com.google.protobuf.Empty,
      com.google.protobuf.Empty> getCallEmptyAuthMethod() {
    io.grpc.MethodDescriptor<com.google.protobuf.Empty, com.google.protobuf.Empty> getCallEmptyAuthMethod;
    if ((getCallEmptyAuthMethod = DebuggingGrpc.getCallEmptyAuthMethod) == null) {
      synchronized (DebuggingGrpc.class) {
        if ((getCallEmptyAuthMethod = DebuggingGrpc.getCallEmptyAuthMethod) == null) {
          DebuggingGrpc.getCallEmptyAuthMethod = getCallEmptyAuthMethod =
              io.grpc.MethodDescriptor.<com.google.protobuf.Empty, com.google.protobuf.Empty>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CallEmptyAuth"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.google.protobuf.Empty.getDefaultInstance()))
              .setSchemaDescriptor(new DebuggingMethodDescriptorSupplier("CallEmptyAuth"))
              .build();
        }
      }
    }
    return getCallEmptyAuthMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static DebuggingStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<DebuggingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<DebuggingStub>() {
        @java.lang.Override
        public DebuggingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new DebuggingStub(channel, callOptions);
        }
      };
    return DebuggingStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static DebuggingBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<DebuggingBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<DebuggingBlockingStub>() {
        @java.lang.Override
        public DebuggingBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new DebuggingBlockingStub(channel, callOptions);
        }
      };
    return DebuggingBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static DebuggingFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<DebuggingFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<DebuggingFutureStub>() {
        @java.lang.Override
        public DebuggingFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new DebuggingFutureStub(channel, callOptions);
        }
      };
    return DebuggingFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class DebuggingImplBase implements io.grpc.BindableService {

    /**
     */
    public void callEmpty(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<com.google.protobuf.Empty> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCallEmptyMethod(), responseObserver);
    }

    /**
     */
    public void callEmptyAuth(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<com.google.protobuf.Empty> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCallEmptyAuthMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getCallEmptyMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.google.protobuf.Empty,
                com.google.protobuf.Empty>(
                  this, METHODID_CALL_EMPTY)))
          .addMethod(
            getCallEmptyAuthMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                com.google.protobuf.Empty,
                com.google.protobuf.Empty>(
                  this, METHODID_CALL_EMPTY_AUTH)))
          .build();
    }
  }

  /**
   */
  public static final class DebuggingStub extends io.grpc.stub.AbstractAsyncStub<DebuggingStub> {
    private DebuggingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected DebuggingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new DebuggingStub(channel, callOptions);
    }

    /**
     */
    public void callEmpty(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<com.google.protobuf.Empty> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCallEmptyMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void callEmptyAuth(com.google.protobuf.Empty request,
        io.grpc.stub.StreamObserver<com.google.protobuf.Empty> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCallEmptyAuthMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class DebuggingBlockingStub extends io.grpc.stub.AbstractBlockingStub<DebuggingBlockingStub> {
    private DebuggingBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected DebuggingBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new DebuggingBlockingStub(channel, callOptions);
    }

    /**
     */
    public com.google.protobuf.Empty callEmpty(com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCallEmptyMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.google.protobuf.Empty callEmptyAuth(com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCallEmptyAuthMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class DebuggingFutureStub extends io.grpc.stub.AbstractFutureStub<DebuggingFutureStub> {
    private DebuggingFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected DebuggingFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new DebuggingFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.google.protobuf.Empty> callEmpty(
        com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCallEmptyMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.google.protobuf.Empty> callEmptyAuth(
        com.google.protobuf.Empty request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCallEmptyAuthMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_CALL_EMPTY = 0;
  private static final int METHODID_CALL_EMPTY_AUTH = 1;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final DebuggingImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(DebuggingImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_CALL_EMPTY:
          serviceImpl.callEmpty((com.google.protobuf.Empty) request,
              (io.grpc.stub.StreamObserver<com.google.protobuf.Empty>) responseObserver);
          break;
        case METHODID_CALL_EMPTY_AUTH:
          serviceImpl.callEmptyAuth((com.google.protobuf.Empty) request,
              (io.grpc.stub.StreamObserver<com.google.protobuf.Empty>) responseObserver);
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

  private static abstract class DebuggingBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    DebuggingBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.DebugService.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Debugging");
    }
  }

  private static final class DebuggingFileDescriptorSupplier
      extends DebuggingBaseDescriptorSupplier {
    DebuggingFileDescriptorSupplier() {}
  }

  private static final class DebuggingMethodDescriptorSupplier
      extends DebuggingBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    DebuggingMethodDescriptorSupplier(String methodName) {
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
      synchronized (DebuggingGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new DebuggingFileDescriptorSupplier())
              .addMethod(getCallEmptyMethod())
              .addMethod(getCallEmptyAuthMethod())
              .build();
        }
      }
    }
    return result;
  }
}
