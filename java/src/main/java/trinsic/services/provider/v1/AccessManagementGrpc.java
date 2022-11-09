package trinsic.services.provider.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 *
 *
 * <pre>
 * Access Management service provides methods to manage access to ecosystem resources
 * such by assigning roles and permissions to wallet accounts
 * </pre>
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.49.2)",
    comments = "Source: services/provider/v1/access-management.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class AccessManagementGrpc {

  private AccessManagementGrpc() {}

  public static final String SERVICE_NAME = "services.provider.v1.AccessManagement";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.AddRoleAssignmentRequest,
          trinsic.services.provider.v1.AddRoleAssignmentResponse>
      getAddRoleAssignmentMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddRoleAssignment",
      requestType = trinsic.services.provider.v1.AddRoleAssignmentRequest.class,
      responseType = trinsic.services.provider.v1.AddRoleAssignmentResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.AddRoleAssignmentRequest,
          trinsic.services.provider.v1.AddRoleAssignmentResponse>
      getAddRoleAssignmentMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.AddRoleAssignmentRequest,
            trinsic.services.provider.v1.AddRoleAssignmentResponse>
        getAddRoleAssignmentMethod;
    if ((getAddRoleAssignmentMethod = AccessManagementGrpc.getAddRoleAssignmentMethod) == null) {
      synchronized (AccessManagementGrpc.class) {
        if ((getAddRoleAssignmentMethod = AccessManagementGrpc.getAddRoleAssignmentMethod)
            == null) {
          AccessManagementGrpc.getAddRoleAssignmentMethod =
              getAddRoleAssignmentMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.AddRoleAssignmentRequest,
                          trinsic.services.provider.v1.AddRoleAssignmentResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "AddRoleAssignment"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.AddRoleAssignmentRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.AddRoleAssignmentResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new AccessManagementMethodDescriptorSupplier("AddRoleAssignment"))
                      .build();
        }
      }
    }
    return getAddRoleAssignmentMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RemoveRoleAssignmentRequest,
          trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
      getRemoveRoleAssignmentMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RemoveRoleAssignment",
      requestType = trinsic.services.provider.v1.RemoveRoleAssignmentRequest.class,
      responseType = trinsic.services.provider.v1.RemoveRoleAssignmentResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RemoveRoleAssignmentRequest,
          trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
      getRemoveRoleAssignmentMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.RemoveRoleAssignmentRequest,
            trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
        getRemoveRoleAssignmentMethod;
    if ((getRemoveRoleAssignmentMethod = AccessManagementGrpc.getRemoveRoleAssignmentMethod)
        == null) {
      synchronized (AccessManagementGrpc.class) {
        if ((getRemoveRoleAssignmentMethod = AccessManagementGrpc.getRemoveRoleAssignmentMethod)
            == null) {
          AccessManagementGrpc.getRemoveRoleAssignmentMethod =
              getRemoveRoleAssignmentMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.RemoveRoleAssignmentRequest,
                          trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "RemoveRoleAssignment"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RemoveRoleAssignmentRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RemoveRoleAssignmentResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new AccessManagementMethodDescriptorSupplier("RemoveRoleAssignment"))
                      .build();
        }
      }
    }
    return getRemoveRoleAssignmentMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.ListRoleAssignmentsRequest,
          trinsic.services.provider.v1.ListRoleAssignmentsResponse>
      getListRoleAssignmentsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListRoleAssignments",
      requestType = trinsic.services.provider.v1.ListRoleAssignmentsRequest.class,
      responseType = trinsic.services.provider.v1.ListRoleAssignmentsResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.ListRoleAssignmentsRequest,
          trinsic.services.provider.v1.ListRoleAssignmentsResponse>
      getListRoleAssignmentsMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.ListRoleAssignmentsRequest,
            trinsic.services.provider.v1.ListRoleAssignmentsResponse>
        getListRoleAssignmentsMethod;
    if ((getListRoleAssignmentsMethod = AccessManagementGrpc.getListRoleAssignmentsMethod)
        == null) {
      synchronized (AccessManagementGrpc.class) {
        if ((getListRoleAssignmentsMethod = AccessManagementGrpc.getListRoleAssignmentsMethod)
            == null) {
          AccessManagementGrpc.getListRoleAssignmentsMethod =
              getListRoleAssignmentsMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.ListRoleAssignmentsRequest,
                          trinsic.services.provider.v1.ListRoleAssignmentsResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "ListRoleAssignments"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.ListRoleAssignmentsRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.ListRoleAssignmentsResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new AccessManagementMethodDescriptorSupplier("ListRoleAssignments"))
                      .build();
        }
      }
    }
    return getListRoleAssignmentsMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.ListAvailableRolesRequest,
          trinsic.services.provider.v1.ListAvailableRolesResponse>
      getListAvailableRolesMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListAvailableRoles",
      requestType = trinsic.services.provider.v1.ListAvailableRolesRequest.class,
      responseType = trinsic.services.provider.v1.ListAvailableRolesResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.ListAvailableRolesRequest,
          trinsic.services.provider.v1.ListAvailableRolesResponse>
      getListAvailableRolesMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.ListAvailableRolesRequest,
            trinsic.services.provider.v1.ListAvailableRolesResponse>
        getListAvailableRolesMethod;
    if ((getListAvailableRolesMethod = AccessManagementGrpc.getListAvailableRolesMethod) == null) {
      synchronized (AccessManagementGrpc.class) {
        if ((getListAvailableRolesMethod = AccessManagementGrpc.getListAvailableRolesMethod)
            == null) {
          AccessManagementGrpc.getListAvailableRolesMethod =
              getListAvailableRolesMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.ListAvailableRolesRequest,
                          trinsic.services.provider.v1.ListAvailableRolesResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "ListAvailableRoles"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.ListAvailableRolesRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.ListAvailableRolesResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new AccessManagementMethodDescriptorSupplier("ListAvailableRoles"))
                      .build();
        }
      }
    }
    return getListAvailableRolesMethod;
  }

  /** Creates a new async stub that supports all call types for the service */
  public static AccessManagementStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccessManagementStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<AccessManagementStub>() {
          @java.lang.Override
          public AccessManagementStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new AccessManagementStub(channel, callOptions);
          }
        };
    return AccessManagementStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static AccessManagementBlockingStub newBlockingStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccessManagementBlockingStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<AccessManagementBlockingStub>() {
          @java.lang.Override
          public AccessManagementBlockingStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new AccessManagementBlockingStub(channel, callOptions);
          }
        };
    return AccessManagementBlockingStub.newStub(factory, channel);
  }

  /** Creates a new ListenableFuture-style stub that supports unary calls on the service */
  public static AccessManagementFutureStub newFutureStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<AccessManagementFutureStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<AccessManagementFutureStub>() {
          @java.lang.Override
          public AccessManagementFutureStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new AccessManagementFutureStub(channel, callOptions);
          }
        };
    return AccessManagementFutureStub.newStub(factory, channel);
  }

  /**
   *
   *
   * <pre>
   * Access Management service provides methods to manage access to ecosystem resources
   * such by assigning roles and permissions to wallet accounts
   * </pre>
   */
  public abstract static class AccessManagementImplBase implements io.grpc.BindableService {

    /**
     *
     *
     * <pre>
     * Adds a role assignment to an account
     * </pre>
     */
    public void addRoleAssignment(
        trinsic.services.provider.v1.AddRoleAssignmentRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.AddRoleAssignmentResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getAddRoleAssignmentMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Removes a role assignment from the account
     * </pre>
     */
    public void removeRoleAssignment(
        trinsic.services.provider.v1.RemoveRoleAssignmentRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRemoveRoleAssignmentMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List the role assignments for the given account
     * </pre>
     */
    public void listRoleAssignments(
        trinsic.services.provider.v1.ListRoleAssignmentsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.ListRoleAssignmentsResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getListRoleAssignmentsMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List the roles available in the ecosystem
     * </pre>
     */
    public void listAvailableRoles(
        trinsic.services.provider.v1.ListAvailableRolesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.ListAvailableRolesResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getListAvailableRolesMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getAddRoleAssignmentMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.AddRoleAssignmentRequest,
                      trinsic.services.provider.v1.AddRoleAssignmentResponse>(
                      this, METHODID_ADD_ROLE_ASSIGNMENT)))
          .addMethod(
              getRemoveRoleAssignmentMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.RemoveRoleAssignmentRequest,
                      trinsic.services.provider.v1.RemoveRoleAssignmentResponse>(
                      this, METHODID_REMOVE_ROLE_ASSIGNMENT)))
          .addMethod(
              getListRoleAssignmentsMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.ListRoleAssignmentsRequest,
                      trinsic.services.provider.v1.ListRoleAssignmentsResponse>(
                      this, METHODID_LIST_ROLE_ASSIGNMENTS)))
          .addMethod(
              getListAvailableRolesMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.ListAvailableRolesRequest,
                      trinsic.services.provider.v1.ListAvailableRolesResponse>(
                      this, METHODID_LIST_AVAILABLE_ROLES)))
          .build();
    }
  }

  /**
   *
   *
   * <pre>
   * Access Management service provides methods to manage access to ecosystem resources
   * such by assigning roles and permissions to wallet accounts
   * </pre>
   */
  public static final class AccessManagementStub
      extends io.grpc.stub.AbstractAsyncStub<AccessManagementStub> {
    private AccessManagementStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccessManagementStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccessManagementStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Adds a role assignment to an account
     * </pre>
     */
    public void addRoleAssignment(
        trinsic.services.provider.v1.AddRoleAssignmentRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.AddRoleAssignmentResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAddRoleAssignmentMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Removes a role assignment from the account
     * </pre>
     */
    public void removeRoleAssignment(
        trinsic.services.provider.v1.RemoveRoleAssignmentRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRemoveRoleAssignmentMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List the role assignments for the given account
     * </pre>
     */
    public void listRoleAssignments(
        trinsic.services.provider.v1.ListRoleAssignmentsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.ListRoleAssignmentsResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListRoleAssignmentsMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List the roles available in the ecosystem
     * </pre>
     */
    public void listAvailableRoles(
        trinsic.services.provider.v1.ListAvailableRolesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.ListAvailableRolesResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListAvailableRolesMethod(), getCallOptions()),
          request,
          responseObserver);
    }
  }

  /**
   *
   *
   * <pre>
   * Access Management service provides methods to manage access to ecosystem resources
   * such by assigning roles and permissions to wallet accounts
   * </pre>
   */
  public static final class AccessManagementBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<AccessManagementBlockingStub> {
    private AccessManagementBlockingStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccessManagementBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccessManagementBlockingStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Adds a role assignment to an account
     * </pre>
     */
    public trinsic.services.provider.v1.AddRoleAssignmentResponse addRoleAssignment(
        trinsic.services.provider.v1.AddRoleAssignmentRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAddRoleAssignmentMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Removes a role assignment from the account
     * </pre>
     */
    public trinsic.services.provider.v1.RemoveRoleAssignmentResponse removeRoleAssignment(
        trinsic.services.provider.v1.RemoveRoleAssignmentRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRemoveRoleAssignmentMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * List the role assignments for the given account
     * </pre>
     */
    public trinsic.services.provider.v1.ListRoleAssignmentsResponse listRoleAssignments(
        trinsic.services.provider.v1.ListRoleAssignmentsRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListRoleAssignmentsMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * List the roles available in the ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.ListAvailableRolesResponse listAvailableRoles(
        trinsic.services.provider.v1.ListAvailableRolesRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListAvailableRolesMethod(), getCallOptions(), request);
    }
  }

  /**
   *
   *
   * <pre>
   * Access Management service provides methods to manage access to ecosystem resources
   * such by assigning roles and permissions to wallet accounts
   * </pre>
   */
  public static final class AccessManagementFutureStub
      extends io.grpc.stub.AbstractFutureStub<AccessManagementFutureStub> {
    private AccessManagementFutureStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected AccessManagementFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new AccessManagementFutureStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Adds a role assignment to an account
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.AddRoleAssignmentResponse>
        addRoleAssignment(trinsic.services.provider.v1.AddRoleAssignmentRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAddRoleAssignmentMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Removes a role assignment from the account
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.RemoveRoleAssignmentResponse>
        removeRoleAssignment(trinsic.services.provider.v1.RemoveRoleAssignmentRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRemoveRoleAssignmentMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * List the role assignments for the given account
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.ListRoleAssignmentsResponse>
        listRoleAssignments(trinsic.services.provider.v1.ListRoleAssignmentsRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListRoleAssignmentsMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * List the roles available in the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.ListAvailableRolesResponse>
        listAvailableRoles(trinsic.services.provider.v1.ListAvailableRolesRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListAvailableRolesMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ADD_ROLE_ASSIGNMENT = 0;
  private static final int METHODID_REMOVE_ROLE_ASSIGNMENT = 1;
  private static final int METHODID_LIST_ROLE_ASSIGNMENTS = 2;
  private static final int METHODID_LIST_AVAILABLE_ROLES = 3;

  private static final class MethodHandlers<Req, Resp>
      implements io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final AccessManagementImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(AccessManagementImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_ADD_ROLE_ASSIGNMENT:
          serviceImpl.addRoleAssignment(
              (trinsic.services.provider.v1.AddRoleAssignmentRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.AddRoleAssignmentResponse>)
                  responseObserver);
          break;
        case METHODID_REMOVE_ROLE_ASSIGNMENT:
          serviceImpl.removeRoleAssignment(
              (trinsic.services.provider.v1.RemoveRoleAssignmentRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.RemoveRoleAssignmentResponse>)
                  responseObserver);
          break;
        case METHODID_LIST_ROLE_ASSIGNMENTS:
          serviceImpl.listRoleAssignments(
              (trinsic.services.provider.v1.ListRoleAssignmentsRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.ListRoleAssignmentsResponse>)
                  responseObserver);
          break;
        case METHODID_LIST_AVAILABLE_ROLES:
          serviceImpl.listAvailableRoles(
              (trinsic.services.provider.v1.ListAvailableRolesRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.ListAvailableRolesResponse>)
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

  private abstract static class AccessManagementBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier,
          io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    AccessManagementBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.provider.v1.AccessManagementOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("AccessManagement");
    }
  }

  private static final class AccessManagementFileDescriptorSupplier
      extends AccessManagementBaseDescriptorSupplier {
    AccessManagementFileDescriptorSupplier() {}
  }

  private static final class AccessManagementMethodDescriptorSupplier
      extends AccessManagementBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    AccessManagementMethodDescriptorSupplier(String methodName) {
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
      synchronized (AccessManagementGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor =
              result =
                  io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
                      .setSchemaDescriptor(new AccessManagementFileDescriptorSupplier())
                      .addMethod(getAddRoleAssignmentMethod())
                      .addMethod(getRemoveRoleAssignmentMethod())
                      .addMethod(getListRoleAssignmentsMethod())
                      .addMethod(getListAvailableRolesMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
