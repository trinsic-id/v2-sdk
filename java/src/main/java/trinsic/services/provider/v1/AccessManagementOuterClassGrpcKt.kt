package trinsic.services.provider.v1

import io.grpc.CallOptions
import io.grpc.CallOptions.DEFAULT
import io.grpc.Channel
import io.grpc.Metadata
import io.grpc.MethodDescriptor
import io.grpc.ServerServiceDefinition
import io.grpc.ServerServiceDefinition.builder
import io.grpc.ServiceDescriptor
import io.grpc.Status
import io.grpc.Status.UNIMPLEMENTED
import io.grpc.StatusException
import io.grpc.kotlin.AbstractCoroutineServerImpl
import io.grpc.kotlin.AbstractCoroutineStub
import io.grpc.kotlin.ClientCalls.unaryRpc
import io.grpc.kotlin.ServerCalls.unaryServerMethodDefinition
import io.grpc.kotlin.StubFor
import kotlin.String
import kotlin.coroutines.CoroutineContext
import kotlin.coroutines.EmptyCoroutineContext
import kotlin.jvm.JvmOverloads
import kotlin.jvm.JvmStatic
import trinsic.services.provider.v1.AccessManagementGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for
 * services.provider.v1.AccessManagement.
 */
object AccessManagementGrpcKt {
  const val SERVICE_NAME: String = AccessManagementGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = AccessManagementGrpc.getServiceDescriptor()

  val addRoleAssignmentMethod: MethodDescriptor<AddRoleAssignmentRequest, AddRoleAssignmentResponse>
    @JvmStatic get() = AccessManagementGrpc.getAddRoleAssignmentMethod()

  val removeRoleAssignmentMethod:
      MethodDescriptor<RemoveRoleAssignmentRequest, RemoveRoleAssignmentResponse>
    @JvmStatic get() = AccessManagementGrpc.getRemoveRoleAssignmentMethod()

  val listRoleAssignmentsMethod:
      MethodDescriptor<ListRoleAssignmentsRequest, ListRoleAssignmentsResponse>
    @JvmStatic get() = AccessManagementGrpc.getListRoleAssignmentsMethod()

  val listAvailableRolesMethod:
      MethodDescriptor<ListAvailableRolesRequest, ListAvailableRolesResponse>
    @JvmStatic get() = AccessManagementGrpc.getListAvailableRolesMethod()

  /**
   * A stub for issuing RPCs to a(n) services.provider.v1.AccessManagement service as suspending
   * coroutines.
   */
  @StubFor(AccessManagementGrpc::class)
  class AccessManagementCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<AccessManagementCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): AccessManagementCoroutineStub =
        AccessManagementCoroutineStub(channel, callOptions)

    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes with
     * [`Status.OK`][Status]. If the RPC completes with another status, a corresponding
     * [StatusException] is thrown. If this coroutine is cancelled, the RPC is also cancelled with
     * the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request. Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun addRoleAssignment(
        request: AddRoleAssignmentRequest,
        headers: Metadata = Metadata()
    ): AddRoleAssignmentResponse =
        unaryRpc(
            channel,
            AccessManagementGrpc.getAddRoleAssignmentMethod(),
            request,
            callOptions,
            headers)
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes with
     * [`Status.OK`][Status]. If the RPC completes with another status, a corresponding
     * [StatusException] is thrown. If this coroutine is cancelled, the RPC is also cancelled with
     * the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request. Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun removeRoleAssignment(
        request: RemoveRoleAssignmentRequest,
        headers: Metadata = Metadata()
    ): RemoveRoleAssignmentResponse =
        unaryRpc(
            channel,
            AccessManagementGrpc.getRemoveRoleAssignmentMethod(),
            request,
            callOptions,
            headers)
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes with
     * [`Status.OK`][Status]. If the RPC completes with another status, a corresponding
     * [StatusException] is thrown. If this coroutine is cancelled, the RPC is also cancelled with
     * the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request. Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun listRoleAssignments(
        request: ListRoleAssignmentsRequest,
        headers: Metadata = Metadata()
    ): ListRoleAssignmentsResponse =
        unaryRpc(
            channel,
            AccessManagementGrpc.getListRoleAssignmentsMethod(),
            request,
            callOptions,
            headers)
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes with
     * [`Status.OK`][Status]. If the RPC completes with another status, a corresponding
     * [StatusException] is thrown. If this coroutine is cancelled, the RPC is also cancelled with
     * the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request. Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun listAvailableRoles(
        request: ListAvailableRolesRequest,
        headers: Metadata = Metadata()
    ): ListAvailableRolesResponse =
        unaryRpc(
            channel,
            AccessManagementGrpc.getListAvailableRolesMethod(),
            request,
            callOptions,
            headers)
  }

  /**
   * Skeletal implementation of the services.provider.v1.AccessManagement service based on Kotlin
   * coroutines.
   */
  abstract class AccessManagementCoroutineImplBase(
      coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.provider.v1.AccessManagement.AddRoleAssignment.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addRoleAssignment(
        request: AddRoleAssignmentRequest
    ): AddRoleAssignmentResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.AccessManagement.AddRoleAssignment is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.provider.v1.AccessManagement.RemoveRoleAssignment.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun removeRoleAssignment(
        request: RemoveRoleAssignmentRequest
    ): RemoveRoleAssignmentResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.AccessManagement.RemoveRoleAssignment is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.AccessManagement.ListRoleAssignments.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun listRoleAssignments(
        request: ListRoleAssignmentsRequest
    ): ListRoleAssignmentsResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.AccessManagement.ListRoleAssignments is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.AccessManagement.ListAvailableRoles.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun listAvailableRoles(
        request: ListAvailableRolesRequest
    ): ListAvailableRolesResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.AccessManagement.ListAvailableRoles is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccessManagementGrpc.getAddRoleAssignmentMethod(),
                    implementation = ::addRoleAssignment))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccessManagementGrpc.getRemoveRoleAssignmentMethod(),
                    implementation = ::removeRoleAssignment))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccessManagementGrpc.getListRoleAssignmentsMethod(),
                    implementation = ::listRoleAssignments))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccessManagementGrpc.getListAvailableRolesMethod(),
                    implementation = ::listAvailableRoles))
            .build()
  }
}
