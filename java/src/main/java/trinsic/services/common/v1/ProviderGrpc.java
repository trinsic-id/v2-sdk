package trinsic.services.common.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/** */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.46.0)",
    comments = "Source: services/provider/v1/provider.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class ProviderGrpc {

  private ProviderGrpc() {}

  public static final String SERVICE_NAME = "services.provider.v1.Provider";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
          trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
      getCreateEcosystemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CreateEcosystem",
      requestType = trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
          trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
      getCreateEcosystemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
            trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
        getCreateEcosystemMethod;
    if ((getCreateEcosystemMethod = ProviderGrpc.getCreateEcosystemMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getCreateEcosystemMethod = ProviderGrpc.getCreateEcosystemMethod) == null) {
          ProviderGrpc.getCreateEcosystemMethod =
              getCreateEcosystemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
                          trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CreateEcosystem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("CreateEcosystem"))
                      .build();
        }
      }
    }
    return getCreateEcosystemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest,
          trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
      getUpdateEcosystemMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UpdateEcosystem",
      requestType = trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest,
          trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
      getUpdateEcosystemMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest,
            trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
        getUpdateEcosystemMethod;
    if ((getUpdateEcosystemMethod = ProviderGrpc.getUpdateEcosystemMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getUpdateEcosystemMethod = ProviderGrpc.getUpdateEcosystemMethod) == null) {
          ProviderGrpc.getUpdateEcosystemMethod =
              getUpdateEcosystemMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest,
                          trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UpdateEcosystem"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("UpdateEcosystem"))
                      .build();
        }
      }
    }
    return getUpdateEcosystemMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest,
          trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
      getAddWebhookMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddWebhook",
      requestType = trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest,
          trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
      getAddWebhookMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest,
            trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
        getAddWebhookMethod;
    if ((getAddWebhookMethod = ProviderGrpc.getAddWebhookMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getAddWebhookMethod = ProviderGrpc.getAddWebhookMethod) == null) {
          ProviderGrpc.getAddWebhookMethod =
              getAddWebhookMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest,
                          trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "AddWebhook"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("AddWebhook"))
                      .build();
        }
      }
    }
    return getAddWebhookMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest,
          trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
      getDeleteWebhookMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "DeleteWebhook",
      requestType = trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest,
          trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
      getDeleteWebhookMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest,
            trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
        getDeleteWebhookMethod;
    if ((getDeleteWebhookMethod = ProviderGrpc.getDeleteWebhookMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getDeleteWebhookMethod = ProviderGrpc.getDeleteWebhookMethod) == null) {
          ProviderGrpc.getDeleteWebhookMethod =
              getDeleteWebhookMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest,
                          trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "DeleteWebhook"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("DeleteWebhook"))
                      .build();
        }
      }
    }
    return getDeleteWebhookMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest,
          trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
      getInfoMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Info",
      requestType = trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest,
          trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
      getInfoMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest,
            trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
        getInfoMethod;
    if ((getInfoMethod = ProviderGrpc.getInfoMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInfoMethod = ProviderGrpc.getInfoMethod) == null) {
          ProviderGrpc.getInfoMethod =
              getInfoMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest,
                          trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Info"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("Info"))
                      .build();
        }
      }
    }
    return getInfoMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
          trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
      getGenerateTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GenerateToken",
      requestType = trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
          trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
      getGenerateTokenMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
            trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
        getGenerateTokenMethod;
    if ((getGenerateTokenMethod = ProviderGrpc.getGenerateTokenMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGenerateTokenMethod = ProviderGrpc.getGenerateTokenMethod) == null) {
          ProviderGrpc.getGenerateTokenMethod =
              getGenerateTokenMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
                          trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GenerateToken"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GenerateToken"))
                      .build();
        }
      }
    }
    return getGenerateTokenMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
          trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
      getInviteMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "Invite",
      requestType = trinsic.services.common.v1.ProviderOuterClass.InviteRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.InviteResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
          trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
      getInviteMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
            trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
        getInviteMethod;
    if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInviteMethod = ProviderGrpc.getInviteMethod) == null) {
          ProviderGrpc.getInviteMethod =
              getInviteMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
                          trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "Invite"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.InviteRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.InviteResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("Invite"))
                      .build();
        }
      }
    }
    return getInviteMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
          trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
      getInvitationStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "InvitationStatus",
      requestType = trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
          trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
      getInvitationStatusMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
            trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
        getInvitationStatusMethod;
    if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getInvitationStatusMethod = ProviderGrpc.getInvitationStatusMethod) == null) {
          ProviderGrpc.getInvitationStatusMethod =
              getInvitationStatusMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
                          trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "InvitationStatus"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("InvitationStatus"))
                      .build();
        }
      }
    }
    return getInvitationStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
          trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
      getGetOberonKeyMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetOberonKey",
      requestType = trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
          trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
      getGetOberonKeyMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
            trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
        getGetOberonKeyMethod;
    if ((getGetOberonKeyMethod = ProviderGrpc.getGetOberonKeyMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetOberonKeyMethod = ProviderGrpc.getGetOberonKeyMethod) == null) {
          ProviderGrpc.getGetOberonKeyMethod =
              getGetOberonKeyMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
                          trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetOberonKey"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GetOberonKey"))
                      .build();
        }
      }
    }
    return getGetOberonKeyMethod;
  }

  private static volatile io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest,
          trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
      getGetEventTokenMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "GetEventToken",
      requestType = trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest.class,
      responseType = trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<
          trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest,
          trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
      getGetEventTokenMethod() {
    io.grpc.MethodDescriptor<
            trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest,
            trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
        getGetEventTokenMethod;
    if ((getGetEventTokenMethod = ProviderGrpc.getGetEventTokenMethod) == null) {
      synchronized (ProviderGrpc.class) {
        if ((getGetEventTokenMethod = ProviderGrpc.getGetEventTokenMethod) == null) {
          ProviderGrpc.getGetEventTokenMethod =
              getGetEventTokenMethod =
                  io.grpc.MethodDescriptor
                      .<trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest,
                          trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
                          newBuilder()
                      .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
                      .setFullMethodName(generateFullMethodName(SERVICE_NAME, "GetEventToken"))
                      .setSampledToLocalTracing(true)
                      .setRequestMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest
                                  .getDefaultInstance()))
                      .setResponseMarshaller(
                          io.grpc.protobuf.ProtoUtils.marshaller(
                              trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse
                                  .getDefaultInstance()))
                      .setSchemaDescriptor(new ProviderMethodDescriptorSupplier("GetEventToken"))
                      .build();
        }
      }
    }
    return getGetEventTokenMethod;
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
        trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getUpdateEcosystemMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public void addWebhook(
        trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
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
    public void info(
        trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInfoMethod(), responseObserver);
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
        trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getInviteMethod(), responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public void invitationStatus(
        trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
            responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(
          getGetEventTokenMethod(), responseObserver);
    }

    @java.lang.Override
    public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
              getCreateEcosystemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest,
                      trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>(
                      this, METHODID_CREATE_ECOSYSTEM)))
          .addMethod(
              getUpdateEcosystemMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest,
                      trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>(
                      this, METHODID_UPDATE_ECOSYSTEM)))
          .addMethod(
              getAddWebhookMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest,
                      trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>(
                      this, METHODID_ADD_WEBHOOK)))
          .addMethod(
              getDeleteWebhookMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest,
                      trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>(
                      this, METHODID_DELETE_WEBHOOK)))
          .addMethod(
              getInfoMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest,
                      trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>(
                      this, METHODID_INFO)))
          .addMethod(
              getGenerateTokenMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest,
                      trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>(
                      this, METHODID_GENERATE_TOKEN)))
          .addMethod(
              getInviteMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.InviteRequest,
                      trinsic.services.common.v1.ProviderOuterClass.InviteResponse>(
                      this, METHODID_INVITE)))
          .addMethod(
              getInvitationStatusMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest,
                      trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>(
                      this, METHODID_INVITATION_STATUS)))
          .addMethod(
              getGetOberonKeyMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest,
                      trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>(
                      this, METHODID_GET_OBERON_KEY)))
          .addMethod(
              getGetEventTokenMethod(),
              io.grpc.stub.ServerCalls.asyncUnaryCall(
                  new MethodHandlers<
                      trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest,
                      trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>(
                      this, METHODID_GET_EVENT_TOKEN)))
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
        trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
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
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public void addWebhook(
        trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
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
    public void info(
        trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInfoMethod(), getCallOptions()), request, responseObserver);
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
        trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.InviteRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     *
     *
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public void invitationStatus(
        trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
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
        trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest request,
        io.grpc.stub.StreamObserver<
                trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
            responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getGetEventTokenMethod(), getCallOptions()),
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
    public trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse createEcosystem(
        trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request) {
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
    public trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse updateEcosystem(
        trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUpdateEcosystemMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse addWebhook(
        trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest request) {
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
    public trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse deleteWebhook(
        trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest request) {
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
    public trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse info(
        trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInfoMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Generates an unprotected authentication token that can be used to
     * configure server side applications
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse generateToken(
        trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request) {
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
    public trinsic.services.common.v1.ProviderOuterClass.InviteResponse invite(
        trinsic.services.common.v1.ProviderOuterClass.InviteRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getInviteMethod(), getCallOptions(), request);
    }

    /**
     *
     *
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse invitationStatus(
        trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request) {
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
    public trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse getOberonKey(
        trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request) {
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
    public trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse getEventToken(
        trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getGetEventTokenMethod(), getCallOptions(), request);
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
            trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>
        createEcosystem(
            trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest request) {
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
            trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>
        updateEcosystem(
            trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUpdateEcosystemMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Add a webhook endpoint to the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>
        addWebhook(trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest request) {
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
            trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>
        deleteWebhook(trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest request) {
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
            trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>
        info(trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInfoMethod(), getCallOptions()), request);
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
            trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>
        generateToken(trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest request) {
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
            trinsic.services.common.v1.ProviderOuterClass.InviteResponse>
        invite(trinsic.services.common.v1.ProviderOuterClass.InviteRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getInviteMethod(), getCallOptions()), request);
    }

    /**
     *
     *
     * <pre>
     * Check the invitation status
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<
            trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>
        invitationStatus(
            trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest request) {
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
            trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>
        getOberonKey(trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest request) {
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
            trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>
        getEventToken(trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getGetEventTokenMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_CREATE_ECOSYSTEM = 0;
  private static final int METHODID_UPDATE_ECOSYSTEM = 1;
  private static final int METHODID_ADD_WEBHOOK = 2;
  private static final int METHODID_DELETE_WEBHOOK = 3;
  private static final int METHODID_INFO = 4;
  private static final int METHODID_GENERATE_TOKEN = 5;
  private static final int METHODID_INVITE = 6;
  private static final int METHODID_INVITATION_STATUS = 7;
  private static final int METHODID_GET_OBERON_KEY = 8;
  private static final int METHODID_GET_EVENT_TOKEN = 9;

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
              (trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.CreateEcosystemResponse>)
                  responseObserver);
          break;
        case METHODID_UPDATE_ECOSYSTEM:
          serviceImpl.updateEcosystem(
              (trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.UpdateEcosystemResponse>)
                  responseObserver);
          break;
        case METHODID_ADD_WEBHOOK:
          serviceImpl.addWebhook(
              (trinsic.services.common.v1.ProviderOuterClass.AddWebhookRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.AddWebhookResponse>)
                  responseObserver);
          break;
        case METHODID_DELETE_WEBHOOK:
          serviceImpl.deleteWebhook(
              (trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.DeleteWebhookResponse>)
                  responseObserver);
          break;
        case METHODID_INFO:
          serviceImpl.info(
              (trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.EcosystemInfoResponse>)
                  responseObserver);
          break;
        case METHODID_GENERATE_TOKEN:
          serviceImpl.generateToken(
              (trinsic.services.common.v1.ProviderOuterClass.GenerateTokenRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.GenerateTokenResponse>)
                  responseObserver);
          break;
        case METHODID_INVITE:
          serviceImpl.invite(
              (trinsic.services.common.v1.ProviderOuterClass.InviteRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.InviteResponse>)
                  responseObserver);
          break;
        case METHODID_INVITATION_STATUS:
          serviceImpl.invitationStatus(
              (trinsic.services.common.v1.ProviderOuterClass.InvitationStatusRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.InvitationStatusResponse>)
                  responseObserver);
          break;
        case METHODID_GET_OBERON_KEY:
          serviceImpl.getOberonKey(
              (trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.GetOberonKeyResponse>)
                  responseObserver);
          break;
        case METHODID_GET_EVENT_TOKEN:
          serviceImpl.getEventToken(
              (trinsic.services.common.v1.ProviderOuterClass.GetEventTokenRequest) request,
              (io.grpc.stub.StreamObserver<
                      trinsic.services.common.v1.ProviderOuterClass.GetEventTokenResponse>)
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
      return trinsic.services.common.v1.ProviderOuterClass.getDescriptor();
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
                      .addMethod(getAddWebhookMethod())
                      .addMethod(getDeleteWebhookMethod())
                      .addMethod(getInfoMethod())
                      .addMethod(getGenerateTokenMethod())
                      .addMethod(getInviteMethod())
                      .addMethod(getInvitationStatusMethod())
                      .addMethod(getGetOberonKeyMethod())
                      .addMethod(getGetEventTokenMethod())
                      .build();
        }
      }
    }
    return result;
  }
}
