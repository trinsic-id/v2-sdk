package trinsic.services.universalwallet.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 *
 *
 * <pre>
 * Service for managing wallets
 * </pre>
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.49.2)",
    comments = "Source: services/universal-wallet/v1/universal-wallet.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class UniversalWalletGrpc {

  private UniversalWalletGrpc() {}

  public static final String SERVICE_NAME = "services.universalwallet.v1.UniversalWallet";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GetItemRequest,
          trinsic.services.universalwallet.v1.GetItemResponse>
      getGetItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetItem",
      requestType = trinsic.services.universalwallet.v1.GetItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.GetItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GetItemRequest,
          trinsic.services.universalwallet.v1.GetItemResponse>
      getGetItemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.GetItemRequest,
            trinsic.services.universalwallet.v1.GetItemResponse>
        getGetItemMethod;
    if ((getGetItemMethod = UniversalWalletGrpc.getGetItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getGetItemMethod = UniversalWalletGrpc.getGetItemMethod) == null) {
          UniversalWalletGrpc.getGetItemMethod =
              getGetItemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.GetItemRequest,
                          trinsic.services.universalwallet.v1.GetItemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetItem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GetItemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GetItemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("GetItem"))
                      .build();
        }
      }
    }
    return getGetItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.SearchRequest,
          trinsic.services.universalwallet.v1.SearchResponse>
      getSearchMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Search",
      requestType = trinsic.services.universalwallet.v1.SearchRequest.class,
      responseType = trinsic.services.universalwallet.v1.SearchResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.SearchRequest,
          trinsic.services.universalwallet.v1.SearchResponse>
      getSearchMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.SearchRequest,
            trinsic.services.universalwallet.v1.SearchResponse>
        getSearchMethod;
    if ((getSearchMethod = UniversalWalletGrpc.getSearchMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getSearchMethod = UniversalWalletGrpc.getSearchMethod) == null) {
          UniversalWalletGrpc.getSearchMethod =
              getSearchMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.SearchRequest,
                          trinsic.services.universalwallet.v1.SearchResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Search"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.SearchRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.SearchResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("Search"))
                      .build();
        }
      }
    }
    return getSearchMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.InsertItemRequest,
          trinsic.services.universalwallet.v1.InsertItemResponse>
      getInsertItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InsertItem",
      requestType = trinsic.services.universalwallet.v1.InsertItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.InsertItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.InsertItemRequest,
          trinsic.services.universalwallet.v1.InsertItemResponse>
      getInsertItemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.InsertItemRequest,
            trinsic.services.universalwallet.v1.InsertItemResponse>
        getInsertItemMethod;
    if ((getInsertItemMethod = UniversalWalletGrpc.getInsertItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getInsertItemMethod = UniversalWalletGrpc.getInsertItemMethod) == null) {
          UniversalWalletGrpc.getInsertItemMethod =
              getInsertItemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.InsertItemRequest,
                          trinsic.services.universalwallet.v1.InsertItemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InsertItem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.InsertItemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.InsertItemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("InsertItem"))
                      .build();
        }
      }
    }
    return getInsertItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.UpdateItemRequest,
          trinsic.services.universalwallet.v1.UpdateItemResponse>
      getUpdateItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UpdateItem",
      requestType = trinsic.services.universalwallet.v1.UpdateItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.UpdateItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.UpdateItemRequest,
          trinsic.services.universalwallet.v1.UpdateItemResponse>
      getUpdateItemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.UpdateItemRequest,
            trinsic.services.universalwallet.v1.UpdateItemResponse>
        getUpdateItemMethod;
    if ((getUpdateItemMethod = UniversalWalletGrpc.getUpdateItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getUpdateItemMethod = UniversalWalletGrpc.getUpdateItemMethod) == null) {
          UniversalWalletGrpc.getUpdateItemMethod =
              getUpdateItemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.UpdateItemRequest,
                          trinsic.services.universalwallet.v1.UpdateItemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UpdateItem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.UpdateItemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.UpdateItemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("UpdateItem"))
                      .build();
        }
      }
    }
    return getUpdateItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.DeleteItemRequest,
          trinsic.services.universalwallet.v1.DeleteItemResponse>
      getDeleteItemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "DeleteItem",
      requestType = trinsic.services.universalwallet.v1.DeleteItemRequest.class,
      responseType = trinsic.services.universalwallet.v1.DeleteItemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.DeleteItemRequest,
          trinsic.services.universalwallet.v1.DeleteItemResponse>
      getDeleteItemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.DeleteItemRequest,
            trinsic.services.universalwallet.v1.DeleteItemResponse>
        getDeleteItemMethod;
    if ((getDeleteItemMethod = UniversalWalletGrpc.getDeleteItemMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getDeleteItemMethod = UniversalWalletGrpc.getDeleteItemMethod) == null) {
          UniversalWalletGrpc.getDeleteItemMethod =
              getDeleteItemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.DeleteItemRequest,
                          trinsic.services.universalwallet.v1.DeleteItemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "DeleteItem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.DeleteItemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.DeleteItemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("DeleteItem"))
                      .build();
        }
      }
    }
    return getDeleteItemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.DeleteWalletRequest,
          trinsic.services.universalwallet.v1.DeleteWalletResponse>
      getDeleteWalletMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "DeleteWallet",
      requestType = trinsic.services.universalwallet.v1.DeleteWalletRequest.class,
      responseType = trinsic.services.universalwallet.v1.DeleteWalletResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.DeleteWalletRequest,
          trinsic.services.universalwallet.v1.DeleteWalletResponse>
      getDeleteWalletMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.DeleteWalletRequest,
            trinsic.services.universalwallet.v1.DeleteWalletResponse>
        getDeleteWalletMethod;
    if ((getDeleteWalletMethod = UniversalWalletGrpc.getDeleteWalletMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getDeleteWalletMethod = UniversalWalletGrpc.getDeleteWalletMethod) == null) {
          UniversalWalletGrpc.getDeleteWalletMethod =
              getDeleteWalletMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.DeleteWalletRequest,
                          trinsic.services.universalwallet.v1.DeleteWalletResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "DeleteWallet"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.DeleteWalletRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.DeleteWalletResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("DeleteWallet"))
                      .build();
        }
      }
    }
    return getDeleteWalletMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.CreateWalletRequest,
          trinsic.services.universalwallet.v1.CreateWalletResponse>
      getCreateWalletMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateWallet",
      requestType = trinsic.services.universalwallet.v1.CreateWalletRequest.class,
      responseType = trinsic.services.universalwallet.v1.CreateWalletResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.CreateWalletRequest,
          trinsic.services.universalwallet.v1.CreateWalletResponse>
      getCreateWalletMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.CreateWalletRequest,
            trinsic.services.universalwallet.v1.CreateWalletResponse>
        getCreateWalletMethod;
    if ((getCreateWalletMethod = UniversalWalletGrpc.getCreateWalletMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getCreateWalletMethod = UniversalWalletGrpc.getCreateWalletMethod) == null) {
          UniversalWalletGrpc.getCreateWalletMethod =
              getCreateWalletMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.CreateWalletRequest,
                          trinsic.services.universalwallet.v1.CreateWalletResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateWallet"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.CreateWalletRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.CreateWalletResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("CreateWallet"))
                      .build();
        }
      }
    }
    return getCreateWalletMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GetWalletInfoRequest,
          trinsic.services.universalwallet.v1.GetWalletInfoResponse>
      getGetWalletInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetWalletInfo",
      requestType = trinsic.services.universalwallet.v1.GetWalletInfoRequest.class,
      responseType = trinsic.services.universalwallet.v1.GetWalletInfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GetWalletInfoRequest,
          trinsic.services.universalwallet.v1.GetWalletInfoResponse>
      getGetWalletInfoMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.GetWalletInfoRequest,
            trinsic.services.universalwallet.v1.GetWalletInfoResponse>
        getGetWalletInfoMethod;
    if ((getGetWalletInfoMethod = UniversalWalletGrpc.getGetWalletInfoMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getGetWalletInfoMethod = UniversalWalletGrpc.getGetWalletInfoMethod) == null) {
          UniversalWalletGrpc.getGetWalletInfoMethod =
              getGetWalletInfoMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.GetWalletInfoRequest,
                          trinsic.services.universalwallet.v1.GetWalletInfoResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetWalletInfo"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GetWalletInfoRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GetWalletInfoResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("GetWalletInfo"))
                      .build();
        }
      }
    }
    return getGetWalletInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GetMyInfoRequest,
          trinsic.services.universalwallet.v1.GetMyInfoResponse>
      getGetMyInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetMyInfo",
      requestType = trinsic.services.universalwallet.v1.GetMyInfoRequest.class,
      responseType = trinsic.services.universalwallet.v1.GetMyInfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GetMyInfoRequest,
          trinsic.services.universalwallet.v1.GetMyInfoResponse>
      getGetMyInfoMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.GetMyInfoRequest,
            trinsic.services.universalwallet.v1.GetMyInfoResponse>
        getGetMyInfoMethod;
    if ((getGetMyInfoMethod = UniversalWalletGrpc.getGetMyInfoMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getGetMyInfoMethod = UniversalWalletGrpc.getGetMyInfoMethod) == null) {
          UniversalWalletGrpc.getGetMyInfoMethod =
              getGetMyInfoMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.GetMyInfoRequest,
                          trinsic.services.universalwallet.v1.GetMyInfoResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetMyInfo"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GetMyInfoRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GetMyInfoResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new UniversalWalletMethodDescriptorSupplier("GetMyInfo"))
                      .build();
        }
      }
    }
    return getGetMyInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GenerateAuthTokenRequest,
          trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
      getGenerateAuthTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GenerateAuthToken",
      requestType = trinsic.services.universalwallet.v1.GenerateAuthTokenRequest.class,
      responseType = trinsic.services.universalwallet.v1.GenerateAuthTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.GenerateAuthTokenRequest,
          trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
      getGenerateAuthTokenMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.GenerateAuthTokenRequest,
            trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
        getGenerateAuthTokenMethod;
    if ((getGenerateAuthTokenMethod = UniversalWalletGrpc.getGenerateAuthTokenMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getGenerateAuthTokenMethod = UniversalWalletGrpc.getGenerateAuthTokenMethod) == null) {
          UniversalWalletGrpc.getGenerateAuthTokenMethod =
              getGenerateAuthTokenMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.GenerateAuthTokenRequest,
                          trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GenerateAuthToken"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GenerateAuthTokenRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.GenerateAuthTokenResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("GenerateAuthToken"))
                      .build();
        }
      }
    }
    return getGenerateAuthTokenMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.RevokeAuthTokenRequest,
          trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
      getRevokeAuthTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RevokeAuthToken",
      requestType = trinsic.services.universalwallet.v1.RevokeAuthTokenRequest.class,
      responseType = trinsic.services.universalwallet.v1.RevokeAuthTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.RevokeAuthTokenRequest,
          trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
      getRevokeAuthTokenMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.RevokeAuthTokenRequest,
            trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
        getRevokeAuthTokenMethod;
    if ((getRevokeAuthTokenMethod = UniversalWalletGrpc.getRevokeAuthTokenMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getRevokeAuthTokenMethod = UniversalWalletGrpc.getRevokeAuthTokenMethod) == null) {
          UniversalWalletGrpc.getRevokeAuthTokenMethod =
              getRevokeAuthTokenMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.RevokeAuthTokenRequest,
                          trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RevokeAuthToken"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.RevokeAuthTokenRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.RevokeAuthTokenResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("RevokeAuthToken"))
                      .build();
        }
      }
    }
    return getRevokeAuthTokenMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest,
          trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
      getAddExternalIdentityInitMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddExternalIdentityInit",
      requestType = trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest.class,
      responseType = trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest,
          trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
      getAddExternalIdentityInitMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest,
            trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
        getAddExternalIdentityInitMethod;
    if ((getAddExternalIdentityInitMethod = UniversalWalletGrpc.getAddExternalIdentityInitMethod)
        == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getAddExternalIdentityInitMethod =
                UniversalWalletGrpc.getAddExternalIdentityInitMethod)
            == null) {
          UniversalWalletGrpc.getAddExternalIdentityInitMethod =
              getAddExternalIdentityInitMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest,
                          trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "AddExternalIdentityInit"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("AddExternalIdentityInit"))
                      .build();
        }
      }
    }
    return getAddExternalIdentityInitMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest,
          trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
      getAddExternalIdentityConfirmMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddExternalIdentityConfirm",
      requestType = trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest.class,
      responseType = trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest,
          trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
      getAddExternalIdentityConfirmMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest,
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
        getAddExternalIdentityConfirmMethod;
    if ((getAddExternalIdentityConfirmMethod =
            UniversalWalletGrpc.getAddExternalIdentityConfirmMethod)
        == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getAddExternalIdentityConfirmMethod =
                UniversalWalletGrpc.getAddExternalIdentityConfirmMethod)
            == null) {
          UniversalWalletGrpc.getAddExternalIdentityConfirmMethod =
              getAddExternalIdentityConfirmMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest,
                          trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "AddExternalIdentityConfirm"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("AddExternalIdentityConfirm"))
                      .build();
        }
      }
    }
    return getAddExternalIdentityConfirmMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest,
          trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
      getRemoveExternalIdentityMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RemoveExternalIdentity",
      requestType = trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest.class,
      responseType = trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest,
          trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
      getRemoveExternalIdentityMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest,
            trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
        getRemoveExternalIdentityMethod;
    if ((getRemoveExternalIdentityMethod = UniversalWalletGrpc.getRemoveExternalIdentityMethod)
        == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getRemoveExternalIdentityMethod = UniversalWalletGrpc.getRemoveExternalIdentityMethod)
            == null) {
          UniversalWalletGrpc.getRemoveExternalIdentityMethod =
              getRemoveExternalIdentityMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest,
                          trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "RemoveExternalIdentity"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("RemoveExternalIdentity"))
                      .build();
        }
      }
    }
    return getRemoveExternalIdentityMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AuthenticateInitRequest,
          trinsic.services.universalwallet.v1.AuthenticateInitResponse>
      getAuthenticateInitMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AuthenticateInit",
      requestType = trinsic.services.universalwallet.v1.AuthenticateInitRequest.class,
      responseType = trinsic.services.universalwallet.v1.AuthenticateInitResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AuthenticateInitRequest,
          trinsic.services.universalwallet.v1.AuthenticateInitResponse>
      getAuthenticateInitMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.AuthenticateInitRequest,
            trinsic.services.universalwallet.v1.AuthenticateInitResponse>
        getAuthenticateInitMethod;
    if ((getAuthenticateInitMethod = UniversalWalletGrpc.getAuthenticateInitMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getAuthenticateInitMethod = UniversalWalletGrpc.getAuthenticateInitMethod) == null) {
          UniversalWalletGrpc.getAuthenticateInitMethod =
              getAuthenticateInitMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.AuthenticateInitRequest,
                          trinsic.services.universalwallet.v1.AuthenticateInitResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "AuthenticateInit"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AuthenticateInitRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AuthenticateInitResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("AuthenticateInit"))
                      .build();
        }
      }
    }
    return getAuthenticateInitMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AuthenticateConfirmRequest,
          trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
      getAuthenticateConfirmMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AuthenticateConfirm",
      requestType = trinsic.services.universalwallet.v1.AuthenticateConfirmRequest.class,
      responseType = trinsic.services.universalwallet.v1.AuthenticateConfirmResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.AuthenticateConfirmRequest,
          trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
      getAuthenticateConfirmMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.AuthenticateConfirmRequest,
            trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
        getAuthenticateConfirmMethod;
    if ((getAuthenticateConfirmMethod = UniversalWalletGrpc.getAuthenticateConfirmMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getAuthenticateConfirmMethod = UniversalWalletGrpc.getAuthenticateConfirmMethod)
            == null) {
          UniversalWalletGrpc.getAuthenticateConfirmMethod =
              getAuthenticateConfirmMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.AuthenticateConfirmRequest,
                          trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "AuthenticateConfirm"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AuthenticateConfirmRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.AuthenticateConfirmResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("AuthenticateConfirm"))
                      .build();
        }
      }
    }
    return getAuthenticateConfirmMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.ListWalletsRequest,
          trinsic.services.universalwallet.v1.ListWalletsResponse>
      getListWalletsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "ListWallets",
      requestType = trinsic.services.universalwallet.v1.ListWalletsRequest.class,
      responseType = trinsic.services.universalwallet.v1.ListWalletsResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.universalwallet.v1.ListWalletsRequest,
          trinsic.services.universalwallet.v1.ListWalletsResponse>
      getListWalletsMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.universalwallet.v1.ListWalletsRequest,
            trinsic.services.universalwallet.v1.ListWalletsResponse>
        getListWalletsMethod;
    if ((getListWalletsMethod = UniversalWalletGrpc.getListWalletsMethod) == null) {
      synchronized (UniversalWalletGrpc.class) {
        if ((getListWalletsMethod = UniversalWalletGrpc.getListWalletsMethod) == null) {
          UniversalWalletGrpc.getListWalletsMethod =
              getListWalletsMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.universalwallet.v1.ListWalletsRequest,
                          trinsic.services.universalwallet.v1.ListWalletsResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "ListWallets"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.ListWalletsRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.universalwallet.v1.ListWalletsResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new UniversalWalletMethodDescriptorSupplier("ListWallets"))
                      .build();
        }
      }
    }
    return getListWalletsMethod;
  }

  /** Creates a new async stub that supports all call types for the service */
  public static UniversalWalletStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UniversalWalletStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<UniversalWalletStub>() {
          @java.lang.Override
          public UniversalWalletStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new UniversalWalletStub(channel, callOptions);
          }
        };
    return UniversalWalletStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static UniversalWalletBlockingStub newBlockingStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UniversalWalletBlockingStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<UniversalWalletBlockingStub>() {
          @java.lang.Override
          public UniversalWalletBlockingStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new UniversalWalletBlockingStub(channel, callOptions);
          }
        };
    return UniversalWalletBlockingStub.newStub(factory, channel);
  }

  /** Creates a new ListenableFuture-style stub that supports unary calls on the service */
  public static UniversalWalletFutureStub newFutureStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<UniversalWalletFutureStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<UniversalWalletFutureStub>() {
          @java.lang.Override
          public UniversalWalletFutureStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new UniversalWalletFutureStub(channel, callOptions);
          }
        };
    return UniversalWalletFutureStub.newStub(factory, channel);
  }

  /**
   *
   *
   * <pre>
   * Service for managing wallets
   * </pre>
   */
  public abstract static class UniversalWalletImplBase implements io.grpc.BindableService {

    /**
     *
     *
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public void getItem(
        trinsic.services.universalwallet.v1.GetItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetItemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetItemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Search the wallet using a SQL syntax
     * </pre>
     */
    public void search(
        trinsic.services.universalwallet.v1.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.SearchResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSearchMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public void insertItem(
        trinsic.services.universalwallet.v1.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.InsertItemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInsertItemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public void updateItem(
        trinsic.services.universalwallet.v1.UpdateItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UpdateItemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUpdateItemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public void deleteItem(
        trinsic.services.universalwallet.v1.DeleteItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.DeleteItemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getDeleteItemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete a wallet and its credentials
     * </pre>
     */
    public void deleteWallet(
        trinsic.services.universalwallet.v1.DeleteWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.DeleteWalletResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getDeleteWalletMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Create a new wallet and generate an auth token for access
     * </pre>
     */
    public void createWallet(
        trinsic.services.universalwallet.v1.CreateWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.CreateWalletResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getCreateWalletMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration
     * </pre>
     */
    public void getWalletInfo(
        trinsic.services.universalwallet.v1.GetWalletInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetWalletInfoResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetWalletInfoMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration about the currently authenticated wallet
     * </pre>
     */
    public void getMyInfo(
        trinsic.services.universalwallet.v1.GetMyInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetMyInfoResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getGetMyInfoMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Generate new token for a given wallet and add it to the collection of known auth tokens.
     * This endpoint requires authentication and will return a new token ID and auth token.
     * Use this endpoint if you want to authorize another device, without having to share your
     * existing auth token.
     * </pre>
     */
    public void generateAuthToken(
        trinsic.services.universalwallet.v1.GenerateAuthTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGenerateAuthTokenMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Revokes a previously issued auth token and updates the collection of known auth tokens.
     * This endpoint requires authentication.
     * </pre>
     */
    public void revokeAuthToken(
        trinsic.services.universalwallet.v1.RevokeAuthTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRevokeAuthTokenMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
     * This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
     * </pre>
     */
    public void addExternalIdentityInit(
        trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getAddExternalIdentityInitMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Confirm identity added to the current wallet using `AddExternalIdentityInit`
     * </pre>
     */
    public void addExternalIdentityConfirm(
        trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getAddExternalIdentityConfirmMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Remove an external identity from the current wallet
     * </pre>
     */
    public void removeExternalIdentity(
        trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRemoveExternalIdentityMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Sign-in to an already existing wallet, using an identity added that was previously registered
     * This endpoint does not require authentication, and will return a challenge to be signed or verified
     * </pre>
     */
    public void authenticateInit(
        trinsic.services.universalwallet.v1.AuthenticateInitRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.AuthenticateInitResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getAuthenticateInitMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Confirm sign-in to an already existing wallet and return authentication token
     * </pre>
     */
    public void authenticateConfirm(
        trinsic.services.universalwallet.v1.AuthenticateConfirmRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getAuthenticateConfirmMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List all wallets in the ecosystem
     * </pre>
     */
    public void listWallets(
        trinsic.services.universalwallet.v1.ListWalletsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.ListWalletsResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getListWalletsMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getGetItemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.GetItemRequest,
                      trinsic.services.universalwallet.v1.GetItemResponse>(
                      this, METHODID_GET_ITEM)))
          .addMethod(
              getSearchMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.SearchRequest,
                      trinsic.services.universalwallet.v1.SearchResponse>(this, METHODID_SEARCH)))
          .addMethod(
              getInsertItemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.InsertItemRequest,
                      trinsic.services.universalwallet.v1.InsertItemResponse>(
                      this, METHODID_INSERT_ITEM)))
          .addMethod(
              getUpdateItemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.UpdateItemRequest,
                      trinsic.services.universalwallet.v1.UpdateItemResponse>(
                      this, METHODID_UPDATE_ITEM)))
          .addMethod(
              getDeleteItemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.DeleteItemRequest,
                      trinsic.services.universalwallet.v1.DeleteItemResponse>(
                      this, METHODID_DELETE_ITEM)))
          .addMethod(
              getDeleteWalletMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.DeleteWalletRequest,
                      trinsic.services.universalwallet.v1.DeleteWalletResponse>(
                      this, METHODID_DELETE_WALLET)))
          .addMethod(
              getCreateWalletMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.CreateWalletRequest,
                      trinsic.services.universalwallet.v1.CreateWalletResponse>(
                      this, METHODID_CREATE_WALLET)))
          .addMethod(
              getGetWalletInfoMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.GetWalletInfoRequest,
                      trinsic.services.universalwallet.v1.GetWalletInfoResponse>(
                      this, METHODID_GET_WALLET_INFO)))
          .addMethod(
              getGetMyInfoMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.GetMyInfoRequest,
                      trinsic.services.universalwallet.v1.GetMyInfoResponse>(
                      this, METHODID_GET_MY_INFO)))
          .addMethod(
              getGenerateAuthTokenMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.GenerateAuthTokenRequest,
                      trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>(
                      this, METHODID_GENERATE_AUTH_TOKEN)))
          .addMethod(
              getRevokeAuthTokenMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.RevokeAuthTokenRequest,
                      trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>(
                      this, METHODID_REVOKE_AUTH_TOKEN)))
          .addMethod(
              getAddExternalIdentityInitMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest,
                      trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>(
                      this, METHODID_ADD_EXTERNAL_IDENTITY_INIT)))
          .addMethod(
              getAddExternalIdentityConfirmMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest,
                      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>(
                      this, METHODID_ADD_EXTERNAL_IDENTITY_CONFIRM)))
          .addMethod(
              getRemoveExternalIdentityMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest,
                      trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>(
                      this, METHODID_REMOVE_EXTERNAL_IDENTITY)))
          .addMethod(
              getAuthenticateInitMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.AuthenticateInitRequest,
                      trinsic.services.universalwallet.v1.AuthenticateInitResponse>(
                      this, METHODID_AUTHENTICATE_INIT)))
          .addMethod(
              getAuthenticateConfirmMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.AuthenticateConfirmRequest,
                      trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>(
                      this, METHODID_AUTHENTICATE_CONFIRM)))
          .addMethod(
              getListWalletsMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.universalwallet.v1.ListWalletsRequest,
                      trinsic.services.universalwallet.v1.ListWalletsResponse>(
                      this, METHODID_LIST_WALLETS)))
          .build();
    }
  }

  /**
   *
   *
   * <pre>
   * Service for managing wallets
   * </pre>
   */
  public static final class UniversalWalletStub
      extends io.grpc.stub.AbstractAsyncStub<UniversalWalletStub> {
    private UniversalWalletStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UniversalWalletStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UniversalWalletStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public void getItem(
        trinsic.services.universalwallet.v1.GetItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetItemResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Search the wallet using a SQL syntax
     * </pre>
     */
    public void search(
        trinsic.services.universalwallet.v1.SearchRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.SearchResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public void insertItem(
        trinsic.services.universalwallet.v1.InsertItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.InsertItemResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public void updateItem(
        trinsic.services.universalwallet.v1.UpdateItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UpdateItemResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUpdateItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public void deleteItem(
        trinsic.services.universalwallet.v1.DeleteItemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.DeleteItemResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDeleteItemMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete a wallet and its credentials
     * </pre>
     */
    public void deleteWallet(
        trinsic.services.universalwallet.v1.DeleteWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.DeleteWalletResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDeleteWalletMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Create a new wallet and generate an auth token for access
     * </pre>
     */
    public void createWallet(
        trinsic.services.universalwallet.v1.CreateWalletRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.CreateWalletResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateWalletMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration
     * </pre>
     */
    public void getWalletInfo(
        trinsic.services.universalwallet.v1.GetWalletInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetWalletInfoResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetWalletInfoMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration about the currently authenticated wallet
     * </pre>
     */
    public void getMyInfo(
        trinsic.services.universalwallet.v1.GetMyInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetMyInfoResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetMyInfoMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Generate new token for a given wallet and add it to the collection of known auth tokens.
     * This endpoint requires authentication and will return a new token ID and auth token.
     * Use this endpoint if you want to authorize another device, without having to share your
     * existing auth token.
     * </pre>
     */
    public void generateAuthToken(
        trinsic.services.universalwallet.v1.GenerateAuthTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGenerateAuthTokenMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Revokes a previously issued auth token and updates the collection of known auth tokens.
     * This endpoint requires authentication.
     * </pre>
     */
    public void revokeAuthToken(
        trinsic.services.universalwallet.v1.RevokeAuthTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRevokeAuthTokenMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
     * This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
     * </pre>
     */
    public void addExternalIdentityInit(
        trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAddExternalIdentityInitMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Confirm identity added to the current wallet using `AddExternalIdentityInit`
     * </pre>
     */
    public void addExternalIdentityConfirm(
        trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAddExternalIdentityConfirmMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Remove an external identity from the current wallet
     * </pre>
     */
    public void removeExternalIdentity(
        trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRemoveExternalIdentityMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Sign-in to an already existing wallet, using an identity added that was previously registered
     * This endpoint does not require authentication, and will return a challenge to be signed or verified
     * </pre>
     */
    public void authenticateInit(
        trinsic.services.universalwallet.v1.AuthenticateInitRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.AuthenticateInitResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAuthenticateInitMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Confirm sign-in to an already existing wallet and return authentication token
     * </pre>
     */
    public void authenticateConfirm(
        trinsic.services.universalwallet.v1.AuthenticateConfirmRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAuthenticateConfirmMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * List all wallets in the ecosystem
     * </pre>
     */
    public void listWallets(
        trinsic.services.universalwallet.v1.ListWalletsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.ListWalletsResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getListWalletsMethod(), getCallOptions()),
          request,
          responseObserver);
    }
  }

  /**
   *
   *
   * <pre>
   * Service for managing wallets
   * </pre>
   */
  public static final class UniversalWalletBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<UniversalWalletBlockingStub> {
    private UniversalWalletBlockingStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UniversalWalletBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UniversalWalletBlockingStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public trinsic.services.universalwallet.v1.GetItemResponse getItem(
        trinsic.services.universalwallet.v1.GetItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetItemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Search the wallet using a SQL syntax
     * </pre>
     */
    public trinsic.services.universalwallet.v1.SearchResponse search(
        trinsic.services.universalwallet.v1.SearchRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.InsertItemResponse insertItem(
        trinsic.services.universalwallet.v1.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInsertItemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.UpdateItemResponse updateItem(
        trinsic.services.universalwallet.v1.UpdateItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpdateItemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public trinsic.services.universalwallet.v1.DeleteItemResponse deleteItem(
        trinsic.services.universalwallet.v1.DeleteItemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDeleteItemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Delete a wallet and its credentials
     * </pre>
     */
    public trinsic.services.universalwallet.v1.DeleteWalletResponse deleteWallet(
        trinsic.services.universalwallet.v1.DeleteWalletRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDeleteWalletMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Create a new wallet and generate an auth token for access
     * </pre>
     */
    public trinsic.services.universalwallet.v1.CreateWalletResponse createWallet(
        trinsic.services.universalwallet.v1.CreateWalletRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateWalletMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration
     * </pre>
     */
    public trinsic.services.universalwallet.v1.GetWalletInfoResponse getWalletInfo(
        trinsic.services.universalwallet.v1.GetWalletInfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetWalletInfoMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration about the currently authenticated wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.GetMyInfoResponse getMyInfo(
        trinsic.services.universalwallet.v1.GetMyInfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetMyInfoMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Generate new token for a given wallet and add it to the collection of known auth tokens.
     * This endpoint requires authentication and will return a new token ID and auth token.
     * Use this endpoint if you want to authorize another device, without having to share your
     * existing auth token.
     * </pre>
     */
    public trinsic.services.universalwallet.v1.GenerateAuthTokenResponse generateAuthToken(
        trinsic.services.universalwallet.v1.GenerateAuthTokenRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGenerateAuthTokenMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Revokes a previously issued auth token and updates the collection of known auth tokens.
     * This endpoint requires authentication.
     * </pre>
     */
    public trinsic.services.universalwallet.v1.RevokeAuthTokenResponse revokeAuthToken(
        trinsic.services.universalwallet.v1.RevokeAuthTokenRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRevokeAuthTokenMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
     * This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
     * </pre>
     */
    public trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse
        addExternalIdentityInit(
            trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAddExternalIdentityInitMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Confirm identity added to the current wallet using `AddExternalIdentityInit`
     * </pre>
     */
    public trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse
        addExternalIdentityConfirm(
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAddExternalIdentityConfirmMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Remove an external identity from the current wallet
     * </pre>
     */
    public trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse
        removeExternalIdentity(
            trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRemoveExternalIdentityMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Sign-in to an already existing wallet, using an identity added that was previously registered
     * This endpoint does not require authentication, and will return a challenge to be signed or verified
     * </pre>
     */
    public trinsic.services.universalwallet.v1.AuthenticateInitResponse authenticateInit(
        trinsic.services.universalwallet.v1.AuthenticateInitRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAuthenticateInitMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Confirm sign-in to an already existing wallet and return authentication token
     * </pre>
     */
    public trinsic.services.universalwallet.v1.AuthenticateConfirmResponse authenticateConfirm(
        trinsic.services.universalwallet.v1.AuthenticateConfirmRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAuthenticateConfirmMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * List all wallets in the ecosystem
     * </pre>
     */
    public trinsic.services.universalwallet.v1.ListWalletsResponse listWallets(
        trinsic.services.universalwallet.v1.ListWalletsRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getListWalletsMethod(), getCallOptions(), request);
    }
  }

  /**
   *
   *
   * <pre>
   * Service for managing wallets
   * </pre>
   */
  public static final class UniversalWalletFutureStub
      extends io.grpc.stub.AbstractFutureStub<UniversalWalletFutureStub> {
    private UniversalWalletFutureStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UniversalWalletFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new UniversalWalletFutureStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Retrieve an item from the wallet with a given item identifier
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.GetItemResponse>
        getItem(trinsic.services.universalwallet.v1.GetItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetItemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Search the wallet using a SQL syntax
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.SearchResponse>
        search(trinsic.services.universalwallet.v1.SearchRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Insert an item into the wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.InsertItemResponse>
        insertItem(trinsic.services.universalwallet.v1.InsertItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInsertItemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Update an item in the wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.UpdateItemResponse>
        updateItem(trinsic.services.universalwallet.v1.UpdateItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpdateItemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Delete an item from the wallet permanently
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.DeleteItemResponse>
        deleteItem(trinsic.services.universalwallet.v1.DeleteItemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDeleteItemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Delete a wallet and its credentials
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.DeleteWalletResponse>
        deleteWallet(trinsic.services.universalwallet.v1.DeleteWalletRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDeleteWalletMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Create a new wallet and generate an auth token for access
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.CreateWalletResponse>
        createWallet(trinsic.services.universalwallet.v1.CreateWalletRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateWalletMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.GetWalletInfoResponse>
        getWalletInfo(trinsic.services.universalwallet.v1.GetWalletInfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetWalletInfoMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve wallet details and configuration about the currently authenticated wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.GetMyInfoResponse>
        getMyInfo(trinsic.services.universalwallet.v1.GetMyInfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetMyInfoMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Generate new token for a given wallet and add it to the collection of known auth tokens.
     * This endpoint requires authentication and will return a new token ID and auth token.
     * Use this endpoint if you want to authorize another device, without having to share your
     * existing auth token.
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>
        generateAuthToken(trinsic.services.universalwallet.v1.GenerateAuthTokenRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGenerateAuthTokenMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Revokes a previously issued auth token and updates the collection of known auth tokens.
     * This endpoint requires authentication.
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>
        revokeAuthToken(trinsic.services.universalwallet.v1.RevokeAuthTokenRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRevokeAuthTokenMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
     * This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>
        addExternalIdentityInit(
            trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAddExternalIdentityInitMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Confirm identity added to the current wallet using `AddExternalIdentityInit`
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>
        addExternalIdentityConfirm(
            trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAddExternalIdentityConfirmMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Remove an external identity from the current wallet
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>
        removeExternalIdentity(
            trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRemoveExternalIdentityMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Sign-in to an already existing wallet, using an identity added that was previously registered
     * This endpoint does not require authentication, and will return a challenge to be signed or verified
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.AuthenticateInitResponse>
        authenticateInit(trinsic.services.universalwallet.v1.AuthenticateInitRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAuthenticateInitMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Confirm sign-in to an already existing wallet and return authentication token
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>
        authenticateConfirm(
            trinsic.services.universalwallet.v1.AuthenticateConfirmRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAuthenticateConfirmMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * List all wallets in the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.universalwallet.v1.ListWalletsResponse>
        listWallets(trinsic.services.universalwallet.v1.ListWalletsRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getListWalletsMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_GET_ITEM = 0;
  private static final int METHODID_SEARCH = 1;
  private static final int METHODID_INSERT_ITEM = 2;
  private static final int METHODID_UPDATE_ITEM = 3;
  private static final int METHODID_DELETE_ITEM = 4;
  private static final int METHODID_DELETE_WALLET = 5;
  private static final int METHODID_CREATE_WALLET = 6;
  private static final int METHODID_GET_WALLET_INFO = 7;
  private static final int METHODID_GET_MY_INFO = 8;
  private static final int METHODID_GENERATE_AUTH_TOKEN = 9;
  private static final int METHODID_REVOKE_AUTH_TOKEN = 10;
  private static final int METHODID_ADD_EXTERNAL_IDENTITY_INIT = 11;
  private static final int METHODID_ADD_EXTERNAL_IDENTITY_CONFIRM = 12;
  private static final int METHODID_REMOVE_EXTERNAL_IDENTITY = 13;
  private static final int METHODID_AUTHENTICATE_INIT = 14;
  private static final int METHODID_AUTHENTICATE_CONFIRM = 15;
  private static final int METHODID_LIST_WALLETS = 16;

  private static final class MethodHandlers<Req, Resp>
      implements io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final UniversalWalletImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(UniversalWalletImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_GET_ITEM:
          serviceImpl.getItem(
              (trinsic.services.universalwallet.v1.GetItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetItemResponse>)
                  responseObserver);
          break;
        case METHODID_SEARCH:
          serviceImpl.search(
              (trinsic.services.universalwallet.v1.SearchRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.SearchResponse>)
                  responseObserver);
          break;
        case METHODID_INSERT_ITEM:
          serviceImpl.insertItem(
              (trinsic.services.universalwallet.v1.InsertItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.InsertItemResponse>)
                  responseObserver);
          break;
        case METHODID_UPDATE_ITEM:
          serviceImpl.updateItem(
              (trinsic.services.universalwallet.v1.UpdateItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.UpdateItemResponse>)
                  responseObserver);
          break;
        case METHODID_DELETE_ITEM:
          serviceImpl.deleteItem(
              (trinsic.services.universalwallet.v1.DeleteItemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.DeleteItemResponse>)
                  responseObserver);
          break;
        case METHODID_DELETE_WALLET:
          serviceImpl.deleteWallet(
              (trinsic.services.universalwallet.v1.DeleteWalletRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.DeleteWalletResponse>)
                  responseObserver);
          break;
        case METHODID_CREATE_WALLET:
          serviceImpl.createWallet(
              (trinsic.services.universalwallet.v1.CreateWalletRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.CreateWalletResponse>)
                  responseObserver);
          break;
        case METHODID_GET_WALLET_INFO:
          serviceImpl.getWalletInfo(
              (trinsic.services.universalwallet.v1.GetWalletInfoRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.GetWalletInfoResponse>)
                  responseObserver);
          break;
        case METHODID_GET_MY_INFO:
          serviceImpl.getMyInfo(
              (trinsic.services.universalwallet.v1.GetMyInfoRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.GetMyInfoResponse>)
                  responseObserver);
          break;
        case METHODID_GENERATE_AUTH_TOKEN:
          serviceImpl.generateAuthToken(
              (trinsic.services.universalwallet.v1.GenerateAuthTokenRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.GenerateAuthTokenResponse>)
                  responseObserver);
          break;
        case METHODID_REVOKE_AUTH_TOKEN:
          serviceImpl.revokeAuthToken(
              (trinsic.services.universalwallet.v1.RevokeAuthTokenRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.RevokeAuthTokenResponse>)
                  responseObserver);
          break;
        case METHODID_ADD_EXTERNAL_IDENTITY_INIT:
          serviceImpl.addExternalIdentityInit(
              (trinsic.services.universalwallet.v1.AddExternalIdentityInitRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.AddExternalIdentityInitResponse>)
                  responseObserver);
          break;
        case METHODID_ADD_EXTERNAL_IDENTITY_CONFIRM:
          serviceImpl.addExternalIdentityConfirm(
              (trinsic.services.universalwallet.v1.AddExternalIdentityConfirmRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.AddExternalIdentityConfirmResponse>)
                  responseObserver);
          break;
        case METHODID_REMOVE_EXTERNAL_IDENTITY:
          serviceImpl.removeExternalIdentity(
              (trinsic.services.universalwallet.v1.RemoveExternalIdentityRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.RemoveExternalIdentityResponse>)
                  responseObserver);
          break;
        case METHODID_AUTHENTICATE_INIT:
          serviceImpl.authenticateInit(
              (trinsic.services.universalwallet.v1.AuthenticateInitRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.AuthenticateInitResponse>)
                  responseObserver);
          break;
        case METHODID_AUTHENTICATE_CONFIRM:
          serviceImpl.authenticateConfirm(
              (trinsic.services.universalwallet.v1.AuthenticateConfirmRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.universalwallet.v1.AuthenticateConfirmResponse>)
                  responseObserver);
          break;
        case METHODID_LIST_WALLETS:
          serviceImpl.listWallets(
              (trinsic.services.universalwallet.v1.ListWalletsRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.universalwallet.v1.ListWalletsResponse>)
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

  private abstract static class UniversalWalletBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier,
          io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    UniversalWalletBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.universalwallet.v1.UniversalWalletOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("UniversalWallet");
    }
  }

  private static final class UniversalWalletFileDescriptorSupplier
      extends UniversalWalletBaseDescriptorSupplier {
    UniversalWalletFileDescriptorSupplier() {}
  }

  private static final class UniversalWalletMethodDescriptorSupplier
      extends UniversalWalletBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    UniversalWalletMethodDescriptorSupplier(String methodName) {
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
      synchronized (UniversalWalletGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor =
              result =
                  io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
                      .setSchemaDescriptor(new UniversalWalletFileDescriptorSupplier())
                      .addMethod(getGetItemMethod())
                      .addMethod(getSearchMethod())
                      .addMethod(getInsertItemMethod())
                      .addMethod(getUpdateItemMethod())
                      .addMethod(getDeleteItemMethod())
                      .addMethod(getDeleteWalletMethod())
                      .addMethod(getCreateWalletMethod())
                      .addMethod(getGetWalletInfoMethod())
                      .addMethod(getGetMyInfoMethod())
                      .addMethod(getGenerateAuthTokenMethod())
                      .addMethod(getRevokeAuthTokenMethod())
                      .addMethod(getAddExternalIdentityInitMethod())
                      .addMethod(getAddExternalIdentityConfirmMethod())
                      .addMethod(getRemoveExternalIdentityMethod())
                      .addMethod(getAuthenticateInitMethod())
                      .addMethod(getAuthenticateConfirmMethod())
                      .addMethod(getListWalletsMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
