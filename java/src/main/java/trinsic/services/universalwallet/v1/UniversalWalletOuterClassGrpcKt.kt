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
import io.grpc.kotlin.ClientCalls.unaryRpc
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

  val getItemMethod: MethodDescriptor<GetItemRequest, GetItemResponse>
    @JvmStatic get() = UniversalWalletGrpc.getGetItemMethod()

  val searchMethod: MethodDescriptor<SearchRequest, SearchResponse>
    @JvmStatic get() = UniversalWalletGrpc.getSearchMethod()

  val insertItemMethod: MethodDescriptor<InsertItemRequest, InsertItemResponse>
    @JvmStatic get() = UniversalWalletGrpc.getInsertItemMethod()

  val updateItemMethod: MethodDescriptor<UpdateItemRequest, UpdateItemResponse>
    @JvmStatic get() = UniversalWalletGrpc.getUpdateItemMethod()

  val deleteItemMethod: MethodDescriptor<DeleteItemRequest, DeleteItemResponse>
    @JvmStatic get() = UniversalWalletGrpc.getDeleteItemMethod()

  val deleteWalletMethod: MethodDescriptor<DeleteWalletRequest, DeleteWalletResponse>
    @JvmStatic get() = UniversalWalletGrpc.getDeleteWalletMethod()

  val createWalletMethod: MethodDescriptor<CreateWalletRequest, CreateWalletResponse>
    @JvmStatic get() = UniversalWalletGrpc.getCreateWalletMethod()

  val getWalletInfoMethod: MethodDescriptor<GetWalletInfoRequest, GetWalletInfoResponse>
    @JvmStatic get() = UniversalWalletGrpc.getGetWalletInfoMethod()

  val getMyInfoMethod: MethodDescriptor<GetMyInfoRequest, GetMyInfoResponse>
    @JvmStatic get() = UniversalWalletGrpc.getGetMyInfoMethod()

  val generateAuthTokenMethod: MethodDescriptor<GenerateAuthTokenRequest, GenerateAuthTokenResponse>
    @JvmStatic get() = UniversalWalletGrpc.getGenerateAuthTokenMethod()

  val revokeAuthTokenMethod: MethodDescriptor<RevokeAuthTokenRequest, RevokeAuthTokenResponse>
    @JvmStatic get() = UniversalWalletGrpc.getRevokeAuthTokenMethod()

  val addExternalIdentityInitMethod:
      MethodDescriptor<AddExternalIdentityInitRequest, AddExternalIdentityInitResponse>
    @JvmStatic get() = UniversalWalletGrpc.getAddExternalIdentityInitMethod()

  val addExternalIdentityConfirmMethod:
      MethodDescriptor<AddExternalIdentityConfirmRequest, AddExternalIdentityConfirmResponse>
    @JvmStatic get() = UniversalWalletGrpc.getAddExternalIdentityConfirmMethod()

  val removeExternalIdentityMethod:
      MethodDescriptor<RemoveExternalIdentityRequest, RemoveExternalIdentityResponse>
    @JvmStatic get() = UniversalWalletGrpc.getRemoveExternalIdentityMethod()

  val authenticateInitMethod: MethodDescriptor<AuthenticateInitRequest, AuthenticateInitResponse>
    @JvmStatic get() = UniversalWalletGrpc.getAuthenticateInitMethod()

  val authenticateConfirmMethod:
      MethodDescriptor<AuthenticateConfirmRequest, AuthenticateConfirmResponse>
    @JvmStatic get() = UniversalWalletGrpc.getAuthenticateConfirmMethod()

  val listWalletsMethod: MethodDescriptor<ListWalletsRequest, ListWalletsResponse>
    @JvmStatic get() = UniversalWalletGrpc.getListWalletsMethod()

  /**
   * A stub for issuing RPCs to a(n) services.universalwallet.v1.UniversalWallet service as
   * suspending coroutines.
   */
  @StubFor(UniversalWalletGrpc::class)
  class UniversalWalletCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<UniversalWalletCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): UniversalWalletCoroutineStub =
        UniversalWalletCoroutineStub(channel, callOptions)

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
    suspend fun getItem(request: GetItemRequest, headers: Metadata = Metadata()): GetItemResponse =
        unaryRpc(channel, UniversalWalletGrpc.getGetItemMethod(), request, callOptions, headers)
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
    suspend fun search(request: SearchRequest, headers: Metadata = Metadata()): SearchResponse =
        unaryRpc(channel, UniversalWalletGrpc.getSearchMethod(), request, callOptions, headers)
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
    suspend fun insertItem(
        request: InsertItemRequest,
        headers: Metadata = Metadata()
    ): InsertItemResponse =
        unaryRpc(channel, UniversalWalletGrpc.getInsertItemMethod(), request, callOptions, headers)
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
    suspend fun updateItem(
        request: UpdateItemRequest,
        headers: Metadata = Metadata()
    ): UpdateItemResponse =
        unaryRpc(channel, UniversalWalletGrpc.getUpdateItemMethod(), request, callOptions, headers)
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
    suspend fun deleteItem(
        request: DeleteItemRequest,
        headers: Metadata = Metadata()
    ): DeleteItemResponse =
        unaryRpc(channel, UniversalWalletGrpc.getDeleteItemMethod(), request, callOptions, headers)
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
    suspend fun deleteWallet(
        request: DeleteWalletRequest,
        headers: Metadata = Metadata()
    ): DeleteWalletResponse =
        unaryRpc(
            channel, UniversalWalletGrpc.getDeleteWalletMethod(), request, callOptions, headers)
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
    suspend fun createWallet(
        request: CreateWalletRequest,
        headers: Metadata = Metadata()
    ): CreateWalletResponse =
        unaryRpc(
            channel, UniversalWalletGrpc.getCreateWalletMethod(), request, callOptions, headers)
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
    suspend fun getWalletInfo(
        request: GetWalletInfoRequest,
        headers: Metadata = Metadata()
    ): GetWalletInfoResponse =
        unaryRpc(
            channel, UniversalWalletGrpc.getGetWalletInfoMethod(), request, callOptions, headers)
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
    suspend fun getMyInfo(
        request: GetMyInfoRequest,
        headers: Metadata = Metadata()
    ): GetMyInfoResponse =
        unaryRpc(channel, UniversalWalletGrpc.getGetMyInfoMethod(), request, callOptions, headers)
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
    suspend fun generateAuthToken(
        request: GenerateAuthTokenRequest,
        headers: Metadata = Metadata()
    ): GenerateAuthTokenResponse =
        unaryRpc(
            channel,
            UniversalWalletGrpc.getGenerateAuthTokenMethod(),
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
    suspend fun revokeAuthToken(
        request: RevokeAuthTokenRequest,
        headers: Metadata = Metadata()
    ): RevokeAuthTokenResponse =
        unaryRpc(
            channel, UniversalWalletGrpc.getRevokeAuthTokenMethod(), request, callOptions, headers)
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
    suspend fun addExternalIdentityInit(
        request: AddExternalIdentityInitRequest,
        headers: Metadata = Metadata()
    ): AddExternalIdentityInitResponse =
        unaryRpc(
            channel,
            UniversalWalletGrpc.getAddExternalIdentityInitMethod(),
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
    suspend fun addExternalIdentityConfirm(
        request: AddExternalIdentityConfirmRequest,
        headers: Metadata = Metadata()
    ): AddExternalIdentityConfirmResponse =
        unaryRpc(
            channel,
            UniversalWalletGrpc.getAddExternalIdentityConfirmMethod(),
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
    suspend fun removeExternalIdentity(
        request: RemoveExternalIdentityRequest,
        headers: Metadata = Metadata()
    ): RemoveExternalIdentityResponse =
        unaryRpc(
            channel,
            UniversalWalletGrpc.getRemoveExternalIdentityMethod(),
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
    suspend fun authenticateInit(
        request: AuthenticateInitRequest,
        headers: Metadata = Metadata()
    ): AuthenticateInitResponse =
        unaryRpc(
            channel, UniversalWalletGrpc.getAuthenticateInitMethod(), request, callOptions, headers)
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
    suspend fun authenticateConfirm(
        request: AuthenticateConfirmRequest,
        headers: Metadata = Metadata()
    ): AuthenticateConfirmResponse =
        unaryRpc(
            channel,
            UniversalWalletGrpc.getAuthenticateConfirmMethod(),
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
    suspend fun listWallets(
        request: ListWalletsRequest,
        headers: Metadata = Metadata()
    ): ListWalletsResponse =
        unaryRpc(channel, UniversalWalletGrpc.getListWalletsMethod(), request, callOptions, headers)
  }

  /**
   * Skeletal implementation of the services.universalwallet.v1.UniversalWallet service based on
   * Kotlin coroutines.
   */
  abstract class UniversalWalletCoroutineImplBase(
      coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.GetItem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getItem(request: GetItemRequest): GetItemResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.GetItem is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.Search.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun search(request: SearchRequest): SearchResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.Search is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.InsertItem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun insertItem(request: InsertItemRequest): InsertItemResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.InsertItem is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.UpdateItem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun updateItem(request: UpdateItemRequest): UpdateItemResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.UpdateItem is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.DeleteItem.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun deleteItem(request: DeleteItemRequest): DeleteItemResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.DeleteItem is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.DeleteWallet.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun deleteWallet(request: DeleteWalletRequest): DeleteWalletResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.DeleteWallet is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.CreateWallet.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun createWallet(request: CreateWalletRequest): CreateWalletResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.CreateWallet is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.GetWalletInfo.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getWalletInfo(request: GetWalletInfoRequest): GetWalletInfoResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.GetWalletInfo is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.GetMyInfo.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getMyInfo(request: GetMyInfoRequest): GetMyInfoResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.GetMyInfo is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.GenerateAuthToken.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun generateAuthToken(
        request: GenerateAuthTokenRequest
    ): GenerateAuthTokenResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.GenerateAuthToken is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.RevokeAuthToken.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun revokeAuthToken(request: RevokeAuthTokenRequest): RevokeAuthTokenResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.RevokeAuthToken is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.AddExternalIdentityInit.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addExternalIdentityInit(
        request: AddExternalIdentityInitRequest
    ): AddExternalIdentityInitResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.AddExternalIdentityInit is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.AddExternalIdentityConfirm.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun addExternalIdentityConfirm(
        request: AddExternalIdentityConfirmRequest
    ): AddExternalIdentityConfirmResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.AddExternalIdentityConfirm is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.RemoveExternalIdentity.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun removeExternalIdentity(
        request: RemoveExternalIdentityRequest
    ): RemoveExternalIdentityResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.RemoveExternalIdentity is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.AuthenticateInit.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun authenticateInit(request: AuthenticateInitRequest): AuthenticateInitResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.AuthenticateInit is unimplemented"))

    /**
     * Returns the response to an RPC for
     * services.universalwallet.v1.UniversalWallet.AuthenticateConfirm.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun authenticateConfirm(
        request: AuthenticateConfirmRequest
    ): AuthenticateConfirmResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.AuthenticateConfirm is unimplemented"))

    /**
     * Returns the response to an RPC for services.universalwallet.v1.UniversalWallet.ListWallets.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun listWallets(request: ListWalletsRequest): ListWalletsResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.universalwallet.v1.UniversalWallet.ListWallets is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getGetItemMethod(),
                    implementation = ::getItem))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getSearchMethod(),
                    implementation = ::search))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getInsertItemMethod(),
                    implementation = ::insertItem))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getUpdateItemMethod(),
                    implementation = ::updateItem))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getDeleteItemMethod(),
                    implementation = ::deleteItem))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getDeleteWalletMethod(),
                    implementation = ::deleteWallet))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getCreateWalletMethod(),
                    implementation = ::createWallet))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getGetWalletInfoMethod(),
                    implementation = ::getWalletInfo))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getGetMyInfoMethod(),
                    implementation = ::getMyInfo))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getGenerateAuthTokenMethod(),
                    implementation = ::generateAuthToken))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getRevokeAuthTokenMethod(),
                    implementation = ::revokeAuthToken))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getAddExternalIdentityInitMethod(),
                    implementation = ::addExternalIdentityInit))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getAddExternalIdentityConfirmMethod(),
                    implementation = ::addExternalIdentityConfirm))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getRemoveExternalIdentityMethod(),
                    implementation = ::removeExternalIdentity))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getAuthenticateInitMethod(),
                    implementation = ::authenticateInit))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getAuthenticateConfirmMethod(),
                    implementation = ::authenticateConfirm))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = UniversalWalletGrpc.getListWalletsMethod(),
                    implementation = ::listWallets))
            .build()
  }
}
