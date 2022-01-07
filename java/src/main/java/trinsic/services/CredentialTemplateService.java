package trinsic.services;

import com.google.common.util.concurrent.ListenableFuture;
import com.google.protobuf.InvalidProtocolBufferException;
import io.grpc.Channel;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountOuterClass;
import trinsic.services.common.v1.CommonOuterClass;
import trinsic.services.verifiablecredentials.templates.v1.CredentialTemplatesGrpc;
import trinsic.services.verifiablecredentials.templates.v1.Templates;

public class CredentialTemplateService extends ServiceBase {
    private final CredentialTemplatesGrpc.CredentialTemplatesFutureStub stub;

    public CredentialTemplateService(AccountOuterClass.AccountProfile accountProfile) {
        this(accountProfile, null, null);
    }

    public CredentialTemplateService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig) {
        this(accountProfile, serverConfig, null);
    }

    public CredentialTemplateService(AccountOuterClass.AccountProfile accountProfile, CommonOuterClass.ServerConfig serverConfig, Channel existingChannel) {
        super(accountProfile, serverConfig, existingChannel);

        this.stub = CredentialTemplatesGrpc.newFutureStub(this.getChannel());
    }

    public ListenableFuture<Templates.CreateCredentialTemplateResponse> create(Templates.CreateCredentialTemplateRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).create(request);
    }

    public ListenableFuture<Templates.GetCredentialTemplateResponse> get(Templates.GetCredentialTemplateRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).get(request);
    }

    public ListenableFuture<Templates.ListCredentialTemplatesResponse> list(Templates.ListCredentialTemplatesRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).list(request);
    }

    public ListenableFuture<Templates.SearchCredentialTemplatesResponse> search(Templates.SearchCredentialTemplatesRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).search(request);
    }

    public ListenableFuture<Templates.DeleteCredentialTemplateResponse> delete(Templates.DeleteCredentialTemplateRequest request) throws InvalidProtocolBufferException, DidException {
        return withMetadata(stub, request).delete(request);
    }
}
