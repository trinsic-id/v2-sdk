package trinsic.services.provider.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/** */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.49.2)",
    comments = "Source: services/provider/v1/provider.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class ProviderGrpc {

  private ProviderGrpc() {}

  public static final String SERVICE_NAME = "services.provider.v1.Provider";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.CreateEcosystemRequest,
          trinsic.services.provider.v1.CreateEcosystemResponse>
      getCreateEcosystemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateEcosystem",
      requestType = trinsic.services.provider.v1.CreateEcosystemRequest.class,
      responseType = trinsic.services.provider.v1.CreateEcosystemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.CreateEcosystemRequest,
          trinsic.services.provider.v1.CreateEcosystemResponse>
      getCreateEcosystemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.CreateEcosystemRequest,
            trinsic.services.provider.v1.CreateEcosystemResponse>
        getCreateEcosystemMethod;
    if ((getCreateEcosystemMethod = ProviderGrpc.getCreateEcosystemMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getCreateEcosystemMethod = ProviderGrpc.getCreateEcosystemMethod) == null) {
          ProviderGrpc.getCreateEcosystemMethod =
              getCreateEcosystemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.CreateEcosystemRequest,
                          trinsic.services.provider.v1.CreateEcosystemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateEcosystem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.CreateEcosystemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.CreateEcosystemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("CreateEcosystem"))
                      .build();
        }
      }
    }
    return getCreateEcosystemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.UpdateEcosystemRequest,
          trinsic.services.provider.v1.UpdateEcosystemResponse>
      getUpdateEcosystemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UpdateEcosystem",
      requestType = trinsic.services.provider.v1.UpdateEcosystemRequest.class,
      responseType = trinsic.services.provider.v1.UpdateEcosystemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.UpdateEcosystemRequest,
          trinsic.services.provider.v1.UpdateEcosystemResponse>
      getUpdateEcosystemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.UpdateEcosystemRequest,
            trinsic.services.provider.v1.UpdateEcosystemResponse>
        getUpdateEcosystemMethod;
    if ((getUpdateEcosystemMethod = ProviderGrpc.getUpdateEcosystemMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getUpdateEcosystemMethod = ProviderGrpc.getUpdateEcosystemMethod) == null) {
          ProviderGrpc.getUpdateEcosystemMethod =
              getUpdateEcosystemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.UpdateEcosystemRequest,
                          trinsic.services.provider.v1.UpdateEcosystemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UpdateEcosystem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.UpdateEcosystemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.UpdateEcosystemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("UpdateEcosystem"))
                      .build();
        }
      }
    }
    return getUpdateEcosystemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GrantAuthorizationRequest,
          trinsic.services.provider.v1.GrantAuthorizationResponse>
      getGrantAuthorizationMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GrantAuthorization",
      requestType = trinsic.services.provider.v1.GrantAuthorizationRequest.class,
      responseType = trinsic.services.provider.v1.GrantAuthorizationResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GrantAuthorizationRequest,
          trinsic.services.provider.v1.GrantAuthorizationResponse>
      getGrantAuthorizationMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.GrantAuthorizationRequest,
            trinsic.services.provider.v1.GrantAuthorizationResponse>
        getGrantAuthorizationMethod;
    if ((getGrantAuthorizationMethod = ProviderGrpc.getGrantAuthorizationMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGrantAuthorizationMethod = ProviderGrpc.getGrantAuthorizationMethod) == null) {
          ProviderGrpc.getGrantAuthorizationMethod =
              getGrantAuthorizationMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.GrantAuthorizationRequest,
                          trinsic.services.provider.v1.GrantAuthorizationResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GrantAuthorization"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GrantAuthorizationRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GrantAuthorizationResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("GrantAuthorization"))
                      .build();
        }
      }
    }
    return getGrantAuthorizationMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RevokeAuthorizationRequest,
          trinsic.services.provider.v1.RevokeAuthorizationResponse>
      getRevokeAuthorizationMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RevokeAuthorization",
      requestType = trinsic.services.provider.v1.RevokeAuthorizationRequest.class,
      responseType = trinsic.services.provider.v1.RevokeAuthorizationResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RevokeAuthorizationRequest,
          trinsic.services.provider.v1.RevokeAuthorizationResponse>
      getRevokeAuthorizationMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.RevokeAuthorizationRequest,
            trinsic.services.provider.v1.RevokeAuthorizationResponse>
        getRevokeAuthorizationMethod;
    if ((getRevokeAuthorizationMethod = ProviderGrpc.getRevokeAuthorizationMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getRevokeAuthorizationMethod = ProviderGrpc.getRevokeAuthorizationMethod) == null) {
          ProviderGrpc.getRevokeAuthorizationMethod =
              getRevokeAuthorizationMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.RevokeAuthorizationRequest,
                          trinsic.services.provider.v1.RevokeAuthorizationResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "RevokeAuthorization"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RevokeAuthorizationRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RevokeAuthorizationResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("RevokeAuthorization"))
                      .build();
        }
      }
    }
    return getRevokeAuthorizationMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetAuthorizationsRequest,
          trinsic.services.provider.v1.GetAuthorizationsResponse>
      getGetAuthorizationsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetAuthorizations",
      requestType = trinsic.services.provider.v1.GetAuthorizationsRequest.class,
      responseType = trinsic.services.provider.v1.GetAuthorizationsResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetAuthorizationsRequest,
          trinsic.services.provider.v1.GetAuthorizationsResponse>
      getGetAuthorizationsMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.GetAuthorizationsRequest,
            trinsic.services.provider.v1.GetAuthorizationsResponse>
        getGetAuthorizationsMethod;
    if ((getGetAuthorizationsMethod = ProviderGrpc.getGetAuthorizationsMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetAuthorizationsMethod = ProviderGrpc.getGetAuthorizationsMethod) == null) {
          ProviderGrpc.getGetAuthorizationsMethod =
              getGetAuthorizationsMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.GetAuthorizationsRequest,
                          trinsic.services.provider.v1.GetAuthorizationsResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetAuthorizations"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetAuthorizationsRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetAuthorizationsResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("GetAuthorizations"))
                      .build();
        }
      }
    }
    return getGetAuthorizationsMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.AddWebhookRequest,
          trinsic.services.provider.v1.AddWebhookResponse>
      getAddWebhookMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddWebhook",
      requestType = trinsic.services.provider.v1.AddWebhookRequest.class,
      responseType = trinsic.services.provider.v1.AddWebhookResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.AddWebhookRequest,
          trinsic.services.provider.v1.AddWebhookResponse>
      getAddWebhookMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.AddWebhookRequest,
            trinsic.services.provider.v1.AddWebhookResponse>
        getAddWebhookMethod;
    if ((getAddWebhookMethod = ProviderGrpc.getAddWebhookMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getAddWebhookMethod = ProviderGrpc.getAddWebhookMethod) == null) {
          ProviderGrpc.getAddWebhookMethod =
              getAddWebhookMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.AddWebhookRequest,
                          trinsic.services.provider.v1.AddWebhookResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "AddWebhook"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.AddWebhookRequest.getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.AddWebhookResponse.getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("AddWebhook"))
                      .build();
        }
      }
    }
    return getAddWebhookMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.DeleteWebhookRequest,
          trinsic.services.provider.v1.DeleteWebhookResponse>
      getDeleteWebhookMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "DeleteWebhook",
      requestType = trinsic.services.provider.v1.DeleteWebhookRequest.class,
      responseType = trinsic.services.provider.v1.DeleteWebhookResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.DeleteWebhookRequest,
          trinsic.services.provider.v1.DeleteWebhookResponse>
      getDeleteWebhookMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.DeleteWebhookRequest,
            trinsic.services.provider.v1.DeleteWebhookResponse>
        getDeleteWebhookMethod;
    if ((getDeleteWebhookMethod = ProviderGrpc.getDeleteWebhookMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getDeleteWebhookMethod = ProviderGrpc.getDeleteWebhookMethod) == null) {
          ProviderGrpc.getDeleteWebhookMethod =
              getDeleteWebhookMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.DeleteWebhookRequest,
                          trinsic.services.provider.v1.DeleteWebhookResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "DeleteWebhook"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.DeleteWebhookRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.DeleteWebhookResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("DeleteWebhook"))
                      .build();
        }
      }
    }
    return getDeleteWebhookMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.EcosystemInfoRequest,
          trinsic.services.provider.v1.EcosystemInfoResponse>
      getEcosystemInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "EcosystemInfo",
      requestType = trinsic.services.provider.v1.EcosystemInfoRequest.class,
      responseType = trinsic.services.provider.v1.EcosystemInfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.EcosystemInfoRequest,
          trinsic.services.provider.v1.EcosystemInfoResponse>
      getEcosystemInfoMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.EcosystemInfoRequest,
            trinsic.services.provider.v1.EcosystemInfoResponse>
        getEcosystemInfoMethod;
    if ((getEcosystemInfoMethod = ProviderGrpc.getEcosystemInfoMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getEcosystemInfoMethod = ProviderGrpc.getEcosystemInfoMethod) == null) {
          ProviderGrpc.getEcosystemInfoMethod =
              getEcosystemInfoMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.EcosystemInfoRequest,
                          trinsic.services.provider.v1.EcosystemInfoResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "EcosystemInfo"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.EcosystemInfoRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.EcosystemInfoResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("EcosystemInfo"))
                      .build();
        }
      }
    }
    return getEcosystemInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetPublicEcosystemInfoRequest,
          trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
      getGetPublicEcosystemInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetPublicEcosystemInfo",
      requestType = trinsic.services.provider.v1.GetPublicEcosystemInfoRequest.class,
      responseType = trinsic.services.provider.v1.GetPublicEcosystemInfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetPublicEcosystemInfoRequest,
          trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
      getGetPublicEcosystemInfoMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.GetPublicEcosystemInfoRequest,
            trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
        getGetPublicEcosystemInfoMethod;
    if ((getGetPublicEcosystemInfoMethod = ProviderGrpc.getGetPublicEcosystemInfoMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetPublicEcosystemInfoMethod = ProviderGrpc.getGetPublicEcosystemInfoMethod)
            == null) {
          ProviderGrpc.getGetPublicEcosystemInfoMethod =
              getGetPublicEcosystemInfoMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.GetPublicEcosystemInfoRequest,
                          trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "GetPublicEcosystemInfo"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetPublicEcosystemInfoRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetPublicEcosystemInfoResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("GetPublicEcosystemInfo"))
                      .build();
        }
      }
    }
    return getGetPublicEcosystemInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GenerateTokenRequest,
          trinsic.services.provider.v1.GenerateTokenResponse>
      getGenerateTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GenerateToken",
      requestType = trinsic.services.provider.v1.GenerateTokenRequest.class,
      responseType = trinsic.services.provider.v1.GenerateTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GenerateTokenRequest,
          trinsic.services.provider.v1.GenerateTokenResponse>
      getGenerateTokenMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.GenerateTokenRequest,
            trinsic.services.provider.v1.GenerateTokenResponse>
        getGenerateTokenMethod;
    if ((getGenerateTokenMethod = ProviderGrpc.getGenerateTokenMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGenerateTokenMethod = ProviderGrpc.getGenerateTokenMethod) == null) {
          ProviderGrpc.getGenerateTokenMethod =
              getGenerateTokenMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.GenerateTokenRequest,
                          trinsic.services.provider.v1.GenerateTokenResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GenerateToken"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GenerateTokenRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GenerateTokenResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GenerateToken"))
                      .build();
        }
      }
    }
    return getGenerateTokenMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.InviteRequest, trinsic.services.provider.v1.InviteResponse>
      getInviteMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Invite",
      requestType = trinsic.services.provider.v1.InviteRequest.class,
      responseType = trinsic.services.provider.v1.InviteResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.InviteRequest, trinsic.services.provider.v1.InviteResponse>
      getInviteMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.InviteRequest, trinsic.services.provider.v1.InviteResponse>
        getInviteMethod;
    if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
          ProviderGrpc.getInviteMethod =
              getInviteMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.InviteRequest,
                          trinsic.services.provider.v1.InviteResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Invite"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.InviteRequest.getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.InviteResponse.getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("Invite"))
                      .build();
        }
      }
    }
    return getInviteMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.InvitationStatusRequest,
          trinsic.services.provider.v1.InvitationStatusResponse>
      getInvitationStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InvitationStatus",
      requestType = trinsic.services.provider.v1.InvitationStatusRequest.class,
      responseType = trinsic.services.provider.v1.InvitationStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.InvitationStatusRequest,
          trinsic.services.provider.v1.InvitationStatusResponse>
      getInvitationStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.InvitationStatusRequest,
            trinsic.services.provider.v1.InvitationStatusResponse>
        getInvitationStatusMethod;
    if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
          ProviderGrpc.getInvitationStatusMethod =
              getInvitationStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.InvitationStatusRequest,
                          trinsic.services.provider.v1.InvitationStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InvitationStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.InvitationStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.InvitationStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("InvitationStatus"))
                      .build();
        }
      }
    }
    return getInvitationStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetOberonKeyRequest,
          trinsic.services.provider.v1.GetOberonKeyResponse>
      getGetOberonKeyMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetOberonKey",
      requestType = trinsic.services.provider.v1.GetOberonKeyRequest.class,
      responseType = trinsic.services.provider.v1.GetOberonKeyResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetOberonKeyRequest,
          trinsic.services.provider.v1.GetOberonKeyResponse>
      getGetOberonKeyMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.GetOberonKeyRequest,
            trinsic.services.provider.v1.GetOberonKeyResponse>
        getGetOberonKeyMethod;
    if ((getGetOberonKeyMethod = ProviderGrpc.getGetOberonKeyMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetOberonKeyMethod = ProviderGrpc.getGetOberonKeyMethod) == null) {
          ProviderGrpc.getGetOberonKeyMethod =
              getGetOberonKeyMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.GetOberonKeyRequest,
                          trinsic.services.provider.v1.GetOberonKeyResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetOberonKey"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetOberonKeyRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetOberonKeyResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GetOberonKey"))
                      .build();
        }
      }
    }
    return getGetOberonKeyMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetEventTokenRequest,
          trinsic.services.provider.v1.GetEventTokenResponse>
      getGetEventTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetEventToken",
      requestType = trinsic.services.provider.v1.GetEventTokenRequest.class,
      responseType = trinsic.services.provider.v1.GetEventTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.GetEventTokenRequest,
          trinsic.services.provider.v1.GetEventTokenResponse>
      getGetEventTokenMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.GetEventTokenRequest,
            trinsic.services.provider.v1.GetEventTokenResponse>
        getGetEventTokenMethod;
    if ((getGetEventTokenMethod = ProviderGrpc.getGetEventTokenMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetEventTokenMethod = ProviderGrpc.getGetEventTokenMethod) == null) {
          ProviderGrpc.getGetEventTokenMethod =
              getGetEventTokenMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.GetEventTokenRequest,
                          trinsic.services.provider.v1.GetEventTokenResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetEventToken"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetEventTokenRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.GetEventTokenResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GetEventToken"))
                      .build();
        }
      }
    }
    return getGetEventTokenMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.UpgradeDidRequest,
          trinsic.services.provider.v1.UpgradeDidResponse>
      getUpgradeDIDMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UpgradeDID",
      requestType = trinsic.services.provider.v1.UpgradeDidRequest.class,
      responseType = trinsic.services.provider.v1.UpgradeDidResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.UpgradeDidRequest,
          trinsic.services.provider.v1.UpgradeDidResponse>
      getUpgradeDIDMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.UpgradeDidRequest,
            trinsic.services.provider.v1.UpgradeDidResponse>
        getUpgradeDIDMethod;
    if ((getUpgradeDIDMethod = ProviderGrpc.getUpgradeDIDMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getUpgradeDIDMethod = ProviderGrpc.getUpgradeDIDMethod) == null) {
          ProviderGrpc.getUpgradeDIDMethod =
              getUpgradeDIDMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.UpgradeDidRequest,
                          trinsic.services.provider.v1.UpgradeDidResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UpgradeDID"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.UpgradeDidRequest.getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.UpgradeDidResponse.getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("UpgradeDID"))
                      .build();
        }
      }
    }
    return getUpgradeDIDMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest,
          trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
      getRetrieveDomainVerificationRecordMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RetrieveDomainVerificationRecord",
      requestType = trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest.class,
      responseType = trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest,
          trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
      getRetrieveDomainVerificationRecordMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest,
            trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
        getRetrieveDomainVerificationRecordMethod;
    if ((getRetrieveDomainVerificationRecordMethod =
            ProviderGrpc.getRetrieveDomainVerificationRecordMethod)
        == null) {
      synchronized (ProviderGrpc.class) {
        if ((getRetrieveDomainVerificationRecordMethod =
                ProviderGrpc.getRetrieveDomainVerificationRecordMethod)
            == null) {
          ProviderGrpc.getRetrieveDomainVerificationRecordMethod =
              getRetrieveDomainVerificationRecordMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest,
                          trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "RetrieveDomainVerificationRecord"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("RetrieveDomainVerificationRecord"))
                      .build();
        }
      }
    }
    return getRetrieveDomainVerificationRecordMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest,
          trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
      getRefreshDomainVerificationStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RefreshDomainVerificationStatus",
      requestType = trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest.class,
      responseType = trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest,
          trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
      getRefreshDomainVerificationStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest,
            trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
        getRefreshDomainVerificationStatusMethod;
    if ((getRefreshDomainVerificationStatusMethod =
            ProviderGrpc.getRefreshDomainVerificationStatusMethod)
        == null) {
      synchronized (ProviderGrpc.class) {
        if ((getRefreshDomainVerificationStatusMethod =
                ProviderGrpc.getRefreshDomainVerificationStatusMethod)
            == null) {
          ProviderGrpc.getRefreshDomainVerificationStatusMethod =
              getRefreshDomainVerificationStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest,
                          trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "RefreshDomainVerificationStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("RefreshDomainVerificationStatus"))
                      .build();
        }
      }
    }
    return getRefreshDomainVerificationStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.SearchWalletConfigurationsRequest,
          trinsic.services.provider.v1.SearchWalletConfigurationResponse>
      getSearchWalletConfigurationsMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "SearchWalletConfigurations",
      requestType = trinsic.services.provider.v1.SearchWalletConfigurationsRequest.class,
      responseType = trinsic.services.provider.v1.SearchWalletConfigurationResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.provider.v1.SearchWalletConfigurationsRequest,
          trinsic.services.provider.v1.SearchWalletConfigurationResponse>
      getSearchWalletConfigurationsMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.provider.v1.SearchWalletConfigurationsRequest,
            trinsic.services.provider.v1.SearchWalletConfigurationResponse>
        getSearchWalletConfigurationsMethod;
    if ((getSearchWalletConfigurationsMethod = ProviderGrpc.getSearchWalletConfigurationsMethod)
        == null) {
      synchronized (ProviderGrpc.class) {
        if ((getSearchWalletConfigurationsMethod = ProviderGrpc.getSearchWalletConfigurationsMethod)
            == null) {
          ProviderGrpc.getSearchWalletConfigurationsMethod =
              getSearchWalletConfigurationsMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.provider.v1.SearchWalletConfigurationsRequest,
                          trinsic.services.provider.v1.SearchWalletConfigurationResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(
                          generateFullMethodName(SERVICE_NAME, "SearchWalletConfigurations"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.SearchWalletConfigurationsRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.provider.v1.SearchWalletConfigurationResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(
                          new ProviderMethodDescriptorSupplier("SearchWalletConfigurations"))
                      .build();
        }
      }
    }
    return getSearchWalletConfigurationsMethod;
  }

  /** Creates a new async stub that supports all call types for the service */
  public static ProviderStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<ProviderStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<ProviderStub>() {
          @java.lang.Override
          public ProviderStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new ProviderStub(channel, callOptions);
          }
        };
    return ProviderStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static ProviderBlockingStub newBlockingStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<ProviderBlockingStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<ProviderBlockingStub>() {
          @java.lang.Override
          public ProviderBlockingStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new ProviderBlockingStub(channel, callOptions);
          }
        };
    return ProviderBlockingStub.newStub(factory, channel);
  }

  /** Creates a new ListenableFuture-style stub that supports unary calls on the service */
  public static ProviderFutureStub newFutureStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<ProviderFutureStub> factory =
        new io.grpc.stub.AbstractStub.StubFactory<ProviderFutureStub>() {
          @java.lang.Override
          public ProviderFutureStub newStub(
              io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
            return new ProviderFutureStub(channel, callOptions);
          }
        };
    return ProviderFutureStub.newStub(factory, channel);
  }

  /** */
  public abstract static class ProviderImplBase implements io.grpc.BindableService {

    /**
     *
     *
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public void createEcosystem(
        trinsic.services.provider.v1.CreateEcosystemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.CreateEcosystemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getCreateEcosystemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Update an existing ecosystem
     * </pre>
     */
    public void updateEcosystem(
        trinsic.services.provider.v1.UpdateEcosystemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.UpdateEcosystemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getUpdateEcosystemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Grant user authorization to ecosystem resources
     * </pre>
     */
    public void grantAuthorization(
        trinsic.services.provider.v1.GrantAuthorizationRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GrantAuthorizationResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGrantAuthorizationMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Revoke user authorization to ecosystem resources
     * </pre>
     */
    public void revokeAuthorization(
        trinsic.services.provider.v1.RevokeAuthorizationRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.RevokeAuthorizationResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRevokeAuthorizationMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve the list of permissions for this particular account/ecosystem
     * </pre>
     */
    public void getAuthorizations(
        trinsic.services.provider.v1.GetAuthorizationsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetAuthorizationsResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetAuthorizationsMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public void addWebhook(
        trinsic.services.provider.v1.AddWebhookRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.AddWebhookResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getAddWebhookMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete a webhook endpoint from the ecosystem
     * </pre>
     */
    public void deleteWebhook(
        trinsic.services.provider.v1.DeleteWebhookRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.DeleteWebhookResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getDeleteWebhookMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get ecosystem information
     * </pre>
     */
    public void ecosystemInfo(
        trinsic.services.provider.v1.EcosystemInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.EcosystemInfoResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getEcosystemInfoMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get public ecosystem information about *any* ecosystem
     * </pre>
     */
    public void getPublicEcosystemInfo(
        trinsic.services.provider.v1.GetPublicEcosystemInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetPublicEcosystemInfoMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public void generateToken(
        trinsic.services.provider.v1.GenerateTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GenerateTokenResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGenerateTokenMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public void invite(
        trinsic.services.provider.v1.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.InviteResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInviteMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Check the status of an invitation
     * </pre>
     */
    public void invitationStatus(
        trinsic.services.provider.v1.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.InvitationStatusResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getInvitationStatusMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public void getOberonKey(
        trinsic.services.provider.v1.GetOberonKeyRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetOberonKeyResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetOberonKeyMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Generate a signed token (JWT) that can be used to connect to the message bus
     * </pre>
     */
    public void getEventToken(
        trinsic.services.provider.v1.GetEventTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetEventTokenResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetEventTokenMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Upgrade a wallet's DID from `did:key` to another method
     * </pre>
     */
    public void upgradeDID(
        trinsic.services.provider.v1.UpgradeDidRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.UpgradeDidResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUpgradeDIDMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve a random hash TXT that can be used to verify domain ownership
     * </pre>
     */
    public void retrieveDomainVerificationRecord(
        trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRetrieveDomainVerificationRecordMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Call to verify domain
     * </pre>
     */
    public void refreshDomainVerificationStatus(
        trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getRefreshDomainVerificationStatusMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Search for issuers/providers/verifiers in the current ecosystem
     * </pre>
     */
    public void searchWalletConfigurations(
        trinsic.services.provider.v1.SearchWalletConfigurationsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.SearchWalletConfigurationResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getSearchWalletConfigurationsMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getCreateEcosystemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.CreateEcosystemRequest,
                      trinsic.services.provider.v1.CreateEcosystemResponse>(
                      this, METHODID_CREATE_ECOSYSTEM)))
          .addMethod(
              getUpdateEcosystemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.UpdateEcosystemRequest,
                      trinsic.services.provider.v1.UpdateEcosystemResponse>(
                      this, METHODID_UPDATE_ECOSYSTEM)))
          .addMethod(
              getGrantAuthorizationMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.GrantAuthorizationRequest,
                      trinsic.services.provider.v1.GrantAuthorizationResponse>(
                      this, METHODID_GRANT_AUTHORIZATION)))
          .addMethod(
              getRevokeAuthorizationMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.RevokeAuthorizationRequest,
                      trinsic.services.provider.v1.RevokeAuthorizationResponse>(
                      this, METHODID_REVOKE_AUTHORIZATION)))
          .addMethod(
              getGetAuthorizationsMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.GetAuthorizationsRequest,
                      trinsic.services.provider.v1.GetAuthorizationsResponse>(
                      this, METHODID_GET_AUTHORIZATIONS)))
          .addMethod(
              getAddWebhookMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.AddWebhookRequest,
                      trinsic.services.provider.v1.AddWebhookResponse>(this, METHODID_ADD_WEBHOOK)))
          .addMethod(
              getDeleteWebhookMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.DeleteWebhookRequest,
                      trinsic.services.provider.v1.DeleteWebhookResponse>(
                      this, METHODID_DELETE_WEBHOOK)))
          .addMethod(
              getEcosystemInfoMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.EcosystemInfoRequest,
                      trinsic.services.provider.v1.EcosystemInfoResponse>(
                      this, METHODID_ECOSYSTEM_INFO)))
          .addMethod(
              getGetPublicEcosystemInfoMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.GetPublicEcosystemInfoRequest,
                      trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>(
                      this, METHODID_GET_PUBLIC_ECOSYSTEM_INFO)))
          .addMethod(
              getGenerateTokenMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.GenerateTokenRequest,
                      trinsic.services.provider.v1.GenerateTokenResponse>(
                      this, METHODID_GENERATE_TOKEN)))
          .addMethod(
              getInviteMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.InviteRequest,
                      trinsic.services.provider.v1.InviteResponse>(this, METHODID_INVITE)))
          .addMethod(
              getInvitationStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.InvitationStatusRequest,
                      trinsic.services.provider.v1.InvitationStatusResponse>(
                      this, METHODID_INVITATION_STATUS)))
          .addMethod(
              getGetOberonKeyMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.GetOberonKeyRequest,
                      trinsic.services.provider.v1.GetOberonKeyResponse>(
                      this, METHODID_GET_OBERON_KEY)))
          .addMethod(
              getGetEventTokenMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.GetEventTokenRequest,
                      trinsic.services.provider.v1.GetEventTokenResponse>(
                      this, METHODID_GET_EVENT_TOKEN)))
          .addMethod(
              getUpgradeDIDMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.UpgradeDidRequest,
                      trinsic.services.provider.v1.UpgradeDidResponse>(this, METHODID_UPGRADE_DID)))
          .addMethod(
              getRetrieveDomainVerificationRecordMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest,
                      trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>(
                      this, METHODID_RETRIEVE_DOMAIN_VERIFICATION_RECORD)))
          .addMethod(
              getRefreshDomainVerificationStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest,
                      trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>(
                      this, METHODID_REFRESH_DOMAIN_VERIFICATION_STATUS)))
          .addMethod(
              getSearchWalletConfigurationsMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.provider.v1.SearchWalletConfigurationsRequest,
                      trinsic.services.provider.v1.SearchWalletConfigurationResponse>(
                      this, METHODID_SEARCH_WALLET_CONFIGURATIONS)))
          .build();
    }
  }

  /** */
  public static final class ProviderStub extends io.grpc.stub.AbstractAsyncStub<ProviderStub> {
    private ProviderStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ProviderStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new ProviderStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public void createEcosystem(
        trinsic.services.provider.v1.CreateEcosystemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.CreateEcosystemResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCreateEcosystemMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Update an existing ecosystem
     * </pre>
     */
    public void updateEcosystem(
        trinsic.services.provider.v1.UpdateEcosystemRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.UpdateEcosystemResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUpdateEcosystemMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Grant user authorization to ecosystem resources
     * </pre>
     */
    public void grantAuthorization(
        trinsic.services.provider.v1.GrantAuthorizationRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GrantAuthorizationResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGrantAuthorizationMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Revoke user authorization to ecosystem resources
     * </pre>
     */
    public void revokeAuthorization(
        trinsic.services.provider.v1.RevokeAuthorizationRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.RevokeAuthorizationResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRevokeAuthorizationMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve the list of permissions for this particular account/ecosystem
     * </pre>
     */
    public void getAuthorizations(
        trinsic.services.provider.v1.GetAuthorizationsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetAuthorizationsResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetAuthorizationsMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public void addWebhook(
        trinsic.services.provider.v1.AddWebhookRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.AddWebhookResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAddWebhookMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Delete a webhook endpoint from the ecosystem
     * </pre>
     */
    public void deleteWebhook(
        trinsic.services.provider.v1.DeleteWebhookRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.DeleteWebhookResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getDeleteWebhookMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get ecosystem information
     * </pre>
     */
    public void ecosystemInfo(
        trinsic.services.provider.v1.EcosystemInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.EcosystemInfoResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getEcosystemInfoMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Get public ecosystem information about *any* ecosystem
     * </pre>
     */
    public void getPublicEcosystemInfo(
        trinsic.services.provider.v1.GetPublicEcosystemInfoRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetPublicEcosystemInfoMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public void generateToken(
        trinsic.services.provider.v1.GenerateTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GenerateTokenResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGenerateTokenMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public void invite(
        trinsic.services.provider.v1.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.InviteResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Check the status of an invitation
     * </pre>
     */
    public void invitationStatus(
        trinsic.services.provider.v1.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.InvitationStatusResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInvitationStatusMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public void getOberonKey(
        trinsic.services.provider.v1.GetOberonKeyRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetOberonKeyResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetOberonKeyMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Generate a signed token (JWT) that can be used to connect to the message bus
     * </pre>
     */
    public void getEventToken(
        trinsic.services.provider.v1.GetEventTokenRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetEventTokenResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetEventTokenMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Upgrade a wallet's DID from `did:key` to another method
     * </pre>
     */
    public void upgradeDID(
        trinsic.services.provider.v1.UpgradeDidRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.UpgradeDidResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUpgradeDIDMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Retrieve a random hash TXT that can be used to verify domain ownership
     * </pre>
     */
    public void retrieveDomainVerificationRecord(
        trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRetrieveDomainVerificationRecordMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Call to verify domain
     * </pre>
     */
    public void refreshDomainVerificationStatus(
        trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRefreshDomainVerificationStatusMethod(), getCallOptions()),
          request,
          responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Search for issuers/providers/verifiers in the current ecosystem
     * </pre>
     */
    public void searchWalletConfigurations(
        trinsic.services.provider.v1.SearchWalletConfigurationsRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.provider.v1.SearchWalletConfigurationResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchWalletConfigurationsMethod(), getCallOptions()),
          request,
          responseObserver);
    }
  }

  /** */
  public static final class ProviderBlockingStub
      extends io.grpc.stub.AbstractBlockingStub<ProviderBlockingStub> {
    private ProviderBlockingStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ProviderBlockingStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new ProviderBlockingStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public trinsic.services.provider.v1.CreateEcosystemResponse createEcosystem(
        trinsic.services.provider.v1.CreateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCreateEcosystemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Update an existing ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.UpdateEcosystemResponse updateEcosystem(
        trinsic.services.provider.v1.UpdateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpdateEcosystemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Grant user authorization to ecosystem resources
     * </pre>
     */
    public trinsic.services.provider.v1.GrantAuthorizationResponse grantAuthorization(
        trinsic.services.provider.v1.GrantAuthorizationRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGrantAuthorizationMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Revoke user authorization to ecosystem resources
     * </pre>
     */
    public trinsic.services.provider.v1.RevokeAuthorizationResponse revokeAuthorization(
        trinsic.services.provider.v1.RevokeAuthorizationRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRevokeAuthorizationMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve the list of permissions for this particular account/ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.GetAuthorizationsResponse getAuthorizations(
        trinsic.services.provider.v1.GetAuthorizationsRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetAuthorizationsMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.AddWebhookResponse addWebhook(
        trinsic.services.provider.v1.AddWebhookRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAddWebhookMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Delete a webhook endpoint from the ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.DeleteWebhookResponse deleteWebhook(
        trinsic.services.provider.v1.DeleteWebhookRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getDeleteWebhookMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Get ecosystem information
     * </pre>
     */
    public trinsic.services.provider.v1.EcosystemInfoResponse ecosystemInfo(
        trinsic.services.provider.v1.EcosystemInfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getEcosystemInfoMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Get public ecosystem information about *any* ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.GetPublicEcosystemInfoResponse getPublicEcosystemInfo(
        trinsic.services.provider.v1.GetPublicEcosystemInfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetPublicEcosystemInfoMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public trinsic.services.provider.v1.GenerateTokenResponse generateToken(
        trinsic.services.provider.v1.GenerateTokenRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGenerateTokenMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.InviteResponse invite(
        trinsic.services.provider.v1.InviteRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInviteMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Check the status of an invitation
     * </pre>
     */
    public trinsic.services.provider.v1.InvitationStatusResponse invitationStatus(
        trinsic.services.provider.v1.InvitationStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInvitationStatusMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public trinsic.services.provider.v1.GetOberonKeyResponse getOberonKey(
        trinsic.services.provider.v1.GetOberonKeyRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetOberonKeyMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Generate a signed token (JWT) that can be used to connect to the message bus
     * </pre>
     */
    public trinsic.services.provider.v1.GetEventTokenResponse getEventToken(
        trinsic.services.provider.v1.GetEventTokenRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetEventTokenMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Upgrade a wallet's DID from `did:key` to another method
     * </pre>
     */
    public trinsic.services.provider.v1.UpgradeDidResponse upgradeDID(
        trinsic.services.provider.v1.UpgradeDidRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpgradeDIDMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve a random hash TXT that can be used to verify domain ownership
     * </pre>
     */
    public trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse
        retrieveDomainVerificationRecord(
            trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRetrieveDomainVerificationRecordMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Call to verify domain
     * </pre>
     */
    public trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse
        refreshDomainVerificationStatus(
            trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRefreshDomainVerificationStatusMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Search for issuers/providers/verifiers in the current ecosystem
     * </pre>
     */
    public trinsic.services.provider.v1.SearchWalletConfigurationResponse
        searchWalletConfigurations(
            trinsic.services.provider.v1.SearchWalletConfigurationsRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchWalletConfigurationsMethod(), getCallOptions(), request);
    }
  }

  /** */
  public static final class ProviderFutureStub
      extends io.grpc.stub.AbstractFutureStub<ProviderFutureStub> {
    private ProviderFutureStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected ProviderFutureStub build(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new ProviderFutureStub(channel, callOptions);
    }

    /**
     *
     *
     * <pre>
     * Create new ecosystem and assign the authenticated user as owner
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.CreateEcosystemResponse>
        createEcosystem(trinsic.services.provider.v1.CreateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCreateEcosystemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Update an existing ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.UpdateEcosystemResponse>
        updateEcosystem(trinsic.services.provider.v1.UpdateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpdateEcosystemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Grant user authorization to ecosystem resources
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.GrantAuthorizationResponse>
        grantAuthorization(trinsic.services.provider.v1.GrantAuthorizationRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGrantAuthorizationMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Revoke user authorization to ecosystem resources
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.RevokeAuthorizationResponse>
        revokeAuthorization(trinsic.services.provider.v1.RevokeAuthorizationRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRevokeAuthorizationMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve the list of permissions for this particular account/ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.GetAuthorizationsResponse>
        getAuthorizations(trinsic.services.provider.v1.GetAuthorizationsRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetAuthorizationsMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.AddWebhookResponse>
        addWebhook(trinsic.services.provider.v1.AddWebhookRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAddWebhookMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Delete a webhook endpoint from the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.DeleteWebhookResponse>
        deleteWebhook(trinsic.services.provider.v1.DeleteWebhookRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getDeleteWebhookMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Get ecosystem information
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.EcosystemInfoResponse>
        ecosystemInfo(trinsic.services.provider.v1.EcosystemInfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getEcosystemInfoMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Get public ecosystem information about *any* ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>
        getPublicEcosystemInfo(trinsic.services.provider.v1.GetPublicEcosystemInfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetPublicEcosystemInfoMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.GenerateTokenResponse>
        generateToken(trinsic.services.provider.v1.GenerateTokenRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGenerateTokenMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Invite a user to the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.InviteResponse>
        invite(trinsic.services.provider.v1.InviteRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Check the status of an invitation
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.InvitationStatusResponse>
        invitationStatus(trinsic.services.provider.v1.InvitationStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInvitationStatusMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Returns the public key being used to create/verify oberon tokens
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.GetOberonKeyResponse>
        getOberonKey(trinsic.services.provider.v1.GetOberonKeyRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetOberonKeyMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Generate a signed token (JWT) that can be used to connect to the message bus
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.GetEventTokenResponse>
        getEventToken(trinsic.services.provider.v1.GetEventTokenRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetEventTokenMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Upgrade a wallet's DID from `did:key` to another method
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.UpgradeDidResponse>
        upgradeDID(trinsic.services.provider.v1.UpgradeDidRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpgradeDIDMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Retrieve a random hash TXT that can be used to verify domain ownership
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>
        retrieveDomainVerificationRecord(
            trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRetrieveDomainVerificationRecordMethod(), getCallOptions()),
          request);
    }

    /**
     *
     *
     * <pre>
     * Call to verify domain
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>
        refreshDomainVerificationStatus(
            trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRefreshDomainVerificationStatusMethod(), getCallOptions()),
          request);
    }

    /**
     *
     *
     * <pre>
     * Search for issuers/providers/verifiers in the current ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.provider.v1.SearchWalletConfigurationResponse>
        searchWalletConfigurations(
            trinsic.services.provider.v1.SearchWalletConfigurationsRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchWalletConfigurationsMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_CREATE_ECOSYSTEM = 0;
  private static final int METHODID_UPDATE_ECOSYSTEM = 1;
  private static final int METHODID_GRANT_AUTHORIZATION = 2;
  private static final int METHODID_REVOKE_AUTHORIZATION = 3;
  private static final int METHODID_GET_AUTHORIZATIONS = 4;
  private static final int METHODID_ADD_WEBHOOK = 5;
  private static final int METHODID_DELETE_WEBHOOK = 6;
  private static final int METHODID_ECOSYSTEM_INFO = 7;
  private static final int METHODID_GET_PUBLIC_ECOSYSTEM_INFO = 8;
  private static final int METHODID_GENERATE_TOKEN = 9;
  private static final int METHODID_INVITE = 10;
  private static final int METHODID_INVITATION_STATUS = 11;
  private static final int METHODID_GET_OBERON_KEY = 12;
  private static final int METHODID_GET_EVENT_TOKEN = 13;
  private static final int METHODID_UPGRADE_DID = 14;
  private static final int METHODID_RETRIEVE_DOMAIN_VERIFICATION_RECORD = 15;
  private static final int METHODID_REFRESH_DOMAIN_VERIFICATION_STATUS = 16;
  private static final int METHODID_SEARCH_WALLET_CONFIGURATIONS = 17;

  private static final class MethodHandlers<Req, Resp>
      implements io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
          io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final ProviderImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(ProviderImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_CREATE_ECOSYSTEM:
          serviceImpl.createEcosystem(
              (trinsic.services.provider.v1.CreateEcosystemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.CreateEcosystemResponse>)
                  responseObserver);
          break;
        case METHODID_UPDATE_ECOSYSTEM:
          serviceImpl.updateEcosystem(
              (trinsic.services.provider.v1.UpdateEcosystemRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.UpdateEcosystemResponse>)
                  responseObserver);
          break;
        case METHODID_GRANT_AUTHORIZATION:
          serviceImpl.grantAuthorization(
              (trinsic.services.provider.v1.GrantAuthorizationRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GrantAuthorizationResponse>)
                  responseObserver);
          break;
        case METHODID_REVOKE_AUTHORIZATION:
          serviceImpl.revokeAuthorization(
              (trinsic.services.provider.v1.RevokeAuthorizationRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.RevokeAuthorizationResponse>)
                  responseObserver);
          break;
        case METHODID_GET_AUTHORIZATIONS:
          serviceImpl.getAuthorizations(
              (trinsic.services.provider.v1.GetAuthorizationsRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetAuthorizationsResponse>)
                  responseObserver);
          break;
        case METHODID_ADD_WEBHOOK:
          serviceImpl.addWebhook(
              (trinsic.services.provider.v1.AddWebhookRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.AddWebhookResponse>)
                  responseObserver);
          break;
        case METHODID_DELETE_WEBHOOK:
          serviceImpl.deleteWebhook(
              (trinsic.services.provider.v1.DeleteWebhookRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.DeleteWebhookResponse>)
                  responseObserver);
          break;
        case METHODID_ECOSYSTEM_INFO:
          serviceImpl.ecosystemInfo(
              (trinsic.services.provider.v1.EcosystemInfoRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.EcosystemInfoResponse>)
                  responseObserver);
          break;
        case METHODID_GET_PUBLIC_ECOSYSTEM_INFO:
          serviceImpl.getPublicEcosystemInfo(
              (trinsic.services.provider.v1.GetPublicEcosystemInfoRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.GetPublicEcosystemInfoResponse>)
                  responseObserver);
          break;
        case METHODID_GENERATE_TOKEN:
          serviceImpl.generateToken(
              (trinsic.services.provider.v1.GenerateTokenRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GenerateTokenResponse>)
                  responseObserver);
          break;
        case METHODID_INVITE:
          serviceImpl.invite(
              (trinsic.services.provider.v1.InviteRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.InviteResponse>)
                  responseObserver);
          break;
        case METHODID_INVITATION_STATUS:
          serviceImpl.invitationStatus(
              (trinsic.services.provider.v1.InvitationStatusRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.InvitationStatusResponse>)
                  responseObserver);
          break;
        case METHODID_GET_OBERON_KEY:
          serviceImpl.getOberonKey(
              (trinsic.services.provider.v1.GetOberonKeyRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetOberonKeyResponse>)
                  responseObserver);
          break;
        case METHODID_GET_EVENT_TOKEN:
          serviceImpl.getEventToken(
              (trinsic.services.provider.v1.GetEventTokenRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.GetEventTokenResponse>)
                  responseObserver);
          break;
        case METHODID_UPGRADE_DID:
          serviceImpl.upgradeDID(
              (trinsic.services.provider.v1.UpgradeDidRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.provider.v1.UpgradeDidResponse>)
                  responseObserver);
          break;
        case METHODID_RETRIEVE_DOMAIN_VERIFICATION_RECORD:
          serviceImpl.retrieveDomainVerificationRecord(
              (trinsic.services.provider.v1.RetrieveDomainVerificationRecordRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.RetrieveDomainVerificationRecordResponse>)
                  responseObserver);
          break;
        case METHODID_REFRESH_DOMAIN_VERIFICATION_STATUS:
          serviceImpl.refreshDomainVerificationStatus(
              (trinsic.services.provider.v1.RefreshDomainVerificationStatusRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.RefreshDomainVerificationStatusResponse>)
                  responseObserver);
          break;
        case METHODID_SEARCH_WALLET_CONFIGURATIONS:
          serviceImpl.searchWalletConfigurations(
              (trinsic.services.provider.v1.SearchWalletConfigurationsRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.provider.v1.SearchWalletConfigurationResponse>)
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

  private abstract static class ProviderBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier,
          io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    ProviderBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.provider.v1.ProviderOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("Provider");
    }
  }

  private static final class ProviderFileDescriptorSupplier extends ProviderBaseDescriptorSupplier {
    ProviderFileDescriptorSupplier() {}
  }

  private static final class ProviderMethodDescriptorSupplier extends ProviderBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    ProviderMethodDescriptorSupplier(String methodName) {
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
      synchronized (ProviderGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor =
              result =
                  io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
                      .setSchemaDescriptor(new ProviderFileDescriptorSupplier())
                      .addMethod(getCreateEcosystemMethod())
                      .addMethod(getUpdateEcosystemMethod())
                      .addMethod(getGrantAuthorizationMethod())
                      .addMethod(getRevokeAuthorizationMethod())
                      .addMethod(getGetAuthorizationsMethod())
                      .addMethod(getAddWebhookMethod())
                      .addMethod(getDeleteWebhookMethod())
                      .addMethod(getEcosystemInfoMethod())
                      .addMethod(getGetPublicEcosystemInfoMethod())
                      .addMethod(getGenerateTokenMethod())
                      .addMethod(getInviteMethod())
                      .addMethod(getInvitationStatusMethod())
                      .addMethod(getGetOberonKeyMethod())
                      .addMethod(getGetEventTokenMethod())
                      .addMethod(getUpgradeDIDMethod())
                      .addMethod(getRetrieveDomainVerificationRecordMethod())
                      .addMethod(getRefreshDomainVerificationStatusMethod())
                      .addMethod(getSearchWalletConfigurationsMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
