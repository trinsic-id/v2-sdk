package trinsic.services.verifiablecredentials.templates.v1

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
import trinsic.services.verifiablecredentials.templates.v1.CredentialTemplatesGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for
 * services.verifiablecredentials.templates.v1.CredentialTemplates.
 */
object CredentialTemplatesGrpcKt {
  const val SERVICE_NAME: String = CredentialTemplatesGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = CredentialTemplatesGrpc.getServiceDescriptor()

  val createMethod: MethodDescriptor<Templates.CreateCredentialTemplateRequest,
      Templates.CreateCredentialTemplateResponse>
    @JvmStatic
    get() = CredentialTemplatesGrpc.getCreateMethod()

  val getMethod: MethodDescriptor<Templates.GetCredentialTemplateRequest,
      Templates.GetCredentialTemplateResponse>
    @JvmStatic
    get() = CredentialTemplatesGrpc.getGetMethod()

  val searchMethod: MethodDescriptor<Templates.SearchCredentialTemplatesRequest,
      Templates.SearchCredentialTemplatesResponse>
    @JvmStatic
    get() = CredentialTemplatesGrpc.getSearchMethod()

  val updateMethod: MethodDescriptor<Templates.UpdateCredentialTemplateRequest,
      Templates.UpdateCredentialTemplateResponse>
    @JvmStatic
    get() = CredentialTemplatesGrpc.getUpdateMethod()

  val deleteMethod: MethodDescriptor<Templates.DeleteCredentialTemplateRequest,
      Templates.DeleteCredentialTemplateResponse>
    @JvmStatic
    get() = CredentialTemplatesGrpc.getDeleteMethod()

  /**
   * A stub for issuing RPCs to a(n) services.verifiablecredentials.templates.v1.CredentialTemplates
   * service as suspending coroutines.
   */
  @StubFor(CredentialTemplatesGrpc::class)
  class CredentialTemplatesCoroutineStub @JvmOverloads constructor(
    channel: Channel,
    callOptions: CallOptions = DEFAULT
  ) : AbstractCoroutineStub<CredentialTemplatesCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): CredentialTemplatesCoroutineStub
        = CredentialTemplatesCoroutineStub(channel, callOptions)

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
    suspend fun create(request: Templates.CreateCredentialTemplateRequest, headers: Metadata =
        Metadata()): Templates.CreateCredentialTemplateResponse = unaryRpc(
      channel,
      CredentialTemplatesGrpc.getCreateMethod(),
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
    suspend fun get(request: Templates.GetCredentialTemplateRequest, headers: Metadata =
        Metadata()): Templates.GetCredentialTemplateResponse = unaryRpc(
      channel,
      CredentialTemplatesGrpc.getGetMethod(),
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
    suspend fun search(request: Templates.SearchCredentialTemplatesRequest, headers: Metadata =
        Metadata()): Templates.SearchCredentialTemplatesResponse = unaryRpc(
      channel,
      CredentialTemplatesGrpc.getSearchMethod(),
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
    suspend fun update(request: Templates.UpdateCredentialTemplateRequest, headers: Metadata =
        Metadata()): Templates.UpdateCredentialTemplateResponse = unaryRpc(
      channel,
      CredentialTemplatesGrpc.getUpdateMethod(),
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
    suspend fun delete(request: Templates.DeleteCredentialTemplateRequest, headers: Metadata =
        Metadata()): Templates.DeleteCredentialTemplateResponse = unaryRpc(
      channel,
      CredentialTemplatesGrpc.getDeleteMethod(),
      request,
      callOptions,
      headers
    )}

  /**
   * Skeletal implementation of the services.verifiablecredentials.templates.v1.CredentialTemplates
   * service based on Kotlin coroutines.
   */
  abstract class CredentialTemplatesCoroutineImplBase(
    coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Create.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun create(request: Templates.CreateCredentialTemplateRequest):
        Templates.CreateCredentialTemplateResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.verifiablecredentials.templates.v1.CredentialTemplates.Create is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Get.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun get(request: Templates.GetCredentialTemplateRequest):
        Templates.GetCredentialTemplateResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.verifiablecredentials.templates.v1.CredentialTemplates.Get is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Search.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun search(request: Templates.SearchCredentialTemplatesRequest):
        Templates.SearchCredentialTemplatesResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.verifiablecredentials.templates.v1.CredentialTemplates.Search is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Update.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun update(request: Templates.UpdateCredentialTemplateRequest):
        Templates.UpdateCredentialTemplateResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.verifiablecredentials.templates.v1.CredentialTemplates.Update is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Delete.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun delete(request: Templates.DeleteCredentialTemplateRequest):
        Templates.DeleteCredentialTemplateResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.verifiablecredentials.templates.v1.CredentialTemplates.Delete is unimplemented"))

    final override fun bindService(): ServerServiceDefinition = builder(getServiceDescriptor())
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = CredentialTemplatesGrpc.getCreateMethod(),
      implementation = ::create
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = CredentialTemplatesGrpc.getGetMethod(),
      implementation = ::get
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = CredentialTemplatesGrpc.getSearchMethod(),
      implementation = ::search
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = CredentialTemplatesGrpc.getUpdateMethod(),
      implementation = ::update
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = CredentialTemplatesGrpc.getDeleteMethod(),
      implementation = ::delete
    )).build()
  }
}
