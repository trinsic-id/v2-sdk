package trinsic.services.account.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.41.0)",
    comments = "Source: services/account/v1/account.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class AccountServiceGrpc {

  private AccountServiceGrpc() {}

  public static final String SERVICE_NAME = "services.account.v1.trinsic.services.AccountService";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.SignInRequest,
      trinsic.services.account.v1.Account.SignInResponse> getSignInMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "SignIn",
      requestType = trinsic.services.account.v1.Account.SignInRequest.class,
      responseType = trinsic.services.account.v1.Account.SignInResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.SignInRequest,
      trinsic.services.account.v1.Account.SignInResponse> getSignInMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.SignInRequest, trinsic.services.account.v1.Account.SignInResponse> getSignInMethod;
    if ((getSignInMethod = AccountServiceGrpc.getSignInMethod) == null) {
      synchronized (AccountServiceGrpc.class) {
        if ((getSignInMethod = AccountServiceGrpc.getSignInMethod) == null) {
          AccountServiceGrpc.getSignInMethod = getSignInMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.Account.SignInRequest, trinsic.services.account.v1.Account.SignInResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "SignIn"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.SignInRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.SignInResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountServiceMethodDescriptorSupplier("SignIn"))
              .build();
        }
      }
    }
    return getSignInMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.InfoRequest,
      trinsic.services.account.v1.Account.InfoResponse> getInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Info",
      requestType = trinsic.services.account.v1.Account.InfoRequest.class,
      responseType = trinsic.services.account.v1.Account.InfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.InfoRequest,
      trinsic.services.account.v1.Account.InfoResponse> getInfoMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.InfoRequest, trinsic.services.account.v1.Account.InfoResponse> getInfoMethod;
    if ((getInfoMethod = AccountServiceGrpc.getInfoMethod) == null) {
      synchronized (AccountServiceGrpc.class) {
        if ((getInfoMethod = AccountServiceGrpc.getInfoMethod) == null) {
          AccountServiceGrpc.getInfoMethod = getInfoMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.Account.InfoRequest, trinsic.services.account.v1.Account.InfoResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Info"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.InfoRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.InfoResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountServiceMethodDescriptorSupplier("Info"))
              .build();
        }
      }
    }
    return getInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.ListDevicesRequest,
      trinsic.services.account.v1.Account.ListDevicesResponse> getListDevicesMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListDevices",
      requestType = trinsic.services.account.v1.Account.ListDevicesRequest.class,
      responseType = trinsic.services.account.v1.Account.ListDevicesResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.ListDevicesRequest,
      trinsic.services.account.v1.Account.ListDevicesResponse> getListDevicesMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.ListDevicesRequest, trinsic.services.account.v1.Account.ListDevicesResponse> getListDevicesMethod;
    if ((getListDevicesMethod = AccountServiceGrpc.getListDevicesMethod) == null) {
      synchronized (AccountServiceGrpc.class) {
        if ((getListDevicesMethod = AccountServiceGrpc.getListDevicesMethod) == null) {
          AccountServiceGrpc.getListDevicesMethod = getListDevicesMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.Account.ListDevicesRequest, trinsic.services.account.v1.Account.ListDevicesResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "ListDevices"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.ListDevicesRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.ListDevicesResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountServiceMethodDescriptorSupplier("ListDevices"))
              .build();
        }
      }
    }
    return getListDevicesMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.RevokeDeviceRequest,
      trinsic.services.account.v1.Account.RevokeDeviceResponse> getRevokeDeviceMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RevokeDevice",
      requestType = trinsic.services.account.v1.Account.RevokeDeviceRequest.class,
      responseType = trinsic.services.account.v1.Account.RevokeDeviceResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.RevokeDeviceRequest,
      trinsic.services.account.v1.Account.RevokeDeviceResponse> getRevokeDeviceMethod() {
    io.grpc.MethodDescriptor<trinsic.services.account.v1.Account.RevokeDeviceRequest, trinsic.services.account.v1.Account.RevokeDeviceResponse> getRevokeDeviceMethod;
    if ((getRevokeDeviceMethod = AccountServiceGrpc.getRevokeDeviceMethod) == null) {
      synchronized (AccountServiceGrpc.class) {
        if ((getRevokeDeviceMethod = AccountServiceGrpc.getRevokeDeviceMethod) == null) {
          AccountServiceGrpc.getRevokeDeviceMethod = getRevokeDeviceMethod =
              io.grpc.MethodDescriptor.<trinsic.services.account.v1.Account.RevokeDeviceRequest, trinsic.services.account.v1.Account.RevokeDeviceResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RevokeDevice"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.RevokeDeviceRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.account.v1.Account.RevokeDeviceResponse.getDefaultInstance()))
              .setSchemaDescriptor(new AccountServiceMethodDescriptorSupplier("RevokeDevice"))
              .build();
        }
      }
    }
    return getRevokeDeviceMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static AccountServiceStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccountServiceStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<AccountServiceStub>() {
        @java.lang.Override
        public AccountServiceStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new AccountServiceStub(channel, callOptions);
        }
      };
    return AccountServiceStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static AccountServiceBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccountServiceBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<AccountServiceBlockingStub>() {
        @java.lang.Override
        public AccountServiceBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new AccountServiceBlockingStub(channel, callOptions);
        }
      };
    return AccountServiceBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static AccountServiceFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccountServiceFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<AccountServiceFutureStub>() {
        @java.lang.Override
        public AccountServiceFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new AccountServiceFutureStub(channel, callOptions);
        }
      };
    return AccountServiceFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class AccountServiceImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public void signIn(trinsic.services.account.v1.Account.SignInRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.SignInResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSignInMethod(), responseObserver);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public void info(trinsic.services.account.v1.Account.InfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.InfoResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInfoMethod(), responseObserver);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public void listDevices(trinsic.services.account.v1.Account.ListDevicesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.ListDevicesResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getListDevicesMethod(), responseObserver);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public void revokeDevice(trinsic.services.account.v1.Account.RevokeDeviceRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.RevokeDeviceResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRevokeDeviceMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getSignInMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.Account.SignInRequest,
                trinsic.services.account.v1.Account.SignInResponse>(
                  this, METHODID_SIGN_IN)))
          .addMethod(
            getInfoMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.Account.InfoRequest,
                trinsic.services.account.v1.Account.InfoResponse>(
                  this, METHODID_INFO)))
          .addMethod(
            getListDevicesMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.Account.ListDevicesRequest,
                trinsic.services.account.v1.Account.ListDevicesResponse>(
                  this, METHODID_LIST_DEVICES)))
          .addMethod(
            getRevokeDeviceMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.account.v1.Account.RevokeDeviceRequest,
                trinsic.services.account.v1.Account.RevokeDeviceResponse>(
                  this, METHODID_REVOKE_DEVICE)))
          .build();
    }
  }

  /**
   */
  public static final class AccountServiceStub extends io.grpc.stub.AbstractAsyncStub<AccountServiceStub> {
    private AccountServiceStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccountServiceStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccountServiceStub(channel, callOptions);
    }

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public void signIn(trinsic.services.account.v1.Account.SignInRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.SignInResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSignInMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public void info(trinsic.services.account.v1.Account.InfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.InfoResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInfoMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public void listDevices(trinsic.services.account.v1.Account.ListDevicesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.ListDevicesResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListDevicesMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public void revokeDevice(trinsic.services.account.v1.Account.RevokeDeviceRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.RevokeDeviceResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRevokeDeviceMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class AccountServiceBlockingStub extends io.grpc.stub.AbstractBlockingStub<AccountServiceBlockingStub> {
    private AccountServiceBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccountServiceBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccountServiceBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public trinsic.services.account.v1.Account.SignInResponse signIn(trinsic.services.account.v1.Account.SignInRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSignInMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public trinsic.services.account.v1.Account.InfoResponse info(trinsic.services.account.v1.Account.InfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInfoMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public trinsic.services.account.v1.Account.ListDevicesResponse listDevices(trinsic.services.account.v1.Account.ListDevicesRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListDevicesMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public trinsic.services.account.v1.Account.RevokeDeviceResponse revokeDevice(trinsic.services.account.v1.Account.RevokeDeviceRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRevokeDeviceMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class AccountServiceFutureStub extends io.grpc.stub.AbstractFutureStub<AccountServiceFutureStub> {
    private AccountServiceFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccountServiceFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccountServiceFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Sign in to an already existing account
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.Account.SignInResponse> signIn(
        trinsic.services.account.v1.Account.SignInRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSignInMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Get account information
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.Account.InfoResponse> info(
        trinsic.services.account.v1.Account.InfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInfoMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * List all connected devices
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.Account.ListDevicesResponse> listDevices(
        trinsic.services.account.v1.Account.ListDevicesRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListDevicesMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Revoke device access to the account's cloud wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.account.v1.Account.RevokeDeviceResponse> revokeDevice(
        trinsic.services.account.v1.Account.RevokeDeviceRequest request) {
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
    private final AccountServiceImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(AccountServiceImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_SIGN_IN:
          serviceImpl.signIn((trinsic.services.account.v1.Account.SignInRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.SignInResponse>) responseObserver);
          break;
        case METHODID_INFO:
          serviceImpl.info((trinsic.services.account.v1.Account.InfoRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.InfoResponse>) responseObserver);
          break;
        case METHODID_LIST_DEVICES:
          serviceImpl.listDevices((trinsic.services.account.v1.Account.ListDevicesRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.ListDevicesResponse>) responseObserver);
          break;
        case METHODID_REVOKE_DEVICE:
          serviceImpl.revokeDevice((trinsic.services.account.v1.Account.RevokeDeviceRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.account.v1.Account.RevokeDeviceResponse>) responseObserver);
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

  private static abstract class AccountServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    AccountServiceBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.account.v1.Account.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("trinsic.services.AccountService");
    }
  }

  private static final class AccountServiceFileDescriptorSupplier
      extends AccountServiceBaseDescriptorSupplier {
    AccountServiceFileDescriptorSupplier() {}
  }

  private static final class AccountServiceMethodDescriptorSupplier
      extends AccountServiceBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    AccountServiceMethodDescriptorSupplier(String methodName) {
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
      synchronized (AccountServiceGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new AccountServiceFileDescriptorSupplier())
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
