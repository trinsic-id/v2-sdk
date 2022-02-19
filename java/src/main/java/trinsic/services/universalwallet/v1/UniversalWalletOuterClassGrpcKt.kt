package trinsic.services.universalwallet.v1

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
import io.grpc.kotlin.ClientCalls.unaryRpc
import io.grpc.kotlin.ServerCalls
import io.grpc.kotlin.ServerCalls.unaryServerMethodDefinition
import io.grpc.kotlin.StubFor
import kotlin.String
import kotlin.coroutines.CoroutineContext
import kotlin.coroutines.EmptyCoroutineContext
import kotlin.jvm.JvmOverloads
import kotlin.jvm.JvmStatic
import trinsic.services.universalwallet.v1.UniversalWalletGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for
 * services.universalwallet.v1.UniversalWallet.
 */
object UniversalWalletGrpcKt {
  const val SERVICE_NAME: String = UniversalWalletGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = UniversalWalletGrpc.getServiceDescriptor()

  val searchMethod: MethodDescriptor<UniversalWalletOuterClass.SearchRequest,
      UniversalWalletOuterClass.SearchResponse>
    @JvmStatic
    get() = UniversalWalletGrpc.getSearchMethod()

  val insertItemMethod: MethodDescriptor<UniversalWalletOuterClass.InsertItemRequest,
      UniversalWalletOuterClass.InsertItemResponse>
    @JvmStatic
    get() = UniversalWalletGrpc.getInsertItemMethod()

  val deleteItemMethod: MethodDescriptor<UniversalWalletOuterClass.DeleteItemRequest,
      UniversalWalletOuterClass.DeleteItemResponse>
    @JvmStatic
    get() = UniversalWalletGrpc.getDeleteItemMethod()

  /**
   * A stub for issuing RPCs to a(n) services.universalwallet.v1.UniversalWallet service as
   * suspending coroutines.
   */
  @StubFor(UniversalWalletGrpc::class)
  class UniversalWalletCoroutineStub @JvmOverloads constructor(
    channel: Channel,
    callOptions: CallOptions = DEFAULT
  ) : AbstractCoroutineStub<UniversalWalletCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): UniversalWalletCoroutineStub =
        UniversalWalletCoroutineStub(channel, callOptions)

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
    suspend fun search(request: UniversalWalletOuterClass.SearchRequest, headers: Metadata =
        Metadata()): UniversalWalletOuterClass.SearchResponse = unaryRpc(
      channel,
      UniversalWalletGrpc.getSearchMethod(),
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
    suspend fun insertItem(request: UniversalWalletOuterClass.InsertItemRequest, headers: Metadata =
        Metadata()): UniversalWalletOuterClass.InsertItemResponse = unaryRpc(
      channel,
      UniversalWalletGrpc.getInsertItemMethod(),
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
    suspend fun deleteItem(request: UniversalWalletOuterClass.DeleteItemRequest, headers: Metadata =
        Metadata()): UniversalWalletOuterClass.DeleteItemResponse = unaryRpc(
      channel,
      UniversalWalletGrpc.getDeleteItemMethod(),
      request,
      callOptions,
      headers
    )}

  /**
   * Skeletal implementation of the services.universalwallet.v1.UniversalWallet service based on
   * Kotlin coroutines.
   */
  abstract class UniversalWalletCoroutineImplBase(
    coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.Search.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun search(request: UniversalWalletOuterClass.SearchRequest):
        UniversalWalletOuterClass.SearchResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.universalwallet.v1.UniversalWallet.Search is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.InsertItem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun insertItem(request: UniversalWalletOuterClass.InsertItemRequest):
        UniversalWalletOuterClass.InsertItemResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.universalwallet.v1.UniversalWallet.InsertItem is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.DeleteItem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun deleteItem(request: UniversalWalletOuterClass.DeleteItemRequest):
        UniversalWalletOuterClass.DeleteItemResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.universalwallet.v1.UniversalWallet.DeleteItem is unimplemented"))

    final override fun bindService(): ServerServiceDefinition = builder(getServiceDescriptor())
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = UniversalWalletGrpc.getSearchMethod(),
      implementation = ::search
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = UniversalWalletGrpc.getInsertItemMethod(),
      implementation = ::insertItem
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = UniversalWalletGrpc.getDeleteItemMethod(),
      implementation = ::deleteItem
    )).build()
  }
}
