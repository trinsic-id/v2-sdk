package trinsic.services.account.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.1)",
    comments = "Source: services/account/v1/account.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class AccountGrpc {

  private AccountGrpc() {}

  public static final String SERVICE_NAME = "services.account.v1.Account";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.SignInRequest,
      trinsic.services.account.v1.AccountOuterClass.SignInResponse> getSignInMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "SignIn",
      requestType = trinsic.services.account.v1.AccountOuterClass.SignInRequest.class,
      responseType = trinsic.services.account.v1.AccountOuterClass.SignInResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.SignInRequest,
      trinsic.services.account.v1.AccountOuterClass.SignInResponse> getSignInMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.SignInRequest, trinsic.services.account.v1.AccountOuterClass.SignInResponse> getSignInMethod;
    if ((getSignInMethod = AccountGrpc.getSignInMethod) == null) {
      synchronized (AccountGrpc.class) {
        if ((getSignInMethod = AccountGrpc.getSignInMethod) == null) {
          AccountGrpc.getSignInMethod = getSignInMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.AccountOuterClass.SignInRequest, trinsic.services.account.v1.AccountOuterClass.SignInResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "SignIn"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.SignInRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.SignInResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountMethodDescriptorSupplier("SignIn"))
              .build();
        }
      }
    }
    return getSignInMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.InfoRequest,
      trinsic.services.account.v1.AccountOuterClass.InfoResponse> getInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Info",
      requestType = trinsic.services.account.v1.AccountOuterClass.InfoRequest.class,
      responseType = trinsic.services.account.v1.AccountOuterClass.InfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.InfoRequest,
      trinsic.services.account.v1.AccountOuterClass.InfoResponse> getInfoMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.InfoRequest, trinsic.services.account.v1.AccountOuterClass.InfoResponse> getInfoMethod;
    if ((getInfoMethod = AccountGrpc.getInfoMethod) == null) {
      synchronized (AccountGrpc.class) {
        if ((getInfoMethod = AccountGrpc.getInfoMethod) == null) {
          AccountGrpc.getInfoMethod = getInfoMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.AccountOuterClass.InfoRequest, trinsic.services.account.v1.AccountOuterClass.InfoResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Info"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.InfoRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.InfoResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountMethodDescriptorSupplier("Info"))
              .build();
        }
      }
    }
    return getInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest,
      trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> getListDevicesMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListDevices",
      requestType = trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest.class,
      responseType = trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest,
      trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> getListDevicesMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest, trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> getListDevicesMethod;
    if ((getListDevicesMethod = AccountGrpc.getListDevicesMethod) == null) {
      synchronized (AccountGrpc.class) {
        if ((getListDevicesMethod = AccountGrpc.getListDevicesMethod) == null) {
          AccountGrpc.getListDevicesMethod = getListDevicesMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest, trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "ListDevices"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountMethodDescriptorSupplier("ListDevices"))
              .build();
        }
      }
    }
    return getListDevicesMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest,
      trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> getRevokeDeviceMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RevokeDevice",
      requestType = trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest.class,
      responseType = trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest,
      trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> getRevokeDeviceMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest, trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> getRevokeDeviceMethod;
    if ((getRevokeDeviceMethod = AccountGrpc.getRevokeDeviceMethod) == null) {
      synchronized (AccountGrpc.class) {
        if ((getRevokeDeviceMethod = AccountGrpc.getRevokeDeviceMethod) == null) {
          AccountGrpc.getRevokeDeviceMethod = getRevokeDeviceMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest, trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RevokeDevice"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountMethodDescriptorSupplier("RevokeDevice"))
              .build();
        }
      }
    }
    return getRevokeDeviceMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static AccountStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccountStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<AccountStub>() {
        @java.lang.Override
        public AccountStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new AccountStub(channel, callOptions);
        }
      };
    return AccountStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static AccountBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccountBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<AccountBlockingStub>() {
        @java.lang.Override
        public AccountBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new AccountBlockingStub(channel, callOptions);
        }
      };
    return AccountBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static AccountFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccountFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<AccountFutureStub>() {
        @java.lang.Override
        public AccountFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new AccountFutureStub(channel, callOptions);
        }
      };
    return AccountFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class AccountImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public void signIn(trinsic.services.account.v1.AccountOuterClass.SignInRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.SignInResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSignInMethod(), responseObserver);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public void info(trinsic.services.account.v1.AccountOuterClass.InfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.InfoResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInfoMethod(), responseObserver);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public void listDevices(trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getListDevicesMethod(), responseObserver);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public void revokeDevice(trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRevokeDeviceMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getSignInMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.AccountOuterClass.SignInRequest,
                trinsic.services.account.v1.AccountOuterClass.SignInResponse>(
                  this, METHODID_SIGN_IN)))
          .addMethod(
            getInfoMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.AccountOuterClass.InfoRequest,
                trinsic.services.account.v1.AccountOuterClass.InfoResponse>(
                  this, METHODID_INFO)))
          .addMethod(
            getListDevicesMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest,
                trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse>(
                  this, METHODID_LIST_DEVICES)))
          .addMethod(
            getRevokeDeviceMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest,
                trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse>(
                  this, METHODID_REVOKE_DEVICE)))
          .build();
    }
  }

  /**
   */
  public static final class AccountStub extends io.grpc.stub.AbstractAsyncStub<AccountStub> {
    private AccountStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccountStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccountStub(channel, callOptions);
    }

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public void signIn(trinsic.services.account.v1.AccountOuterClass.SignInRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.SignInResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSignInMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public void info(trinsic.services.account.v1.AccountOuterClass.InfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.InfoResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInfoMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public void listDevices(trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListDevicesMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public void revokeDevice(trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRevokeDeviceMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class AccountBlockingStub extends io.grpc.stub.AbstractBlockingStub<AccountBlockingStub> {
    private AccountBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccountBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccountBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public trinsic.services.account.v1.AccountOuterClass.SignInResponse signIn(trinsic.services.account.v1.AccountOuterClass.SignInRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSignInMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public trinsic.services.account.v1.AccountOuterClass.InfoResponse info(trinsic.services.account.v1.AccountOuterClass.InfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInfoMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse listDevices(trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListDevicesMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse revokeDevice(trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRevokeDeviceMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class AccountFutureStub extends io.grpc.stub.AbstractFutureStub<AccountFutureStub> {
    private AccountFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccountFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccountFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.SignInResponse> signIn(
        trinsic.services.account.v1.AccountOuterClass.SignInRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSignInMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.InfoResponse> info(
        trinsic.services.account.v1.AccountOuterClass.InfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInfoMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse> listDevices(
        trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListDevicesMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse> revokeDevice(
        trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRevokeDeviceMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_SIGN_IN = 0;
  private static final int METHODID_INFO = 1;
  private static final int METHODID_LIST_DEVICES = 2;
  private static final int METHODID_REVOKE_DEVICE = 3;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final AccountImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(AccountImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_SIGN_IN:
          serviceImpl.signIn((trinsic.services.account.v1.AccountOuterClass.SignInRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.SignInResponse>) responseObserver);
          break;
        case METHODID_INFO:
          serviceImpl.info((trinsic.services.account.v1.AccountOuterClass.InfoRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.InfoResponse>) responseObserver);
          break;
        case METHODID_LIST_DEVICES:
          serviceImpl.listDevices((trinsic.services.account.v1.AccountOuterClass.ListDevicesRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.ListDevicesResponse>) responseObserver);
          break;
        case METHODID_REVOKE_DEVICE:
          serviceImpl.revokeDevice((trinsic.services.account.v1.AccountOuterClass.RevokeDeviceRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.AccountOuterClass.RevokeDeviceResponse>) responseObserver);
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

  private static abstract class AccountBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    AccountBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.account.v1.AccountOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Account");
    }
  }

  private static final class AccountFileDescriptorSupplier
      extends AccountBaseDescriptorSupplier {
    AccountFileDescriptorSupplier() {}
  }

  private static final class AccountMethodDescriptorSupplier
      extends AccountBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    AccountMethodDescriptorSupplier(String methodName) {
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
      synchronized (AccountGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new AccountFileDescriptorSupplier())
              .addMethod(getSignInMethod())
              .addMethod(getInfoMethod())
              .addMethod(getListDevicesMethod())
              .addMethod(getRevokeDeviceMethod())
              .build();
        }
      }
    }
    return result;
  }
}
