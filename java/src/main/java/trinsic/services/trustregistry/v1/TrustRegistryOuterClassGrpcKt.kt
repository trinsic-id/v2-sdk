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
import io.grpc.kotlin.ClientCalls.serverStreamingRpc
import io.grpc.kotlin.ClientCalls.unaryRpc
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

  val addFrameworkMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.AddFrameworkRequest, TrustRegistryOuterClass.AddFrameworkResponse>
    @JvmStatic get() = TrustRegistryGrpc.getAddFrameworkMethod()

  val removeFrameworkMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.RemoveFrameworkRequest,
          TrustRegistryOuterClass.RemoveFrameworkResponse>
    @JvmStatic get() = TrustRegistryGrpc.getRemoveFrameworkMethod()

  val searchRegistryMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.SearchRegistryRequest,
          TrustRegistryOuterClass.SearchRegistryResponse>
    @JvmStatic get() = TrustRegistryGrpc.getSearchRegistryMethod()

  val registerMemberMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.RegisterMemberRequest,
          TrustRegistryOuterClass.RegisterMemberResponse>
    @JvmStatic get() = TrustRegistryGrpc.getRegisterMemberMethod()

  val unregisterMemberMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.UnregisterMemberRequest,
          TrustRegistryOuterClass.UnregisterMemberResponse>
    @JvmStatic get() = TrustRegistryGrpc.getUnregisterMemberMethod()

  val getMembershipStatusMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.GetMembershipStatusRequest,
          TrustRegistryOuterClass.GetMembershipStatusResponse>
    @JvmStatic get() = TrustRegistryGrpc.getGetMembershipStatusMethod()

  val fetchDataMethod:
      MethodDescriptor<
          TrustRegistryOuterClass.FetchDataRequest, TrustRegistryOuterClass.FetchDataResponse>
    @JvmStatic get() = TrustRegistryGrpc.getFetchDataMethod()

  /**
   * A stub for issuing RPCs to a(n) services.trustregistry.v1.TrustRegistry service as suspending
   * coroutines.
   */
  @StubFor(TrustRegistryGrpc::class)
  class TrustRegistryCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<TrustRegistryCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): TrustRegistryCoroutineStub =
        TrustRegistryCoroutineStub(channel, callOptions)

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
    suspend fun addFramework(
        request: TrustRegistryOuterClass.AddFrameworkRequest,
        headers: Metadata = Metadata()
    ): TrustRegistryOuterClass.AddFrameworkResponse =
        unaryRpc(channel, TrustRegistryGrpc.getAddFrameworkMethod(), request, callOptions, headers)
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
    suspend fun removeFramework(
        request: TrustRegistryOuterClass.RemoveFrameworkRequest,
        headers: Metadata = Metadata()
    ): TrustRegistryOuterClass.RemoveFrameworkResponse =
        unaryRpc(
            channel, TrustRegistryGrpc.getRemoveFrameworkMethod(), request, callOptions, headers)
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
    suspend fun searchRegistry(
        request: TrustRegistryOuterClass.SearchRegistryRequest,
        headers: Metadata = Metadata()
    ): TrustRegistryOuterClass.SearchRegistryResponse =
        unaryRpc(
            channel, TrustRegistryGrpc.getSearchRegistryMethod(), request, callOptions, headers)
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
    suspend fun registerMember(
        request: TrustRegistryOuterClass.RegisterMemberRequest,
        headers: Metadata = Metadata()
    ): TrustRegistryOuterClass.RegisterMemberResponse =
        unaryRpc(
            channel, TrustRegistryGrpc.getRegisterMemberMethod(), request, callOptions, headers)
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
    suspend fun unregisterMember(
        request: TrustRegistryOuterClass.UnregisterMemberRequest,
        headers: Metadata = Metadata()
    ): TrustRegistryOuterClass.UnregisterMemberResponse =
        unaryRpc(
            channel, TrustRegistryGrpc.getUnregisterMemberMethod(), request, callOptions, headers)
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
    suspend fun getMembershipStatus(
        request: TrustRegistryOuterClass.GetMembershipStatusRequest,
        headers: Metadata = Metadata()
    ): TrustRegistryOuterClass.GetMembershipStatusResponse =
        unaryRpc(
            channel,
            TrustRegistryGrpc.getGetMembershipStatusMethod(),
            request,
            callOptions,
            headers)
    /**
     * Returns a [Flow] that, when collected, executes this RPC and emits responses from the server
     * as they arrive. That flow finishes normally if the server closes its response with
     * [`Status.OK`][Status], and fails by throwing a [StatusException] otherwise. If collecting the
     * flow downstream fails exceptionally (including via cancellation), the RPC is cancelled with
     * that exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request. Most users will not need this.
     *
     * @return A flow that, when collected, emits the responses from the server.
     */
    fun fetchData(
        request: TrustRegistryOuterClass.FetchDataRequest,
        headers: Metadata = Metadata()
    ): Flow<TrustRegistryOuterClass.FetchDataResponse> =
        serverStreamingRpc(
            channel, TrustRegistryGrpc.getFetchDataMethod(), request, callOptions, headers)
  }

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
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addFramework(
        request: TrustRegistryOuterClass.AddFrameworkRequest
    ): TrustRegistryOuterClass.AddFrameworkResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.AddFramework is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.RemoveFramework.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun removeFramework(
        request: TrustRegistryOuterClass.RemoveFrameworkRequest
    ): TrustRegistryOuterClass.RemoveFrameworkResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.RemoveFramework is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.SearchRegistry.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun searchRegistry(
        request: TrustRegistryOuterClass.SearchRegistryRequest
    ): TrustRegistryOuterClass.SearchRegistryResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.SearchRegistry is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.RegisterMember.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun registerMember(
        request: TrustRegistryOuterClass.RegisterMemberRequest
    ): TrustRegistryOuterClass.RegisterMemberResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.RegisterMember is unimplemented"))

    /**
     * Returns the response to an RPC for services.trustregistry.v1.TrustRegistry.UnregisterMember.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun unregisterMember(
        request: TrustRegistryOuterClass.UnregisterMemberRequest
    ): TrustRegistryOuterClass.UnregisterMemberResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.UnregisterMember is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.trustregistry.v1.TrustRegistry.GetMembershipStatus.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getMembershipStatus(
        request: TrustRegistryOuterClass.GetMembershipStatusRequest
    ): TrustRegistryOuterClass.GetMembershipStatusResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.GetMembershipStatus is unimplemented"))

    /**
     * Returns a [Flow] of responses to an RPC for
     * services.trustregistry.v1.TrustRegistry.FetchData.
     *
     * If creating or collecting the returned flow fails with a [StatusException], the RPC will fail
     * with the corresponding [Status]. If it fails with a
     * [java.util.concurrent.CancellationException], the RPC will fail with status
     * `Status.CANCELLED`. If creating or collecting the returned flow fails for any other reason,
     * the RPC will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open fun fetchData(
        request: TrustRegistryOuterClass.FetchDataRequest
    ): Flow<TrustRegistryOuterClass.FetchDataResponse> =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.trustregistry.v1.TrustRegistry.FetchData is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getAddFrameworkMethod(),
                    implementation = ::addFramework))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getRemoveFrameworkMethod(),
                    implementation = ::removeFramework))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getSearchRegistryMethod(),
                    implementation = ::searchRegistry))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getRegisterMemberMethod(),
                    implementation = ::registerMember))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getUnregisterMemberMethod(),
                    implementation = ::unregisterMember))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getGetMembershipStatusMethod(),
                    implementation = ::getMembershipStatus))
            .addMethod(
                serverStreamingServerMethodDefinition(
                    context = this.context,
                    descriptor = TrustRegistryGrpc.getFetchDataMethod(),
                    implementation = ::fetchData))
            .build()
  }
}
