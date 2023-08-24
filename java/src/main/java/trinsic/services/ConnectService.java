package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import trinsic.sdk.options.v1.Options;
import trinsic.services.connect.v1.*;

public class ConnectService extends ServiceBase {
  private final ConnectGrpc.ConnectFutureStub stub;

  public ConnectService() {
    this(null);
  }

  public ConnectService(Options.TrinsicOptions.Builder options) {
    super(options);

    this.stub = ConnectGrpc.newFutureStub(this.getChannel());
  }
  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target: /home/runner/work/sdk/sdk/java/src/main/java/trinsic/services/ConnectService.java

  /** Create an IDVSession */
  public ListenableFuture<CreateSessionResponse2> createSession(CreateSessionRequest request)
      throws InvalidProtocolBufferException {

    return withMetadata(stub, request).createSession(request);
  }
  /** Cancel an IDVSession */
  public ListenableFuture<CancelSessionResponse> cancelSession(CancelSessionRequest request)
      throws InvalidProtocolBufferException {

    return withMetadata(stub, request).cancelSession(request);
  }
  /** Get an IDVSession */
  public ListenableFuture<GetSessionResponse> getSession(GetSessionRequest request)
      throws InvalidProtocolBufferException {

    return withMetadata(stub, request).getSession(request);
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
