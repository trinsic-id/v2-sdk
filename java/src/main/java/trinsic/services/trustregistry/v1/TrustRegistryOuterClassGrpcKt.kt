package trinsic.services.trustregistry.v1

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
import io.grpc.kotlin.ClientCalls
import io.grpc.kotlin.ClientCalls.serverStreamingRpc
import io.grpc.kotlin.ClientCalls.unaryRpc
import io.grpc.kotlin.ServerCalls
import io.grpc.kotlin.ServerCalls.serverStreamingServerMethodDefinition
import io.grpc.kotlin.ServerCalls.unaryServerMethodDefinition
import io.grpc.kotlin.StubFor
import kotlin.String
import kotlin.coroutines.CoroutineContext
import kotlin.coroutines.EmptyCoroutineContext
import kotlin.jvm.JvmOverloads
import kotlin.jvm.JvmStatic
import kotlinx.coroutines.flow.Flow
import trinsic.services.trustregistry.v1.TrustRegistryGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for
 * services.trustregistry.v1.TrustRegistry.
 */
object TrustRegistryGrpcKt {
  const val SERVICE_NAME: String = TrustRegistryGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = TrustRegistryGrpc.getServiceDescriptor()

  val addFrameworkMethod: MethodDescriptor<TrustRegistryOuterClass.AddFrameworkRequest,
      TrustRegistryOuterClass.AddFrameworkResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getAddFrameworkMethod()

  val removeFrameworkMethod: MethodDescriptor<TrustRegistryOuterClass.RemoveFrameworkRequest,
      TrustRegistryOuterClass.RemoveFrameworkResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getRemoveFrameworkMethod()

  val searchRegistryMethod: MethodDescriptor<TrustRegistryOuterClass.SearchRegistryRequest,
      TrustRegistryOuterClass.SearchRegistryResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getSearchRegistryMethod()

  val registerIssuerMethod: MethodDescriptor<TrustRegistryOuterClass.RegisterIssuerRequest,
      TrustRegistryOuterClass.RegisterIssuerResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getRegisterIssuerMethod()

  val registerVerifierMethod: MethodDescriptor<TrustRegistryOuterClass.RegisterVerifierRequest,
      TrustRegistryOuterClass.RegisterVerifierResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getRegisterVerifierMethod()

  val unregisterIssuerMethod: MethodDescriptor<TrustRegistryOuterClass.UnregisterIssuerRequest,
      TrustRegistryOuterClass.UnregisterIssuerResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getUnregisterIssuerMethod()

  val unregisterVerifierMethod: MethodDescriptor<TrustRegistryOuterClass.UnregisterVerifierRequest,
      TrustRegistryOuterClass.UnregisterVerifierResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getUnregisterVerifierMethod()

  val checkIssuerStatusMethod: MethodDescriptor<TrustRegistryOuterClass.CheckIssuerStatusRequest,
      TrustRegistryOuterClass.CheckIssuerStatusResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getCheckIssuerStatusMethod()

  val checkVerifierStatusMethod:
      MethodDescriptor<TrustRegistryOuterClass.CheckVerifierStatusRequest,
      TrustRegistryOuterClass.CheckVerifierStatusResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getCheckVerifierStatusMethod()

  val fetchDataMethod: MethodDescriptor<TrustRegistryOuterClass.FetchDataRequest,
      TrustRegistryOuterClass.FetchDataResponse>
    @JvmStatic
    get() = TrustRegistryGrpc.getFetchDataMethod()

  /**
   * A stub for issuing RPCs to a(n) services.trustregistry.v1.TrustRegistry service as suspending
   * coroutines.
   */
  @StubFor(TrustRegistryGrpc::class)
  class TrustRegistryCoroutineStub @JvmOverloads constructor(
    channel: Channel,
    callOptions: CallOptions = DEFAULT
  ) : AbstractCoroutineStub<TrustRegistryCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): TrustRegistryCoroutineStub =
        TrustRegistryCoroutineStub(channel, callOptions)

    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun addFramework(request: TrustRegistryOuterClass.AddFrameworkRequest, headers: Metadata
        = Metadata()): TrustRegistryOuterClass.AddFrameworkResponse = unaryRpc(
      channel,
      TrustRegistryGrpc.getAddFrameworkMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun removeFramework(request: TrustRegistryOuterClass.RemoveFrameworkRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.RemoveFrameworkResponse = unaryRpc(
      channel,
      TrustRegistryGrpc.getRemoveFrameworkMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun searchRegistry(request: TrustRegistryOuterClass.SearchRegistryRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.SearchRegistryResponse = unaryRpc(
      channel,
      TrustRegistryGrpc.getSearchRegistryMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun registerIssuer(request: TrustRegistryOuterClass.RegisterIssuerRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.RegisterIssuerResponse = unaryRpc(
      channel,
      TrustRegistryGrpc.getRegisterIssuerMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun registerVerifier(request: TrustRegistryOuterClass.RegisterVerifierRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.RegisterVerifierResponse =
        unaryRpc(
      channel,
      TrustRegistryGrpc.getRegisterVerifierMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun unregisterIssuer(request: TrustRegistryOuterClass.UnregisterIssuerRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.UnregisterIssuerResponse =
        unaryRpc(
      channel,
      TrustRegistryGrpc.getUnregisterIssuerMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun unregisterVerifier(request: TrustRegistryOuterClass.UnregisterVerifierRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.UnregisterVerifierResponse =
        unaryRpc(
      channel,
      TrustRegistryGrpc.getUnregisterVerifierMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun checkIssuerStatus(request: TrustRegistryOuterClass.CheckIssuerStatusRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.CheckIssuerStatusResponse =
        unaryRpc(
      channel,
      TrustRegistryGrpc.getCheckIssuerStatusMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][Status].  If the RPC completes with another status, a corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun checkVerifierStatus(request: TrustRegistryOuterClass.CheckVerifierStatusRequest,
        headers: Metadata = Metadata()): TrustRegistryOuterClass.CheckVerifierStatusResponse =
        unaryRpc(
      channel,
      TrustRegistryGrpc.getCheckVerifierStatusMethod(),
      request,
      callOptions,
      headers
    )
    /**
     * Returns a [Flow] that, when collected, executes this RPC and emits responses from the
     * server as they arrive.  That flow finishes normally if the server closes its response with
     * [`Status.OK`][Status], and fails by throwing a [StatusException] otherwise.  If
     * collecting the flow downstream fails exceptionally (including via cancellation), the RPC
     * is cancelled with that exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return A flow that, when collected, emits the responses from the server.
     */
    fun fetchData(request: TrustRegistryOuterClass.FetchDataRequest, headers: Metadata =
        Metadata()): Flow<TrustRegistryOuterClass.FetchDataResponse> = serverStreamingRpc(
      channel,
      TrustRegistryGrpc.getFetchDataMethod(),
      request,
      callOptions,
      headers
    )}

  /**
   * Skeletal implementation of the services.trustregistry.v1.TrustRegistry service based on Kotlin
   * coroutines.
   */
  abstract class TrustRegistryCoroutineImplBase(
    coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.AddFramework.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addFramework(request: TrustRegistryOuterClass.AddFrameworkRequest):
        TrustRegistryOuterClass.AddFrameworkResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.AddFramework is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.RemoveFramework.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun removeFramework(request: TrustRegistryOuterClass.RemoveFrameworkRequest):
        TrustRegistryOuterClass.RemoveFrameworkResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.RemoveFramework is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.SearchRegistry.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun searchRegistry(request: TrustRegistryOuterClass.SearchRegistryRequest):
        TrustRegistryOuterClass.SearchRegistryResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.SearchRegistry is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.RegisterIssuer.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun registerIssuer(request: TrustRegistryOuterClass.RegisterIssuerRequest):
        TrustRegistryOuterClass.RegisterIssuerResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.RegisterIssuer is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.RegisterVerifier.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun registerVerifier(request: TrustRegistryOuterClass.RegisterVerifierRequest):
        TrustRegistryOuterClass.RegisterVerifierResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.RegisterVerifier is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.UnregisterIssuer.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun unregisterIssuer(request: TrustRegistryOuterClass.UnregisterIssuerRequest):
        TrustRegistryOuterClass.UnregisterIssuerResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.UnregisterIssuer is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.trustregistry.v1.TrustRegistry.UnregisterVerifier.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun unregisterVerifier(request: TrustRegistryOuterClass.UnregisterVerifierRequest):
        TrustRegistryOuterClass.UnregisterVerifierResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.UnregisterVerifier is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.CheckIssuerStatus.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun checkIssuerStatus(request: TrustRegistryOuterClass.CheckIssuerStatusRequest):
        TrustRegistryOuterClass.CheckIssuerStatusResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.CheckIssuerStatus is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.trustregistry.v1.TrustRegistry.CheckVerifierStatus.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend
        fun checkVerifierStatus(request: TrustRegistryOuterClass.CheckVerifierStatusRequest):
        TrustRegistryOuterClass.CheckVerifierStatusResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.CheckVerifierStatus is unimplemented"))

    /**
     * Returns a [Flow] of responses to an RPC for
     * services.trustregistry.v1.TrustRegistry.FetchData.
     *
     * If creating or collecting the returned flow fails with a [StatusException], the RPC
     * will fail with the corresponding [Status].  If it fails with a
     * [java.util.concurrent.CancellationException], the RPC will fail with status
     * `Status.CANCELLED`.  If creating
     * or collecting the returned flow fails for any other reason, the RPC will fail with
     * `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open fun fetchData(request: TrustRegistryOuterClass.FetchDataRequest):
        Flow<TrustRegistryOuterClass.FetchDataResponse> = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.trustregistry.v1.TrustRegistry.FetchData is unimplemented"))

    final override fun bindService(): ServerServiceDefinition = builder(getServiceDescriptor())
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getAddFrameworkMethod(),
      implementation = ::addFramework
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getRemoveFrameworkMethod(),
      implementation = ::removeFramework
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getSearchRegistryMethod(),
      implementation = ::searchRegistry
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getRegisterIssuerMethod(),
      implementation = ::registerIssuer
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getRegisterVerifierMethod(),
      implementation = ::registerVerifier
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getUnregisterIssuerMethod(),
      implementation = ::unregisterIssuer
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getUnregisterVerifierMethod(),
      implementation = ::unregisterVerifier
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getCheckIssuerStatusMethod(),
      implementation = ::checkIssuerStatus
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getCheckVerifierStatusMethod(),
      implementation = ::checkVerifierStatus
    ))
      .addMethod(serverStreamingServerMethodDefinition(
      context = this.context,
      descriptor = TrustRegistryGrpc.getFetchDataMethod(),
      implementation = ::fetchData
    )).build()
  }
}
