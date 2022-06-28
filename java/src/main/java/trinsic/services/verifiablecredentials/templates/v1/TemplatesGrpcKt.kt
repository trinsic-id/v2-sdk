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
import io.grpc.kotlin.ClientCalls.unaryRpc
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

  val createMethod:
      MethodDescriptor<CreateCredentialTemplateRequest, CreateCredentialTemplateResponse>
    @JvmStatic get() = CredentialTemplatesGrpc.getCreateMethod()

  val getMethod: MethodDescriptor<GetCredentialTemplateRequest, GetCredentialTemplateResponse>
    @JvmStatic get() = CredentialTemplatesGrpc.getGetMethod()

  val listMethod: MethodDescriptor<ListCredentialTemplatesRequest, ListCredentialTemplatesResponse>
    @JvmStatic get() = CredentialTemplatesGrpc.getListMethod()

  val searchMethod:
      MethodDescriptor<SearchCredentialTemplatesRequest, SearchCredentialTemplatesResponse>
    @JvmStatic get() = CredentialTemplatesGrpc.getSearchMethod()

  val deleteMethod:
      MethodDescriptor<DeleteCredentialTemplateRequest, DeleteCredentialTemplateResponse>
    @JvmStatic get() = CredentialTemplatesGrpc.getDeleteMethod()

  /**
   * A stub for issuing RPCs to a(n) services.verifiablecredentials.templates.v1.CredentialTemplates
   * service as suspending coroutines.
   */
  @StubFor(CredentialTemplatesGrpc::class)
  class CredentialTemplatesCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<CredentialTemplatesCoroutineStub>(channel, callOptions) {
    override fun build(
        channel: Channel,
        callOptions: CallOptions
    ): CredentialTemplatesCoroutineStub = CredentialTemplatesCoroutineStub(channel, callOptions)

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
    suspend fun create(
        request: CreateCredentialTemplateRequest,
        headers: Metadata = Metadata()
    ): CreateCredentialTemplateResponse =
        unaryRpc(channel, CredentialTemplatesGrpc.getCreateMethod(), request, callOptions, headers)
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
    suspend fun get(
        request: GetCredentialTemplateRequest,
        headers: Metadata = Metadata()
    ): GetCredentialTemplateResponse =
        unaryRpc(channel, CredentialTemplatesGrpc.getGetMethod(), request, callOptions, headers)
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
    suspend fun list(
        request: ListCredentialTemplatesRequest,
        headers: Metadata = Metadata()
    ): ListCredentialTemplatesResponse =
        unaryRpc(channel, CredentialTemplatesGrpc.getListMethod(), request, callOptions, headers)
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
    suspend fun search(
        request: SearchCredentialTemplatesRequest,
        headers: Metadata = Metadata()
    ): SearchCredentialTemplatesResponse =
        unaryRpc(channel, CredentialTemplatesGrpc.getSearchMethod(), request, callOptions, headers)
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
    suspend fun delete(
        request: DeleteCredentialTemplateRequest,
        headers: Metadata = Metadata()
    ): DeleteCredentialTemplateResponse =
        unaryRpc(channel, CredentialTemplatesGrpc.getDeleteMethod(), request, callOptions, headers)
  }

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
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun create(
        request: CreateCredentialTemplateRequest
    ): CreateCredentialTemplateResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.verifiablecredentials.templates.v1.CredentialTemplates.Create is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Get.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun get(request: GetCredentialTemplateRequest): GetCredentialTemplateResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.verifiablecredentials.templates.v1.CredentialTemplates.Get is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.List.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun list(
        request: ListCredentialTemplatesRequest
    ): ListCredentialTemplatesResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.verifiablecredentials.templates.v1.CredentialTemplates.List is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Search.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun search(
        request: SearchCredentialTemplatesRequest
    ): SearchCredentialTemplatesResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.verifiablecredentials.templates.v1.CredentialTemplates.Search is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.verifiablecredentials.templates.v1.CredentialTemplates.Delete.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun delete(
        request: DeleteCredentialTemplateRequest
    ): DeleteCredentialTemplateResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.verifiablecredentials.templates.v1.CredentialTemplates.Delete is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = CredentialTemplatesGrpc.getCreateMethod(),
                    implementation = ::create))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = CredentialTemplatesGrpc.getGetMethod(),
                    implementation = ::get))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = CredentialTemplatesGrpc.getListMethod(),
                    implementation = ::list))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = CredentialTemplatesGrpc.getSearchMethod(),
                    implementation = ::search))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = CredentialTemplatesGrpc.getDeleteMethod(),
                    implementation = ::delete))
            .build()
  }
}
