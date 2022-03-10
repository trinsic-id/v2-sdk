package trinsic.services

import com.google.gson.Gson
import com.google.protobuf.InvalidProtocolBufferException
import io.grpc.Channel
import trinsic.TrinsicUtilities
import trinsic.okapi.DidException
import trinsic.sdk.v1.Options
import trinsic.services.account.v1.AccountOuterClass
import trinsic.services.common.v1.CommonOuterClass
import trinsic.services.verifiablecredentials.v1.VerifiableCredentialGrpcKt
import trinsic.services.verifiablecredentials.v1.VerifiableCredentials.*

class CredentialsServiceKt(
    options: Options.ServiceOptions?
) : ServiceBase(options) {
    var stub = VerifiableCredentialGrpcKt.VerifiableCredentialCoroutineStub(this.channel)

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun issueCredential(document: HashMap<*, *>?): java.util.HashMap<*, *>? {
        val request = IssueRequest.newBuilder().setDocumentJson(TrinsicUtilities.hashmapToJson(document)).build()
        return Gson().fromJson(withMetadata(stub, request).issue(request).signedDocumentJson, HashMap::class.java)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun issueCredentialFromTemplate(request: IssueFromTemplateRequest): IssueFromTemplateResponse {
        return withMetadata(stub, request).issueFromTemplate(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun createProof(itemId: String?, revealDocument: HashMap<*, *>?): java.util.HashMap<*, *>? {
        val request = CreateProofRequest.newBuilder().setItemId(itemId)
            .setRevealDocumentJson(TrinsicUtilities.hashmapToJson(revealDocument)).build()
        return Gson().fromJson(
            withMetadata(stub, request).createProof(request).proofDocumentJson, HashMap::class.java
        )
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun verifyProof(proofDocument: HashMap<*, *>?): Boolean {
        val request =
            VerifyProofRequest.newBuilder().setProofDocumentJson(TrinsicUtilities.hashmapToJson(proofDocument))
                .build()
        return withMetadata(stub, request).verifyProof(request).isValid
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun checkStatus(credentialStatusId: String?): CheckStatusResponse {
        val request = CheckStatusRequest.newBuilder().setCredentialStatusId(credentialStatusId).build()
        return withMetadata(stub, request).checkStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun updateStatus(credentialStatusId: String?, revoked: Boolean?): UpdateStatusResponse {
        val request = UpdateStatusRequest.newBuilder().setCredentialStatusId(credentialStatusId).setRevoked(
            revoked!!
        ).build()
        return withMetadata(stub, request).updateStatus(request)
    }

    @Throws(InvalidProtocolBufferException::class, DidException::class)
    suspend fun send(document: HashMap<*, *>?, email: String?): SendResponse {
        val request =
            SendRequest.newBuilder().setEmail(email).setDocumentJson(TrinsicUtilities.hashmapToJson(document)).build()
        return withMetadata(stub, request).send(request)
    }
}