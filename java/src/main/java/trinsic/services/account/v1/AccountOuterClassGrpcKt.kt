package trinsic.services.account.v1

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
import kotlin.Deprecated
import kotlin.String
import kotlin.coroutines.CoroutineContext
import kotlin.coroutines.EmptyCoroutineContext
import kotlin.jvm.JvmOverloads
import kotlin.jvm.JvmStatic
import trinsic.services.account.v1.AccountGrpc.getServiceDescriptor

/** Holder for Kotlin coroutine-based client and server APIs for services.account.v1.Account. */
object AccountGrpcKt {
  const val SERVICE_NAME: String = AccountGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = AccountGrpc.getServiceDescriptor()

  val signInMethod: MethodDescriptor<SignInRequest, SignInResponse>
    @JvmStatic get() = AccountGrpc.getSignInMethod()

  val loginMethod: MethodDescriptor<LoginRequest, LoginResponse>
    @JvmStatic get() = AccountGrpc.getLoginMethod()

  val loginConfirmMethod: MethodDescriptor<LoginConfirmRequest, LoginConfirmResponse>
    @JvmStatic get() = AccountGrpc.getLoginConfirmMethod()

  val infoMethod: MethodDescriptor<AccountInfoRequest, AccountInfoResponse>
    @JvmStatic get() = AccountGrpc.getInfoMethod()

  val authorizeWebhookMethod: MethodDescriptor<AuthorizeWebhookRequest, AuthorizeWebhookResponse>
    @JvmStatic get() = AccountGrpc.getAuthorizeWebhookMethod()

  /**
   * A stub for issuing RPCs to a(n) services.account.v1.Account service as suspending coroutines.
   */
  @StubFor(AccountGrpc::class)
  class AccountCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<AccountCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): AccountCoroutineStub =
        AccountCoroutineStub(channel, callOptions)

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
    @Deprecated("The underlying service method is marked deprecated.")
    suspend fun signIn(request: SignInRequest, headers: Metadata = Metadata()): SignInResponse =
        unaryRpc(channel, AccountGrpc.getSignInMethod(), request, callOptions, headers)
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
    suspend fun login(request: LoginRequest, headers: Metadata = Metadata()): LoginResponse =
        unaryRpc(channel, AccountGrpc.getLoginMethod(), request, callOptions, headers)
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
    suspend fun loginConfirm(
        request: LoginConfirmRequest,
        headers: Metadata = Metadata()
    ): LoginConfirmResponse =
        unaryRpc(channel, AccountGrpc.getLoginConfirmMethod(), request, callOptions, headers)
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
    suspend fun info(
        request: AccountInfoRequest,
        headers: Metadata = Metadata()
    ): AccountInfoResponse =
        unaryRpc(channel, AccountGrpc.getInfoMethod(), request, callOptions, headers)
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
    suspend fun authorizeWebhook(
        request: AuthorizeWebhookRequest,
        headers: Metadata = Metadata()
    ): AuthorizeWebhookResponse =
        unaryRpc(channel, AccountGrpc.getAuthorizeWebhookMethod(), request, callOptions, headers)
  }

  /**
   * Skeletal implementation of the services.account.v1.Account service based on Kotlin coroutines.
   */
  abstract class AccountCoroutineImplBase(
      coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.account.v1.Account.SignIn.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    @Deprecated("The underlying service method is marked deprecated.")
    open suspend fun signIn(request: SignInRequest): SignInResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.account.v1.Account.SignIn is unimplemented"))

    /**
     * Returns the response to an RPC for services.account.v1.Account.Login.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun login(request: LoginRequest): LoginResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.account.v1.Account.Login is unimplemented"))

    /**
     * Returns the response to an RPC for services.account.v1.Account.LoginConfirm.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun loginConfirm(request: LoginConfirmRequest): LoginConfirmResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.account.v1.Account.LoginConfirm is unimplemented"))

    /**
     * Returns the response to an RPC for services.account.v1.Account.Info.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun info(request: AccountInfoRequest): AccountInfoResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.account.v1.Account.Info is unimplemented"))

    /**
     * Returns the response to an RPC for services.account.v1.Account.AuthorizeWebhook.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun authorizeWebhook(request: AuthorizeWebhookRequest): AuthorizeWebhookResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.account.v1.Account.AuthorizeWebhook is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccountGrpc.getSignInMethod(),
                    implementation = ::signIn))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccountGrpc.getLoginMethod(),
                    implementation = ::login))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccountGrpc.getLoginConfirmMethod(),
                    implementation = ::loginConfirm))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccountGrpc.getInfoMethod(),
                    implementation = ::info))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = AccountGrpc.getAuthorizeWebhookMethod(),
                    implementation = ::authorizeWebhook))
            .build()
  }
}
