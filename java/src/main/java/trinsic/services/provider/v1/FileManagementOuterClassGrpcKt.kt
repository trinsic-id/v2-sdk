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
import trinsic.services.provider.v1.FileManagementGrpc.getServiceDescriptor

/**
 * Holder for Kotlin coroutine-based client and server APIs for
 * services.filemanagement.v1.FileManagement.
 */
object FileManagementGrpcKt {
  const val SERVICE_NAME: String = FileManagementGrpc.SERVICE_NAME

  @JvmStatic
  val serviceDescriptor: ServiceDescriptor
    get() = FileManagementGrpc.getServiceDescriptor()

  val uploadFileMethod: MethodDescriptor<UploadFileRequest, UploadFileResponse>
    @JvmStatic get() = FileManagementGrpc.getUploadFileMethod()

  val getFileMethod: MethodDescriptor<GetFileRequest, GetFileResponse>
    @JvmStatic get() = FileManagementGrpc.getGetFileMethod()

  val deleteFileMethod: MethodDescriptor<DeleteFileRequest, DeleteFileResponse>
    @JvmStatic get() = FileManagementGrpc.getDeleteFileMethod()

  val listFilesMethod: MethodDescriptor<ListFilesRequest, ListFilesResponse>
    @JvmStatic get() = FileManagementGrpc.getListFilesMethod()

  val getStorageStatsMethod: MethodDescriptor<GetStorageStatsRequest, GetStorageStatsResponse>
    @JvmStatic get() = FileManagementGrpc.getGetStorageStatsMethod()

  /**
   * A stub for issuing RPCs to a(n) services.filemanagement.v1.FileManagement service as suspending
   * coroutines.
   */
  @StubFor(FileManagementGrpc::class)
  class FileManagementCoroutineStub
  @JvmOverloads
  constructor(channel: Channel, callOptions: CallOptions = DEFAULT) :
      AbstractCoroutineStub<FileManagementCoroutineStub>(channel, callOptions) {
    override fun build(channel: Channel, callOptions: CallOptions): FileManagementCoroutineStub =
        FileManagementCoroutineStub(channel, callOptions)

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
    suspend fun uploadFile(
        request: UploadFileRequest,
        headers: Metadata = Metadata()
    ): UploadFileResponse =
        unaryRpc(channel, FileManagementGrpc.getUploadFileMethod(), request, callOptions, headers)
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
    suspend fun getFile(request: GetFileRequest, headers: Metadata = Metadata()): GetFileResponse =
        unaryRpc(channel, FileManagementGrpc.getGetFileMethod(), request, callOptions, headers)
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
    suspend fun deleteFile(
        request: DeleteFileRequest,
        headers: Metadata = Metadata()
    ): DeleteFileResponse =
        unaryRpc(channel, FileManagementGrpc.getDeleteFileMethod(), request, callOptions, headers)
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
    suspend fun listFiles(
        request: ListFilesRequest,
        headers: Metadata = Metadata()
    ): ListFilesResponse =
        unaryRpc(channel, FileManagementGrpc.getListFilesMethod(), request, callOptions, headers)
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
    suspend fun getStorageStats(
        request: GetStorageStatsRequest,
        headers: Metadata = Metadata()
    ): GetStorageStatsResponse =
        unaryRpc(
            channel, FileManagementGrpc.getGetStorageStatsMethod(), request, callOptions, headers)
  }

  /**
   * Skeletal implementation of the services.filemanagement.v1.FileManagement service based on
   * Kotlin coroutines.
   */
  abstract class FileManagementCoroutineImplBase(
      coroutineContext: CoroutineContext = EmptyCoroutineContext
  ) : AbstractCoroutineServerImpl(coroutineContext) {
    /**
     * Returns the response to an RPC for services.filemanagement.v1.FileManagement.UploadFile.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun uploadFile(request: UploadFileRequest): UploadFileResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.filemanagement.v1.FileManagement.UploadFile is unimplemented"))

    /**
     * Returns the response to an RPC for services.filemanagement.v1.FileManagement.GetFile.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getFile(request: GetFileRequest): GetFileResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.filemanagement.v1.FileManagement.GetFile is unimplemented"))

    /**
     * Returns the response to an RPC for services.filemanagement.v1.FileManagement.DeleteFile.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun deleteFile(request: DeleteFileRequest): DeleteFileResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.filemanagement.v1.FileManagement.DeleteFile is unimplemented"))

    /**
     * Returns the response to an RPC for services.filemanagement.v1.FileManagement.ListFiles.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun listFiles(request: ListFilesRequest): ListFilesResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.filemanagement.v1.FileManagement.ListFiles is unimplemented"))

    /**
     * Returns the response to an RPC for services.filemanagement.v1.FileManagement.GetStorageStats.
     *
     * If this method fails with a [StatusException], the RPC will fail with the corresponding
     * [Status]. If this method fails with a [java.util.concurrent.CancellationException], the RPC
     * will fail with status `Status.CANCELLED`. If this method fails for any other reason, the RPC
     * will fail with `Status.UNKNOWN` with the exception as a cause.
     *
     * @param request The request from the client.
     */
    open suspend fun getStorageStats(request: GetStorageStatsRequest): GetStorageStatsResponse =
        throw StatusException(
            UNIMPLEMENTED.withDescription(
                "Method services.filemanagement.v1.FileManagement.GetStorageStats is unimplemented"))

    final override fun bindService(): ServerServiceDefinition =
        builder(getServiceDescriptor())
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = FileManagementGrpc.getUploadFileMethod(),
                    implementation = ::uploadFile))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = FileManagementGrpc.getGetFileMethod(),
                    implementation = ::getFile))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = FileManagementGrpc.getDeleteFileMethod(),
                    implementation = ::deleteFile))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = FileManagementGrpc.getListFilesMethod(),
                    implementation = ::listFiles))
            .addMethod(
                unaryServerMethodDefinition(
                    context = this.context,
                    descriptor = FileManagementGrpc.getGetStorageStatsMethod(),
                    implementation = ::getStorageStats))
            .build()
  }
}
