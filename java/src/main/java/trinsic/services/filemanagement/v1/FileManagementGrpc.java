package trinsic.services.filemanagement.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/** */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.49.2)",
    comments = "Source: services/file-management/v1/file-management.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class FileManagementGrpc {

  private FileManagementGrpc() {}

  public static final String SERVICE_NAME = "services.filemanagement.v1.FileManagement";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.UploadFileRequest,
          trinsic.services.filemanagement.v1.UploadFileResponse>
      getUploadFileMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UploadFile",
      requestType = trinsic.services.filemanagement.v1.UploadFileRequest.class,
      responseType = trinsic.services.filemanagement.v1.UploadFileResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.UploadFileRequest,
          trinsic.services.filemanagement.v1.UploadFileResponse>
      getUploadFileMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.filemanagement.v1.UploadFileRequest,
            trinsic.services.filemanagement.v1.UploadFileResponse>
        getUploadFileMethod;
    if ((getUploadFileMethod = FileManagementGrpc.getUploadFileMethod) == null) {
      synchronized (FileManagementGrpc.class) {
        if ((getUploadFileMethod = FileManagementGrpc.getUploadFileMethod) == null) {
          FileManagementGrpc.getUploadFileMethod =
              getUploadFileMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.filemanagement.v1.UploadFileRequest,
                          trinsic.services.filemanagement.v1.UploadFileResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UploadFile"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.UploadFileRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.UploadFileResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new FileManagementMethodDescriptorSupplier("UploadFile"))
                      .build();
        }
      }
    }
    return getUploadFileMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.GetFileRequest,
          trinsic.services.filemanagement.v1.GetFileResponse>
      getGetFileMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetFile",
      requestType = trinsic.services.filemanagement.v1.GetFileRequest.class,
      responseType = trinsic.services.filemanagement.v1.GetFileResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.GetFileRequest,
          trinsic.services.filemanagement.v1.GetFileResponse>
      getGetFileMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.filemanagement.v1.GetFileRequest,
            trinsic.services.filemanagement.v1.GetFileResponse>
        getGetFileMethod;
    if ((getGetFileMethod = FileManagementGrpc.getGetFileMethod) == null) {
      synchronized (FileManagementGrpc.class) {
        if ((getGetFileMethod = FileManagementGrpc.getGetFileMethod) == null) {
          FileManagementGrpc.getGetFileMethod =
              getGetFileMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.filemanagement.v1.GetFileRequest,
                          trinsic.services.filemanagement.v1.GetFileResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetFile"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.GetFileRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.GetFileResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new FileManagementMethodDescriptorSupplier("GetFile"))
                      .build();
        }
      }
    }
    return getGetFileMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.DeleteFileRequest,
          trinsic.services.filemanagement.v1.DeleteFileResponse>
      getDeleteFileMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "DeleteFile",
      requestType = trinsic.services.filemanagement.v1.DeleteFileRequest.class,
      responseType = trinsic.services.filemanagement.v1.DeleteFileResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.DeleteFileRequest,
          trinsic.services.filemanagement.v1.DeleteFileResponse>
      getDeleteFileMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.filemanagement.v1.DeleteFileRequest,
            trinsic.services.filemanagement.v1.DeleteFileResponse>
        getDeleteFileMethod;
    if ((getDeleteFileMethod = FileManagementGrpc.getDeleteFileMethod) == null) {
      synchronized (FileManagementGrpc.class) {
        if ((getDeleteFileMethod = FileManagementGrpc.getDeleteFileMethod) == null) {
          FileManagementGrpc.getDeleteFileMethod =
              getDeleteFileMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.filemanagement.v1.DeleteFileRequest,
                          trinsic.services.filemanagement.v1.DeleteFileResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "DeleteFile"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.DeleteFileRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.DeleteFileResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new FileManagementMethodDescriptorSupplier("DeleteFile"))
                      .build();
        }
      }
    }
    return getDeleteFileMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.ListFilesRequest,
          trinsic.services.filemanagement.v1.ListFilesResponse>
      getListFilesMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListFiles",
      requestType = trinsic.services.filemanagement.v1.ListFilesRequest.class,
      responseType = trinsic.services.filemanagement.v1.ListFilesResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.ListFilesRequest,
          trinsic.services.filemanagement.v1.ListFilesResponse>
      getListFilesMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.filemanagement.v1.ListFilesRequest,
            trinsic.services.filemanagement.v1.ListFilesResponse>
        getListFilesMethod;
    if ((getListFilesMethod = FileManagementGrpc.getListFilesMethod) == null) {
      synchronized (FileManagementGrpc.class) {
        if ((getListFilesMethod = FileManagementGrpc.getListFilesMethod) == null) {
          FileManagementGrpc.getListFilesMethod =
              getListFilesMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.filemanagement.v1.ListFilesRequest,
                          trinsic.services.filemanagement.v1.ListFilesResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "ListFiles"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.ListFilesRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.ListFilesResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new FileManagementMethodDescriptorSupplier("ListFiles"))
                      .build();
        }
      }
    }
    return getListFilesMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.GetStorageStatsRequest,
          trinsic.services.filemanagement.v1.GetStorageStatsResponse>
      getGetStorageStatsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetStorageStats",
      requestType = trinsic.services.filemanagement.v1.GetStorageStatsRequest.class,
      responseType = trinsic.services.filemanagement.v1.GetStorageStatsResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.filemanagement.v1.GetStorageStatsRequest,
          trinsic.services.filemanagement.v1.GetStorageStatsResponse>
      getGetStorageStatsMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.filemanagement.v1.GetStorageStatsRequest,
            trinsic.services.filemanagement.v1.GetStorageStatsResponse>
        getGetStorageStatsMethod;
    if ((getGetStorageStatsMethod = FileManagementGrpc.getGetStorageStatsMethod) == null) {
      synchronized (FileManagementGrpc.class) {
        if ((getGetStorageStatsMethod = FileManagementGrpc.getGetStorageStatsMethod) == null) {
          FileManagementGrpc.getGetStorageStatsMethod =
              getGetStorageStatsMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.filemanagement.v1.GetStorageStatsRequest,
                          trinsic.services.filemanagement.v1.GetStorageStatsResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetStorageStats"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.GetStorageStatsRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.filemanagement.v1.GetStorageStatsResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new FileManagementMethodDescriptorSupplier("GetStorageStats"))
                      .build();
        }
      }
    }
    return getGetStorageStatsMethod;
  }

  /** Creates a new async stub that supports all call types for the service */
  public static FileManagementStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<FileManagementStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<FileManagementStub>() {
          @java.lang.Override
          public FileManagementStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new FileManagementStub(channel, callOptions);
          }
        };
    return FileManagementStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static FileManagementBlockingStub newBlockingStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<FileManagementBlockingStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<FileManagementBlockingStub>() {
          @java.lang.Override
          public FileManagementBlockingStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new FileManagementBlockingStub(channel, callOptions);
          }
        };
    return FileManagementBlockingStub.newStub(factory, channel);
  }

  /** Creates a new ListenableFuture-style stub that supports unary calls on the service */
  public static FileManagementFutureStub newFutureStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<FileManagementFutureStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<FileManagementFutureStub>() {
          @java.lang.Override
          public FileManagementFutureStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new FileManagementFutureStub(channel, callOptions);
          }
        };
    return FileManagementFutureStub.newStub(factory, channel);
  }

  /** */
  public abstract static class FileManagementImplBase implements io.grpc.BindableService {

    /**
     *
     *
     * <pre>
     * Upload a file to Trinsic's CDN
     * </pre>
     */
    public void uploadFile(
        trinsic.services.filemanagement.v1.UploadFileRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.UploadFileResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUploadFileMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Fetch information about a file by its ID
     * </pre>
     */
    public void getFile(
        trinsic.services.filemanagement.v1.GetFileRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.GetFileResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetFileMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete a file by its ID
     * </pre>
     */
    public void deleteFile(
        trinsic.services.filemanagement.v1.DeleteFileRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.DeleteFileResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getDeleteFileMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List files the calling account has uploaded
     * </pre>
     */
    public void listFiles(
        trinsic.services.filemanagement.v1.ListFilesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.ListFilesResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getListFilesMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get statistics about files uploaded by the calling account
     * </pre>
     */
    public void getStorageStats(
        trinsic.services.filemanagement.v1.GetStorageStatsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.GetStorageStatsResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetStorageStatsMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getUploadFileMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.filemanagement.v1.UploadFileRequest,
                      trinsic.services.filemanagement.v1.UploadFileResponse>(
                      this, METHODID_UPLOAD_FILE)))
          .addMethod(
              getGetFileMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.filemanagement.v1.GetFileRequest,
                      trinsic.services.filemanagement.v1.GetFileResponse>(this, METHODID_GET_FILE)))
          .addMethod(
              getDeleteFileMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.filemanagement.v1.DeleteFileRequest,
                      trinsic.services.filemanagement.v1.DeleteFileResponse>(
                      this, METHODID_DELETE_FILE)))
          .addMethod(
              getListFilesMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.filemanagement.v1.ListFilesRequest,
                      trinsic.services.filemanagement.v1.ListFilesResponse>(
                      this, METHODID_LIST_FILES)))
          .addMethod(
              getGetStorageStatsMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.filemanagement.v1.GetStorageStatsRequest,
                      trinsic.services.filemanagement.v1.GetStorageStatsResponse>(
                      this, METHODID_GET_STORAGE_STATS)))
          .build();
    }
  }

  /** */
  public static final class FileManagementStub
      extends io.grpc.stub.AbstractAsyncStub<FileManagementStub> {
    private FileManagementStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected FileManagementStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new FileManagementStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Upload a file to Trinsic's CDN
     * </pre>
     */
    public void uploadFile(
        trinsic.services.filemanagement.v1.UploadFileRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.UploadFileResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUploadFileMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Fetch information about a file by its ID
     * </pre>
     */
    public void getFile(
        trinsic.services.filemanagement.v1.GetFileRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.GetFileResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetFileMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete a file by its ID
     * </pre>
     */
    public void deleteFile(
        trinsic.services.filemanagement.v1.DeleteFileRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.DeleteFileResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDeleteFileMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List files the calling account has uploaded
     * </pre>
     */
    public void listFiles(
        trinsic.services.filemanagement.v1.ListFilesRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.ListFilesResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListFilesMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get statistics about files uploaded by the calling account
     * </pre>
     */
    public void getStorageStats(
        trinsic.services.filemanagement.v1.GetStorageStatsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.GetStorageStatsResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetStorageStatsMethod(), getCallOptions()),
          request,
          responseObserver);
    }
  }

  /** */
  public static final class FileManagementBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<FileManagementBlockingStub> {
    private FileManagementBlockingStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected FileManagementBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new FileManagementBlockingStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Upload a file to Trinsic's CDN
     * </pre>
     */
    public trinsic.services.filemanagement.v1.UploadFileResponse uploadFile(
        trinsic.services.filemanagement.v1.UploadFileRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUploadFileMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Fetch information about a file by its ID
     * </pre>
     */
    public trinsic.services.filemanagement.v1.GetFileResponse getFile(
        trinsic.services.filemanagement.v1.GetFileRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetFileMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Delete a file by its ID
     * </pre>
     */
    public trinsic.services.filemanagement.v1.DeleteFileResponse deleteFile(
        trinsic.services.filemanagement.v1.DeleteFileRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDeleteFileMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * List files the calling account has uploaded
     * </pre>
     */
    public trinsic.services.filemanagement.v1.ListFilesResponse listFiles(
        trinsic.services.filemanagement.v1.ListFilesRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListFilesMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Get statistics about files uploaded by the calling account
     * </pre>
     */
    public trinsic.services.filemanagement.v1.GetStorageStatsResponse getStorageStats(
        trinsic.services.filemanagement.v1.GetStorageStatsRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetStorageStatsMethod(), getCallOptions(), request);
    }
  }

  /** */
  public static final class FileManagementFutureStub
      extends io.grpc.stub.AbstractFutureStub<FileManagementFutureStub> {
    private FileManagementFutureStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected FileManagementFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new FileManagementFutureStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Upload a file to Trinsic's CDN
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.filemanagement.v1.UploadFileResponse>
        uploadFile(trinsic.services.filemanagement.v1.UploadFileRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUploadFileMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Fetch information about a file by its ID
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.filemanagement.v1.GetFileResponse>
        getFile(trinsic.services.filemanagement.v1.GetFileRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetFileMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Delete a file by its ID
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.filemanagement.v1.DeleteFileResponse>
        deleteFile(trinsic.services.filemanagement.v1.DeleteFileRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDeleteFileMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * List files the calling account has uploaded
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.filemanagement.v1.ListFilesResponse>
        listFiles(trinsic.services.filemanagement.v1.ListFilesRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListFilesMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Get statistics about files uploaded by the calling account
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.filemanagement.v1.GetStorageStatsResponse>
        getStorageStats(trinsic.services.filemanagement.v1.GetStorageStatsRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetStorageStatsMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_UPLOAD_FILE = 0;
  private static final int METHODID_GET_FILE = 1;
  private static final int METHODID_DELETE_FILE = 2;
  private static final int METHODID_LIST_FILES = 3;
  private static final int METHODID_GET_STORAGE_STATS = 4;

  private static final class MethodHandlers<Req, Resp>
      implements io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final FileManagementImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(FileManagementImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_UPLOAD_FILE:
          serviceImpl.uploadFile(
              (trinsic.services.filemanagement.v1.UploadFileRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.UploadFileResponse>)
                  responseObserver);
          break;
        case METHODID_GET_FILE:
          serviceImpl.getFile(
              (trinsic.services.filemanagement.v1.GetFileRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.GetFileResponse>)
                  responseObserver);
          break;
        case METHODID_DELETE_FILE:
          serviceImpl.deleteFile(
              (trinsic.services.filemanagement.v1.DeleteFileRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.DeleteFileResponse>)
                  responseObserver);
          break;
        case METHODID_LIST_FILES:
          serviceImpl.listFiles(
              (trinsic.services.filemanagement.v1.ListFilesRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.filemanagement.v1.ListFilesResponse>)
                  responseObserver);
          break;
        case METHODID_GET_STORAGE_STATS:
          serviceImpl.getStorageStats(
              (trinsic.services.filemanagement.v1.GetStorageStatsRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.filemanagement.v1.GetStorageStatsResponse>)
                  responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  private abstract static class FileManagementBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier,
          io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    FileManagementBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.filemanagement.v1.FileManagementOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("FileManagement");
    }
  }

  private static final class FileManagementFileDescriptorSupplier
      extends FileManagementBaseDescriptorSupplier {
    FileManagementFileDescriptorSupplier() {}
  }

  private static final class FileManagementMethodDescriptorSupplier
      extends FileManagementBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    FileManagementMethodDescriptorSupplier(String methodName) {
      this.methodName = methodName;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (FileManagementGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor =
              result =
                  io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
                      .setSchemaDescriptor(new FileManagementFileDescriptorSupplier())
                      .addMethod(getUploadFileMethod())
                      .addMethod(getGetFileMethod())
                      .addMethod(getDeleteFileMethod())
                      .addMethod(getListFilesMethod())
                      .addMethod(getGetStorageStatsMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
