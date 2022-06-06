package trinsic.services.common.v1

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
import trinsic.services.common.v1.ProviderGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for services.provider.v1.Provider.
 */
object ProviderGrpcKt {
  const val SERVICE_NAME: String = ProviderGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = ProviderGrpc.getServiceDescriptor()

  val createEcosystemMethod: MethodDescriptor<ProviderOuterClass.CreateEcosystemRequest,
      ProviderOuterClass.CreateEcosystemResponse>
    @JvmStatic
    get() = ProviderGrpc.getCreateEcosystemMethod()

  val updateEcosystemMethod: MethodDescriptor<ProviderOuterClass.UpdateEcosystemRequest,
      ProviderOuterClass.UpdateEcosystemResponse>
    @JvmStatic
    get() = ProviderGrpc.getUpdateEcosystemMethod()

  val addWebhookMethod: MethodDescriptor<ProviderOuterClass.AddWebhookRequest,
      ProviderOuterClass.AddWebhookResponse>
    @JvmStatic
    get() = ProviderGrpc.getAddWebhookMethod()

  val deleteWebhookMethod: MethodDescriptor<ProviderOuterClass.DeleteWebhookRequest,
      ProviderOuterClass.DeleteWebhookResponse>
    @JvmStatic
    get() = ProviderGrpc.getDeleteWebhookMethod()

  val infoMethod: MethodDescriptor<ProviderOuterClass.EcosystemInfoRequest,
      ProviderOuterClass.EcosystemInfoResponse>
    @JvmStatic
    get() = ProviderGrpc.getInfoMethod()

  val generateTokenMethod: MethodDescriptor<ProviderOuterClass.GenerateTokenRequest,
      ProviderOuterClass.GenerateTokenResponse>
    @JvmStatic
    get() = ProviderGrpc.getGenerateTokenMethod()

  val inviteMethod: MethodDescriptor<ProviderOuterClass.InviteRequest,
      ProviderOuterClass.InviteResponse>
    @JvmStatic
    get() = ProviderGrpc.getInviteMethod()

  val invitationStatusMethod: MethodDescriptor<ProviderOuterClass.InvitationStatusRequest,
      ProviderOuterClass.InvitationStatusResponse>
    @JvmStatic
    get() = ProviderGrpc.getInvitationStatusMethod()

  val getOberonKeyMethod: MethodDescriptor<ProviderOuterClass.GetOberonKeyRequest,
      ProviderOuterClass.GetOberonKeyResponse>
    @JvmStatic
    get() = ProviderGrpc.getGetOberonKeyMethod()

  val getEventTokenMethod: MethodDescriptor<ProviderOuterClass.GetEventTokenRequest,
      ProviderOuterClass.GetEventTokenResponse>
    @JvmStatic
    get() = ProviderGrpc.getGetEventTokenMethod()

  /**
   * A stub for issuing RPCs to a(n) services.provider.v1.Provider service as suspending coroutines.
   */
  @StubFor(ProviderGrpc::class)
  class ProviderCoroutineStub @JvmOverloads constructor(
    channel: Channel,
    callOptions: CallOptions = DEFAULT
  ) : AbstractCoroutineStub<ProviderCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): ProviderCoroutineStub =
        ProviderCoroutineStub(channel, callOptions)

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
    suspend fun createEcosystem(request: ProviderOuterClass.CreateEcosystemRequest,
        headers: Metadata = Metadata()): ProviderOuterClass.CreateEcosystemResponse = unaryRpc(
      channel,
      ProviderGrpc.getCreateEcosystemMethod(),
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
    suspend fun updateEcosystem(request: ProviderOuterClass.UpdateEcosystemRequest,
        headers: Metadata = Metadata()): ProviderOuterClass.UpdateEcosystemResponse = unaryRpc(
      channel,
      ProviderGrpc.getUpdateEcosystemMethod(),
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
    suspend fun addWebhook(request: ProviderOuterClass.AddWebhookRequest, headers: Metadata =
        Metadata()): ProviderOuterClass.AddWebhookResponse = unaryRpc(
      channel,
      ProviderGrpc.getAddWebhookMethod(),
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
    suspend fun deleteWebhook(request: ProviderOuterClass.DeleteWebhookRequest, headers: Metadata =
        Metadata()): ProviderOuterClass.DeleteWebhookResponse = unaryRpc(
      channel,
      ProviderGrpc.getDeleteWebhookMethod(),
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
    suspend fun info(request: ProviderOuterClass.EcosystemInfoRequest, headers: Metadata =
        Metadata()): ProviderOuterClass.EcosystemInfoResponse = unaryRpc(
      channel,
      ProviderGrpc.getInfoMethod(),
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
    suspend fun generateToken(request: ProviderOuterClass.GenerateTokenRequest, headers: Metadata =
        Metadata()): ProviderOuterClass.GenerateTokenResponse = unaryRpc(
      channel,
      ProviderGrpc.getGenerateTokenMethod(),
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
    suspend fun invite(request: ProviderOuterClass.InviteRequest, headers: Metadata = Metadata()):
        ProviderOuterClass.InviteResponse = unaryRpc(
      channel,
      ProviderGrpc.getInviteMethod(),
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
    suspend fun invitationStatus(request: ProviderOuterClass.InvitationStatusRequest,
        headers: Metadata = Metadata()): ProviderOuterClass.InvitationStatusResponse = unaryRpc(
      channel,
      ProviderGrpc.getInvitationStatusMethod(),
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
    suspend fun getOberonKey(request: ProviderOuterClass.GetOberonKeyRequest, headers: Metadata =
        Metadata()): ProviderOuterClass.GetOberonKeyResponse = unaryRpc(
      channel,
      ProviderGrpc.getGetOberonKeyMethod(),
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
    suspend fun getEventToken(request: ProviderOuterClass.GetEventTokenRequest, headers: Metadata =
        Metadata()): ProviderOuterClass.GetEventTokenResponse = unaryRpc(
      channel,
      ProviderGrpc.getGetEventTokenMethod(),
      request,
      callOptions,
      headers
    )}

  /**
   * Skeletal implementation of the services.provider.v1.Provider service based on Kotlin
   * coroutines.
   */
  abstract class ProviderCoroutineImplBase(
    coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.provider.v1.Provider.CreateEcosystem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun createEcosystem(request: ProviderOuterClass.CreateEcosystemRequest):
        ProviderOuterClass.CreateEcosystemResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.CreateEcosystem is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.UpdateEcosystem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun updateEcosystem(request: ProviderOuterClass.UpdateEcosystemRequest):
        ProviderOuterClass.UpdateEcosystemResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.UpdateEcosystem is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.AddWebhook.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addWebhook(request: ProviderOuterClass.AddWebhookRequest):
        ProviderOuterClass.AddWebhookResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.AddWebhook is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.DeleteWebhook.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun deleteWebhook(request: ProviderOuterClass.DeleteWebhookRequest):
        ProviderOuterClass.DeleteWebhookResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.DeleteWebhook is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.Info.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun info(request: ProviderOuterClass.EcosystemInfoRequest):
        ProviderOuterClass.EcosystemInfoResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.Info is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GenerateToken.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun generateToken(request: ProviderOuterClass.GenerateTokenRequest):
        ProviderOuterClass.GenerateTokenResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.GenerateToken is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.Invite.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun invite(request: ProviderOuterClass.InviteRequest):
        ProviderOuterClass.InviteResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.Invite is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.InvitationStatus.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun invitationStatus(request: ProviderOuterClass.InvitationStatusRequest):
        ProviderOuterClass.InvitationStatusResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.InvitationStatus is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GetOberonKey.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getOberonKey(request: ProviderOuterClass.GetOberonKeyRequest):
        ProviderOuterClass.GetOberonKeyResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.GetOberonKey is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GetEventToken.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status].  If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail
     * with status `Status.CANCELLED`.  If this method fails for any other reason, the RPC will
     * fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getEventToken(request: ProviderOuterClass.GetEventTokenRequest):
        ProviderOuterClass.GetEventTokenResponse = throw
        StatusException(UNIMPLEMENTED.withDescription("Method services.provider.v1.Provider.GetEventToken is unimplemented"))

    final override fun bindService(): ServerServiceDefinition = builder(getServiceDescriptor())
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getCreateEcosystemMethod(),
      implementation = ::createEcosystem
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getUpdateEcosystemMethod(),
      implementation = ::updateEcosystem
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getAddWebhookMethod(),
      implementation = ::addWebhook
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getDeleteWebhookMethod(),
      implementation = ::deleteWebhook
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getInfoMethod(),
      implementation = ::info
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getGenerateTokenMethod(),
      implementation = ::generateToken
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getInviteMethod(),
      implementation = ::invite
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getInvitationStatusMethod(),
      implementation = ::invitationStatus
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getGetOberonKeyMethod(),
      implementation = ::getOberonKey
    ))
      .addMethod(unaryServerMethodDefinition(
      context = this.context,
      descriptor = ProviderGrpc.getGetEventTokenMethod(),
      implementation = ::getEventToken
    )).build()
  }
}
