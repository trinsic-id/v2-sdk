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
import trinsic.services.provider.v1.ProviderGrpc.getServiceDescriptor

/** Holder for Kotlin coroutine-based client and server APIs for services.provider.v1.Provider. */
object ProviderGrpcKt {
  const val SERVICE_NAME: String = ProviderGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = ProviderGrpc.getServiceDescriptor()

  val createEcosystemMethod: MethodDescriptor<CreateEcosystemRequest, CreateEcosystemResponse>
    @JvmStatic get() = ProviderGrpc.getCreateEcosystemMethod()

  val updateEcosystemMethod: MethodDescriptor<UpdateEcosystemRequest, UpdateEcosystemResponse>
    @JvmStatic get() = ProviderGrpc.getUpdateEcosystemMethod()

  val grantAuthorizationMethod:
      MethodDescriptor<GrantAuthorizationRequest, GrantAuthorizationResponse>
    @JvmStatic get() = ProviderGrpc.getGrantAuthorizationMethod()

  val revokeAuthorizationMethod:
      MethodDescriptor<RevokeAuthorizationRequest, RevokeAuthorizationResponse>
    @JvmStatic get() = ProviderGrpc.getRevokeAuthorizationMethod()

  val getAuthorizationsMethod: MethodDescriptor<GetAuthorizationsRequest, GetAuthorizationsResponse>
    @JvmStatic get() = ProviderGrpc.getGetAuthorizationsMethod()

  val addWebhookMethod: MethodDescriptor<AddWebhookRequest, AddWebhookResponse>
    @JvmStatic get() = ProviderGrpc.getAddWebhookMethod()

  val deleteWebhookMethod: MethodDescriptor<DeleteWebhookRequest, DeleteWebhookResponse>
    @JvmStatic get() = ProviderGrpc.getDeleteWebhookMethod()

  val ecosystemInfoMethod: MethodDescriptor<EcosystemInfoRequest, EcosystemInfoResponse>
    @JvmStatic get() = ProviderGrpc.getEcosystemInfoMethod()

  val generateTokenMethod: MethodDescriptor<GenerateTokenRequest, GenerateTokenResponse>
    @JvmStatic get() = ProviderGrpc.getGenerateTokenMethod()

  val inviteMethod: MethodDescriptor<InviteRequest, InviteResponse>
    @JvmStatic get() = ProviderGrpc.getInviteMethod()

  val invitationStatusMethod: MethodDescriptor<InvitationStatusRequest, InvitationStatusResponse>
    @JvmStatic get() = ProviderGrpc.getInvitationStatusMethod()

  val getOberonKeyMethod: MethodDescriptor<GetOberonKeyRequest, GetOberonKeyResponse>
    @JvmStatic get() = ProviderGrpc.getGetOberonKeyMethod()

  val getEventTokenMethod: MethodDescriptor<GetEventTokenRequest, GetEventTokenResponse>
    @JvmStatic get() = ProviderGrpc.getGetEventTokenMethod()

  val retrieveVerificationRecordMethod:
      MethodDescriptor<RetrieveVerificationRecordRequest, RetrieveVerificationRecordResponse>
    @JvmStatic get() = ProviderGrpc.getRetrieveVerificationRecordMethod()

  val refreshVerificationStatusMethod:
      MethodDescriptor<RefreshVerificationStatusRequest, RefreshVerificationStatusResponse>
    @JvmStatic get() = ProviderGrpc.getRefreshVerificationStatusMethod()

  /**
   * A stub for issuing RPCs to a(n) services.provider.v1.Provider service as suspending coroutines.
   */
  @StubFor(ProviderGrpc::class)
  class ProviderCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<ProviderCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): ProviderCoroutineStub =
        ProviderCoroutineStub(channel, callOptions)

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
    suspend fun createEcosystem(
        request: CreateEcosystemRequest,
        headers: Metadata = Metadata()
    ): CreateEcosystemResponse =
        unaryRpc(channel, ProviderGrpc.getCreateEcosystemMethod(), request, callOptions, headers)
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
    suspend fun updateEcosystem(
        request: UpdateEcosystemRequest,
        headers: Metadata = Metadata()
    ): UpdateEcosystemResponse =
        unaryRpc(channel, ProviderGrpc.getUpdateEcosystemMethod(), request, callOptions, headers)
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
    suspend fun grantAuthorization(
        request: GrantAuthorizationRequest,
        headers: Metadata = Metadata()
    ): GrantAuthorizationResponse =
        unaryRpc(channel, ProviderGrpc.getGrantAuthorizationMethod(), request, callOptions, headers)
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
    suspend fun revokeAuthorization(
        request: RevokeAuthorizationRequest,
        headers: Metadata = Metadata()
    ): RevokeAuthorizationResponse =
        unaryRpc(
            channel, ProviderGrpc.getRevokeAuthorizationMethod(), request, callOptions, headers)
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
    suspend fun getAuthorizations(
        request: GetAuthorizationsRequest,
        headers: Metadata = Metadata()
    ): GetAuthorizationsResponse =
        unaryRpc(channel, ProviderGrpc.getGetAuthorizationsMethod(), request, callOptions, headers)
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
    suspend fun addWebhook(
        request: AddWebhookRequest,
        headers: Metadata = Metadata()
    ): AddWebhookResponse =
        unaryRpc(channel, ProviderGrpc.getAddWebhookMethod(), request, callOptions, headers)
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
    suspend fun deleteWebhook(
        request: DeleteWebhookRequest,
        headers: Metadata = Metadata()
    ): DeleteWebhookResponse =
        unaryRpc(channel, ProviderGrpc.getDeleteWebhookMethod(), request, callOptions, headers)
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
    suspend fun ecosystemInfo(
        request: EcosystemInfoRequest,
        headers: Metadata = Metadata()
    ): EcosystemInfoResponse =
        unaryRpc(channel, ProviderGrpc.getEcosystemInfoMethod(), request, callOptions, headers)
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
    suspend fun generateToken(
        request: GenerateTokenRequest,
        headers: Metadata = Metadata()
    ): GenerateTokenResponse =
        unaryRpc(channel, ProviderGrpc.getGenerateTokenMethod(), request, callOptions, headers)
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
    suspend fun invite(request: InviteRequest, headers: Metadata = Metadata()): InviteResponse =
        unaryRpc(channel, ProviderGrpc.getInviteMethod(), request, callOptions, headers)
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
    suspend fun invitationStatus(
        request: InvitationStatusRequest,
        headers: Metadata = Metadata()
    ): InvitationStatusResponse =
        unaryRpc(channel, ProviderGrpc.getInvitationStatusMethod(), request, callOptions, headers)
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
    suspend fun getOberonKey(
        request: GetOberonKeyRequest,
        headers: Metadata = Metadata()
    ): GetOberonKeyResponse =
        unaryRpc(channel, ProviderGrpc.getGetOberonKeyMethod(), request, callOptions, headers)
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
    suspend fun getEventToken(
        request: GetEventTokenRequest,
        headers: Metadata = Metadata()
    ): GetEventTokenResponse =
        unaryRpc(channel, ProviderGrpc.getGetEventTokenMethod(), request, callOptions, headers)
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
    suspend fun retrieveVerificationRecord(
        request: RetrieveVerificationRecordRequest,
        headers: Metadata = Metadata()
    ): RetrieveVerificationRecordResponse =
        unaryRpc(
            channel,
            ProviderGrpc.getRetrieveVerificationRecordMethod(),
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
    suspend fun refreshVerificationStatus(
        request: RefreshVerificationStatusRequest,
        headers: Metadata = Metadata()
    ): RefreshVerificationStatusResponse =
        unaryRpc(
            channel,
            ProviderGrpc.getRefreshVerificationStatusMethod(),
            request,
            callOptions,
            headers)
  }

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
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun createEcosystem(request: CreateEcosystemRequest): CreateEcosystemResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.CreateEcosystem is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.UpdateEcosystem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun updateEcosystem(request: UpdateEcosystemRequest): UpdateEcosystemResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.UpdateEcosystem is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GrantAuthorization.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun grantAuthorization(
        request: GrantAuthorizationRequest
    ): GrantAuthorizationResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.GrantAuthorization is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.RevokeAuthorization.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun revokeAuthorization(
        request: RevokeAuthorizationRequest
    ): RevokeAuthorizationResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.RevokeAuthorization is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GetAuthorizations.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getAuthorizations(
        request: GetAuthorizationsRequest
    ): GetAuthorizationsResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.GetAuthorizations is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.AddWebhook.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addWebhook(request: AddWebhookRequest): AddWebhookResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.AddWebhook is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.DeleteWebhook.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun deleteWebhook(request: DeleteWebhookRequest): DeleteWebhookResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.DeleteWebhook is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.EcosystemInfo.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun ecosystemInfo(request: EcosystemInfoRequest): EcosystemInfoResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.EcosystemInfo is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GenerateToken.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun generateToken(request: GenerateTokenRequest): GenerateTokenResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.GenerateToken is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.Invite.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun invite(request: InviteRequest): InviteResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.Invite is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.InvitationStatus.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun invitationStatus(request: InvitationStatusRequest): InvitationStatusResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.InvitationStatus is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GetOberonKey.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getOberonKey(request: GetOberonKeyRequest): GetOberonKeyResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.GetOberonKey is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.GetEventToken.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getEventToken(request: GetEventTokenRequest): GetEventTokenResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.GetEventToken is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.RetrieveVerificationRecord.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun retrieveVerificationRecord(
        request: RetrieveVerificationRecordRequest
    ): RetrieveVerificationRecordResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.RetrieveVerificationRecord is unimplemented"))

    /**
     * Returns the response to an RPC for services.provider.v1.Provider.RefreshVerificationStatus.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun refreshVerificationStatus(
        request: RefreshVerificationStatusRequest
    ): RefreshVerificationStatusResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.provider.v1.Provider.RefreshVerificationStatus is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getCreateEcosystemMethod(),
                    implementation = ::createEcosystem))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getUpdateEcosystemMethod(),
                    implementation = ::updateEcosystem))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getGrantAuthorizationMethod(),
                    implementation = ::grantAuthorization))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getRevokeAuthorizationMethod(),
                    implementation = ::revokeAuthorization))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getGetAuthorizationsMethod(),
                    implementation = ::getAuthorizations))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getAddWebhookMethod(),
                    implementation = ::addWebhook))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getDeleteWebhookMethod(),
                    implementation = ::deleteWebhook))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getEcosystemInfoMethod(),
                    implementation = ::ecosystemInfo))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getGenerateTokenMethod(),
                    implementation = ::generateToken))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getInviteMethod(),
                    implementation = ::invite))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getInvitationStatusMethod(),
                    implementation = ::invitationStatus))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getGetOberonKeyMethod(),
                    implementation = ::getOberonKey))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getGetEventTokenMethod(),
                    implementation = ::getEventToken))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getRetrieveVerificationRecordMethod(),
                    implementation = ::retrieveVerificationRecord))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = ProviderGrpc.getRefreshVerificationStatusMethod(),
                    implementation = ::refreshVerificationStatus))
            .build()
  }
}
