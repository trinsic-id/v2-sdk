package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.v1.Options
import trinsic.services.common.v1.Common
import trinsic.services.verifiablecredentials.v1.VerifiableCredentialGrpcKt
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials.*
import java.util.concurrent.ExecutionException

class CredentialsServiceKt(
    options: Options.ServiceOptions?
) : ServiceBase(options) {
    var stub = VerifiableCredentialGrpcKt.VerifiableCredentialCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun issueCredential(request: IssueRequest): IssueResponse {
        require(!request.documentJson.isBlank()) { "document json must not be empty" }
        return withMetadata(stub, request).issue(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun issueCredentialFromTemplate(request: IssueFromTemplateRequest): IssueFromTemplateResponse {
        return withMetadata(stub, request).issueFromTemplate(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkStatus(request: CheckStatusRequest): CheckStatusResponse {
        return withMetadata(stub, request).checkStatus(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun updateStatus(request: UpdateStatusRequest): UpdateStatusResponse {
        return withMetadata(stub, request).updateStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun createProof(request: CreateProofRequest): CreateProofResponse {
        return withMetadata(stub, request).createProof(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun verifyProof(request: VerifyProofRequest): VerifyProofResponse {
        return withMetadata(stub, request).verifyProof(request)
    }

    @Throws(
        InvalidProtocolBufferException::class,
        DidException::class,
        ExecutionException::class,
        InterruptedException::class
    )
    suspend fun send(request: SendRequest): SendResponse {
        return withMetadata(stub, request).send(request)
    }
}