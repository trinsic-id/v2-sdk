package trinsic.services.connect.v1

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
import trinsic.services.connect.v1.ConnectGrpc.getServiceDescriptor

/** Holder for Kotlin coroutine-based client and server APIs for services.connect.v1.Connect. */
object ConnectGrpcKt {
  const val SERVICE_NAME: String = ConnectGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = ConnectGrpc.getServiceDescriptor()

  val createSessionMethod: MethodDescriptor<CreateSessionRequest, CreateSessionResponse>
    @JvmStatic get() = ConnectGrpc.getCreateSessionMethod()

  val cancelSessionMethod: MethodDescriptor<CancelSessionRequest, CancelSessionResponse>
    @JvmStatic get() = ConnectGrpc.getCancelSessionMethod()

  val getSessionMethod: MethodDescriptor<GetSessionRequest, GetSessionResponse>
    @JvmStatic get() = ConnectGrpc.getGetSessionMethod()

  val listSessionsMethod: MethodDescriptor<ListSessionsRequest, ListSessionsResponse>
    @JvmStatic get() = ConnectGrpc.getListSessionsMethod()

  /**
   * A stub for issuing RPCs to a(n) services.connect.v1.Connect service as suspending coroutines.
   */
  @StubFor(ConnectGrpc::class)
  class ConnectCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<ConnectCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): ConnectCoroutineStub =
        ConnectCoroutineStub(channel, callOptions)

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
    suspend fun createSession(
        request: CreateSessionRequest,
        headers: Metadata = Metadata()
    ): CreateSessionResponse =
        unaryRpc(channel, ConnectGrpc.getCreateSessionMethod(), request, callOptions, headers)
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
    suspend fun cancelSession(
        request: CancelSessionRequest,
        headers: Metadata = Metadata()
    ): CancelSessionResponse =
        unaryRpc(channel, ConnectGrpc.getCancelSessionMethod(), request, callOptions, headers)
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
    suspend fun getSession(
        request: GetSessionRequest,
        headers: Metadata = Metadata()
    ): GetSessionResponse =
        unaryRpc(channel, ConnectGrpc.getGetSessionMethod(), request, callOptions, headers)
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
    suspend fun listSessions(
        request: ListSessionsRequest,
        headers: Metadata = Metadata()
    ): ListSessionsResponse =
        unaryRpc(channel, ConnectGrpc.getListSessionsMethod(), request, callOptions, headers)
  }

  /**
   * Skeletal implementation of the services.connect.v1.Connect service based on Kotlin coroutines.
   */
  abstract class ConnectCoroutineImplBase(
      coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.connect.v1.Connect.CreateSession.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun createSession(request: CreateSessionRequest): CreateSessionResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.connect.v1.Connect.CreateSession is unimplemented"))

    /**
     * Returns the response to an RPC for services.connect.v1.Connect.CancelSession.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun cancelSession(request: CancelSessionRequest): CancelSessionResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.connect.v1.Connect.CancelSession is unimplemented"))

    /**
     * Returns the response to an RPC for services.connect.v1.Connect.GetSession.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getSession(request: GetSessionRequest): GetSessionResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.connect.v1.Connect.GetSession is unimplemented"))

    /**
     * Returns the response to an RPC for services.connect.v1.Connect.ListSessions.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun listSessions(request: ListSessionsRequest): ListSessionsResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.connect.v1.Connect.ListSessions is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ConnectGrpc.getCreateSessionMethod(),
                    implementation = ::createSession))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ConnectGrpc.getCancelSessionMethod(),
                    implementation = ::cancelSession))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ConnectGrpc.getGetSessionMethod(),
                    implementation = ::getSession))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ConnectGrpc.getListSessionsMethod(),
                    implementation = ::listSessions))
            .build()
  }
}
