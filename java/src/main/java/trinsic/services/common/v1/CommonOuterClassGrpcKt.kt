package trinsic.services.common.v1

import io.grpc.CallOptions
import io.grpc.CallOptions.DEFAULT
import io.grpc.Channel
import io.grpc.Metadata
import io.grpc.MethodDescriptor
import io.grpc.ServerServiceDefinition
import io.grpc.ServerServiceDefinition.builder
import io.grpc.ServiceDescriptor
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
import trinsic.okapi.pbmse.v1.Pbmse
import trinsic.services.common.v1.CommonGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for services.common.v1.Common.
 */
object CommonGrpcKt {
  const val SERVICE_NAME: String = CommonGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = CommonGrpc.getServiceDescriptor()

  val requestMethod: MethodDescriptor<Pbmse.EncryptedMessage, Pbmse.EncryptedMessage>
    @JvmStatic
    get() = CommonGrpc.getRequestMethod()

  /**
   * A stub for issuing RPCs to a(n) services.common.v1.Common service as suspending coroutines.
   */
  @StubFor(CommonGrpc::class)
  class CommonCoroutineStub @JvmOverloads constructor(
    channel: Channel,
    callOptions: CallOptions = DEFAULT
  ) : AbstractCoroutineStub<CommonCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): CommonCoroutineStub =
        CommonCoroutineStub(channel, callOptions)

    /**
     * Executes this RPC and returns the response message, suspending until the RPC completes
     * with [`Status.OK`][io.grpc.Status].  If the RPC completes with another status, a
     * corresponding
     * [StatusException] is thrown.  If this coroutine is cancelled, the RPC is also cancelled
     * with the corresponding exception as a cause.
     *
     * @param request The request message to send to the server.
     *
     * @param headers Metadata to attach to the request.  Most users will not need this.
     *
     * @return The single response from the server.
     */
    suspend fun request(request: Pbmse.EncryptedMessage, headers: Metadata = Metadata()):
        Pbmse.EncryptedMessage = unaryRpc(
      channel,
      CommonGrpc.getRequestMethod(),
      request,
      callOptions,
      headers
    )}

  /**
   * Skeletal implementation of the services.common.v1.Common service based on Kotlin coroutines.
   */
  abstract class CommonCoroutineImplBase(
    coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.common.v1.Common.Request.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [io.grpc.Status].  If this method fails with a [java.util.concurrent.CancellationException],
     * the RPC will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun request(request: Pbmse.EncryptedMessage): Pbmse.EncryptedMessage = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.common.v1.Common.Request is unimplemented"))

    final override fun bindService(): ServerServiceDefinition = builder(getServiceDescriptor())
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = CommonGrpc.getRequestMethod(),
      implementation = ::request
    )).build()
  }
}
