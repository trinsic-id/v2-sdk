package trinsic.services.trustregistry.v1;

import static io.grpc.MethodDescriptor.generateFullMethodName;

/**
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.42.1)",
    comments = "Source: services/trust-registry/v1/trust-registry.proto")
@io.grpc.stub.annotations.GrpcGenerated
public final class TrustRegistryGrpc {

  private TrustRegistryGrpc() {}

  public static final String SERVICE_NAME = "services.trustregistry.v1.TrustRegistry";

  // Static method descriptors that strictly reflect the proto.
  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> getAddFrameworkMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "AddFramework",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> getAddFrameworkMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> getAddFrameworkMethod;
    if ((getAddFrameworkMethod = TrustRegistryGrpc.getAddFrameworkMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getAddFrameworkMethod = TrustRegistryGrpc.getAddFrameworkMethod) == null) {
          TrustRegistryGrpc.getAddFrameworkMethod = getAddFrameworkMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "AddFramework"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("AddFramework"))
              .build();
        }
      }
    }
    return getAddFrameworkMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> getRemoveFrameworkMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RemoveFramework",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> getRemoveFrameworkMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> getRemoveFrameworkMethod;
    if ((getRemoveFrameworkMethod = TrustRegistryGrpc.getRemoveFrameworkMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getRemoveFrameworkMethod = TrustRegistryGrpc.getRemoveFrameworkMethod) == null) {
          TrustRegistryGrpc.getRemoveFrameworkMethod = getRemoveFrameworkMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RemoveFramework"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("RemoveFramework"))
              .build();
        }
      }
    }
    return getRemoveFrameworkMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> getSearchRegistryMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "SearchRegistry",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> getSearchRegistryMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> getSearchRegistryMethod;
    if ((getSearchRegistryMethod = TrustRegistryGrpc.getSearchRegistryMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getSearchRegistryMethod = TrustRegistryGrpc.getSearchRegistryMethod) == null) {
          TrustRegistryGrpc.getSearchRegistryMethod = getSearchRegistryMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "SearchRegistry"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("SearchRegistry"))
              .build();
        }
      }
    }
    return getSearchRegistryMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> getRegisterIssuerMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RegisterIssuer",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> getRegisterIssuerMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> getRegisterIssuerMethod;
    if ((getRegisterIssuerMethod = TrustRegistryGrpc.getRegisterIssuerMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getRegisterIssuerMethod = TrustRegistryGrpc.getRegisterIssuerMethod) == null) {
          TrustRegistryGrpc.getRegisterIssuerMethod = getRegisterIssuerMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RegisterIssuer"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("RegisterIssuer"))
              .build();
        }
      }
    }
    return getRegisterIssuerMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> getRegisterVerifierMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "RegisterVerifier",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> getRegisterVerifierMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> getRegisterVerifierMethod;
    if ((getRegisterVerifierMethod = TrustRegistryGrpc.getRegisterVerifierMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getRegisterVerifierMethod = TrustRegistryGrpc.getRegisterVerifierMethod) == null) {
          TrustRegistryGrpc.getRegisterVerifierMethod = getRegisterVerifierMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "RegisterVerifier"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("RegisterVerifier"))
              .build();
        }
      }
    }
    return getRegisterVerifierMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> getUnregisterIssuerMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UnregisterIssuer",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> getUnregisterIssuerMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> getUnregisterIssuerMethod;
    if ((getUnregisterIssuerMethod = TrustRegistryGrpc.getUnregisterIssuerMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getUnregisterIssuerMethod = TrustRegistryGrpc.getUnregisterIssuerMethod) == null) {
          TrustRegistryGrpc.getUnregisterIssuerMethod = getUnregisterIssuerMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UnregisterIssuer"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("UnregisterIssuer"))
              .build();
        }
      }
    }
    return getUnregisterIssuerMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> getUnregisterVerifierMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "UnregisterVerifier",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> getUnregisterVerifierMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> getUnregisterVerifierMethod;
    if ((getUnregisterVerifierMethod = TrustRegistryGrpc.getUnregisterVerifierMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getUnregisterVerifierMethod = TrustRegistryGrpc.getUnregisterVerifierMethod) == null) {
          TrustRegistryGrpc.getUnregisterVerifierMethod = getUnregisterVerifierMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "UnregisterVerifier"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("UnregisterVerifier"))
              .build();
        }
      }
    }
    return getUnregisterVerifierMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> getCheckIssuerStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CheckIssuerStatus",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> getCheckIssuerStatusMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> getCheckIssuerStatusMethod;
    if ((getCheckIssuerStatusMethod = TrustRegistryGrpc.getCheckIssuerStatusMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getCheckIssuerStatusMethod = TrustRegistryGrpc.getCheckIssuerStatusMethod) == null) {
          TrustRegistryGrpc.getCheckIssuerStatusMethod = getCheckIssuerStatusMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CheckIssuerStatus"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("CheckIssuerStatus"))
              .build();
        }
      }
    }
    return getCheckIssuerStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> getCheckVerifierStatusMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "CheckVerifierStatus",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.UNARY)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> getCheckVerifierStatusMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> getCheckVerifierStatusMethod;
    if ((getCheckVerifierStatusMethod = TrustRegistryGrpc.getCheckVerifierStatusMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getCheckVerifierStatusMethod = TrustRegistryGrpc.getCheckVerifierStatusMethod) == null) {
          TrustRegistryGrpc.getCheckVerifierStatusMethod = getCheckVerifierStatusMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "CheckVerifierStatus"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("CheckVerifierStatus"))
              .build();
        }
      }
    }
    return getCheckVerifierStatusMethod;
  }

  private static volatile io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> getFetchDataMethod;

  @io.grpc.stub.annotations.RpcMethod(
      fullMethodName = SERVICE_NAME + '/' + "FetchData",
      requestType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest.class,
      responseType = trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse.class,
      methodType = io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
  public static io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest,
      trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> getFetchDataMethod() {
    io.grpc.MethodDescriptor<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> getFetchDataMethod;
    if ((getFetchDataMethod = TrustRegistryGrpc.getFetchDataMethod) == null) {
      synchronized (TrustRegistryGrpc.class) {
        if ((getFetchDataMethod = TrustRegistryGrpc.getFetchDataMethod) == null) {
          TrustRegistryGrpc.getFetchDataMethod = getFetchDataMethod =
              io.grpc.MethodDescriptor.<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest, trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
              .setFullMethodName(generateFullMethodName(SERVICE_NAME, "FetchData"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse.getDefaultInstance()))
              .setSchemaDescriptor(new TrustRegistryMethodDescriptorSupplier("FetchData"))
              .build();
        }
      }
    }
    return getFetchDataMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static TrustRegistryStub newStub(io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<TrustRegistryStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<TrustRegistryStub>() {
        @java.lang.Override
        public TrustRegistryStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new TrustRegistryStub(channel, callOptions);
        }
      };
    return TrustRegistryStub.newStub(factory, channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static TrustRegistryBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<TrustRegistryBlockingStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<TrustRegistryBlockingStub>() {
        @java.lang.Override
        public TrustRegistryBlockingStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new TrustRegistryBlockingStub(channel, callOptions);
        }
      };
    return TrustRegistryBlockingStub.newStub(factory, channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static TrustRegistryFutureStub newFutureStub(
      io.grpc.Channel channel) {
    io.grpc.stub.AbstractStub.StubFactory<TrustRegistryFutureStub> factory =
      new io.grpc.stub.AbstractStub.StubFactory<TrustRegistryFutureStub>() {
        @java.lang.Override
        public TrustRegistryFutureStub newStub(io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
          return new TrustRegistryFutureStub(channel, callOptions);
        }
      };
    return TrustRegistryFutureStub.newStub(factory, channel);
  }

  /**
   */
  public static abstract class TrustRegistryImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public void addFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getAddFrameworkMethod(), responseObserver);
    }

    /**
     */
    public void removeFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRemoveFrameworkMethod(), responseObserver);
    }

    /**
     */
    public void searchRegistry(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getSearchRegistryMethod(), responseObserver);
    }

    /**
     * <pre>
     * Registers an authoritative issuer with a credential template
     * </pre>
     */
    public void registerIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRegisterIssuerMethod(), responseObserver);
    }

    /**
     * <pre>
     * Registers an authoritative verifier with a credential template
     * </pre>
     */
    public void registerVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getRegisterVerifierMethod(), responseObserver);
    }

    /**
     * <pre>
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public void unregisterIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUnregisterIssuerMethod(), responseObserver);
    }

    /**
     * <pre>
     * Removes an authoritative verifier with a presentation template from the trust registry
     * </pre>
     */
    public void unregisterVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getUnregisterVerifierMethod(), responseObserver);
    }

    /**
     */
    public void checkIssuerStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCheckIssuerStatusMethod(), responseObserver);
    }

    /**
     */
    public void checkVerifierStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getCheckVerifierStatusMethod(), responseObserver);
    }

    /**
     */
    public void fetchData(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> responseObserver) {
      io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall(getFetchDataMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getAddFrameworkMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse>(
                  this, METHODID_ADD_FRAMEWORK)))
          .addMethod(
            getRemoveFrameworkMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse>(
                  this, METHODID_REMOVE_FRAMEWORK)))
          .addMethod(
            getSearchRegistryMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse>(
                  this, METHODID_SEARCH_REGISTRY)))
          .addMethod(
            getRegisterIssuerMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse>(
                  this, METHODID_REGISTER_ISSUER)))
          .addMethod(
            getRegisterVerifierMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse>(
                  this, METHODID_REGISTER_VERIFIER)))
          .addMethod(
            getUnregisterIssuerMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse>(
                  this, METHODID_UNREGISTER_ISSUER)))
          .addMethod(
            getUnregisterVerifierMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse>(
                  this, METHODID_UNREGISTER_VERIFIER)))
          .addMethod(
            getCheckIssuerStatusMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse>(
                  this, METHODID_CHECK_ISSUER_STATUS)))
          .addMethod(
            getCheckVerifierStatusMethod(),
            io.grpc.stub.ServerCalls.asyncUnaryCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse>(
                  this, METHODID_CHECK_VERIFIER_STATUS)))
          .addMethod(
            getFetchDataMethod(),
            io.grpc.stub.ServerCalls.asyncServerStreamingCall(
              new MethodHandlers<
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest,
                trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse>(
                  this, METHODID_FETCH_DATA)))
          .build();
    }
  }

  /**
   */
  public static final class TrustRegistryStub extends io.grpc.stub.AbstractAsyncStub<TrustRegistryStub> {
    private TrustRegistryStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected TrustRegistryStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new TrustRegistryStub(channel, callOptions);
    }

    /**
     * <pre>
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public void addFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getAddFrameworkMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void removeFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRemoveFrameworkMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void searchRegistry(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getSearchRegistryMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Registers an authoritative issuer with a credential template
     * </pre>
     */
    public void registerIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRegisterIssuerMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Registers an authoritative verifier with a credential template
     * </pre>
     */
    public void registerVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getRegisterVerifierMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public void unregisterIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUnregisterIssuerMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * Removes an authoritative verifier with a presentation template from the trust registry
     * </pre>
     */
    public void unregisterVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getUnregisterVerifierMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void checkIssuerStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCheckIssuerStatusMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void checkVerifierStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncUnaryCall(
          getChannel().newCall(getCheckVerifierStatusMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void fetchData(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest request,
        io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> responseObserver) {
      io.grpc.stub.ClientCalls.asyncServerStreamingCall(
          getChannel().newCall(getFetchDataMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class TrustRegistryBlockingStub extends io.grpc.stub.AbstractBlockingStub<TrustRegistryBlockingStub> {
    private TrustRegistryBlockingStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected TrustRegistryBlockingStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new TrustRegistryBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse addFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getAddFrameworkMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse removeFramework(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRemoveFrameworkMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse searchRegistry(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getSearchRegistryMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Registers an authoritative issuer with a credential template
     * </pre>
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse registerIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRegisterIssuerMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Registers an authoritative verifier with a credential template
     * </pre>
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse registerVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getRegisterVerifierMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse unregisterIssuer(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUnregisterIssuerMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * Removes an authoritative verifier with a presentation template from the trust registry
     * </pre>
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse unregisterVerifier(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getUnregisterVerifierMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse checkIssuerStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCheckIssuerStatusMethod(), getCallOptions(), request);
    }

    /**
     */
    public trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse checkVerifierStatus(trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request) {
      return io.grpc.stub.ClientCalls.blockingUnaryCall(
          getChannel(), getCheckVerifierStatusMethod(), getCallOptions(), request);
    }

    /**
     */
    public java.util.Iterator<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse> fetchData(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest request) {
      return io.grpc.stub.ClientCalls.blockingServerStreamingCall(
          getChannel(), getFetchDataMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class TrustRegistryFutureStub extends io.grpc.stub.AbstractFutureStub<TrustRegistryFutureStub> {
    private TrustRegistryFutureStub(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected TrustRegistryFutureStub build(
        io.grpc.Channel channel, io.grpc.CallOptions callOptions) {
      return new TrustRegistryFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     * Adds a trust registry defintion to the ecosystem
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse> addFramework(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getAddFrameworkMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse> removeFramework(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRemoveFrameworkMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse> searchRegistry(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getSearchRegistryMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Registers an authoritative issuer with a credential template
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse> registerIssuer(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRegisterIssuerMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Registers an authoritative verifier with a credential template
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse> registerVerifier(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getRegisterVerifierMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Removes an authoritative issuer with a credential template from the trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse> unregisterIssuer(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUnregisterIssuerMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * Removes an authoritative verifier with a presentation template from the trust registry
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse> unregisterVerifier(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getUnregisterVerifierMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse> checkIssuerStatus(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCheckIssuerStatusMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse> checkVerifierStatus(
        trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest request) {
      return io.grpc.stub.ClientCalls.futureUnaryCall(
          getChannel().newCall(getCheckVerifierStatusMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ADD_FRAMEWORK = 0;
  private static final int METHODID_REMOVE_FRAMEWORK = 1;
  private static final int METHODID_SEARCH_REGISTRY = 2;
  private static final int METHODID_REGISTER_ISSUER = 3;
  private static final int METHODID_REGISTER_VERIFIER = 4;
  private static final int METHODID_UNREGISTER_ISSUER = 5;
  private static final int METHODID_UNREGISTER_VERIFIER = 6;
  private static final int METHODID_CHECK_ISSUER_STATUS = 7;
  private static final int METHODID_CHECK_VERIFIER_STATUS = 8;
  private static final int METHODID_FETCH_DATA = 9;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final TrustRegistryImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(TrustRegistryImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_ADD_FRAMEWORK:
          serviceImpl.addFramework((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.AddFrameworkResponse>) responseObserver);
          break;
        case METHODID_REMOVE_FRAMEWORK:
          serviceImpl.removeFramework((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RemoveFrameworkResponse>) responseObserver);
          break;
        case METHODID_SEARCH_REGISTRY:
          serviceImpl.searchRegistry((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.SearchRegistryResponse>) responseObserver);
          break;
        case METHODID_REGISTER_ISSUER:
          serviceImpl.registerIssuer((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterIssuerResponse>) responseObserver);
          break;
        case METHODID_REGISTER_VERIFIER:
          serviceImpl.registerVerifier((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.RegisterVerifierResponse>) responseObserver);
          break;
        case METHODID_UNREGISTER_ISSUER:
          serviceImpl.unregisterIssuer((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterIssuerResponse>) responseObserver);
          break;
        case METHODID_UNREGISTER_VERIFIER:
          serviceImpl.unregisterVerifier((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.UnregisterVerifierResponse>) responseObserver);
          break;
        case METHODID_CHECK_ISSUER_STATUS:
          serviceImpl.checkIssuerStatus((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckIssuerStatusResponse>) responseObserver);
          break;
        case METHODID_CHECK_VERIFIER_STATUS:
          serviceImpl.checkVerifierStatus((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.CheckVerifierStatusResponse>) responseObserver);
          break;
        case METHODID_FETCH_DATA:
          serviceImpl.fetchData((trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataRequest) request,
              (io.grpc.stub.StreamObserver<trinsic.services.trustregistry.v1.TrustRegistryOuterClass.FetchDataResponse>) responseObserver);
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

  private static abstract class TrustRegistryBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    TrustRegistryBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return trinsic.services.trustregistry.v1.TrustRegistryOuterClass.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("TrustRegistry");
    }
  }

  private static final class TrustRegistryFileDescriptorSupplier
      extends TrustRegistryBaseDescriptorSupplier {
    TrustRegistryFileDescriptorSupplier() {}
  }

  private static final class TrustRegistryMethodDescriptorSupplier
      extends TrustRegistryBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    TrustRegistryMethodDescriptorSupplier(String methodName) {
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
      synchronized (TrustRegistryGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new TrustRegistryFileDescriptorSupplier())
              .addMethod(getAddFrameworkMethod())
              .addMethod(getRemoveFrameworkMethod())
              .addMethod(getSearchRegistryMethod())
              .addMethod(getRegisterIssuerMethod())
              .addMethod(getRegisterVerifierMethod())
              .addMethod(getUnregisterIssuerMethod())
              .addMethod(getUnregisterVerifierMethod())
              .addMethod(getCheckIssuerStatusMethod())
              .addMethod(getCheckVerifierStatusMethod())
              .addMethod(getFetchDataMethod())
              .build();
        }
      }
    }
    return result;
  }
}
