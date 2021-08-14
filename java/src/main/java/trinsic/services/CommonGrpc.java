package trinsic.services;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.39.0)",
    comments = "Source: CoreService.proto")
public final class CommonGrpc {

  private CommonGrpc() {}

  public static final String SERVICE_NAME = "trinsic.services.Common";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.Pbmse.EncryptedMessage,
      trinsic.services.Pbmse.EncryptedMessage> getRequestMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Request",
      requestType = trinsic.services.Pbmse.EncryptedMessage.class,
      responseType = trinsic.services.Pbmse.EncryptedMessage.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.Pbmse.EncryptedMessage,
      trinsic.services.Pbmse.EncryptedMessage> getRequestMethod() {
    io.grpc.MethodDescriptor<trinsic.services.Pbmse.EncryptedMessage, trinsic.services.Pbmse.EncryptedMessage> getRequestMethod;
    if ((getRequestMethod = CommonGrpc.getRequestMethod) == null) {
      synchronized (CommonGrpc.class) {
        if ((getRequestMethod = CommonGrpc.getRequestMethod) == null) {
          CommonGrpc.getRequestMethod = getRequestMethod =
              io.grpc.MethodDescriptor.<trinsic.services.Pbmse.EncryptedMessage, trinsic.services.Pbmse.EncryptedMessage>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Request"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.Pbmse.EncryptedMessage.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.Pbmse.EncryptedMessage.getDefaultInstance()))
              .setSchemaDescriptor(new CommonMethodDescriptorSupplier("Request"))
              .build();
        }
      }
    }
    return getRequestMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static CommonStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<CommonStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<CommonStub>() {
        @java.lang.Override
        public CommonStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new CommonStub(channel, callOptions);
        }
      };
    return CommonStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static CommonBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<CommonBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<CommonBlockingStub>() {
        @java.lang.Override
        public CommonBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new CommonBlockingStub(channel, callOptions);
        }
      };
    return CommonBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static CommonFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<CommonFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<CommonFutureStub>() {
        @java.lang.Override
        public CommonFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new CommonFutureStub(channel, callOptions);
        }
      };
    return CommonFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class CommonImplBase implements io.grpc.BindableService {

    /**
     */
    public void request(trinsic.services.Pbmse.EncryptedMessage request,
        io.grpc.stub.StreamObserver<trinsic.services.Pbmse.EncryptedMessage> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRequestMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getRequestMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.Pbmse.EncryptedMessage,
                trinsic.services.Pbmse.EncryptedMessage>(
                  this, METHODID_REQUEST)))
          .build();
    }
  }

  /**
   */
  public static final class CommonStub extends io.grpc.stub.AbstractAsyncStub<CommonStub> {
    private CommonStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CommonStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new CommonStub(channel, callOptions);
    }

    /**
     */
    public void request(trinsic.services.Pbmse.EncryptedMessage request,
        io.grpc.stub.StreamObserver<trinsic.services.Pbmse.EncryptedMessage> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRequestMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class CommonBlockingStub extends io.grpc.stub.AbstractBlockingStub<CommonBlockingStub> {
    private CommonBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CommonBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new CommonBlockingStub(channel, callOptions);
    }

    /**
     */
    public trinsic.services.Pbmse.EncryptedMessage request(trinsic.services.Pbmse.EncryptedMessage request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRequestMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class CommonFutureStub extends io.grpc.stub.AbstractFutureStub<CommonFutureStub> {
    private CommonFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CommonFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new CommonFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.Pbmse.EncryptedMessage> request(
        trinsic.services.Pbmse.EncryptedMessage request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRequestMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_REQUEST = 0;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final CommonImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(CommonImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_REQUEST:
          serviceImpl.request((trinsic.services.Pbmse.EncryptedMessage) request,
              (io.grpc.stub.StreamObserver<trinsic.services.Pbmse.EncryptedMessage>) responseObserver);
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

  private static abstract class CommonBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    CommonBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.CoreService.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Common");
    }
  }

  private static final class CommonFileDescriptorSupplier
      extends CommonBaseDescriptorSupplier {
    CommonFileDescriptorSupplier() {}
  }

  private static final class CommonMethodDescriptorSupplier
      extends CommonBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    CommonMethodDescriptorSupplier(String methodName) {
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
      synchronized (CommonGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new CommonFileDescriptorSupplier())
              .addMethod(getRequestMethod())
              .build();
        }
      }
    }
    return result;
  }
}
