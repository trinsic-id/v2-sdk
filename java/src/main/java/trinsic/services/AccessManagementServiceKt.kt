package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options
import trinsic.services.provider.v1.*

class AccessManagementServiceKt(options: Options.ServiceOptions.Builder?) : ServiceBase(options) {
  var stub = AccessManagementGrpcKt.AccessManagementCoroutineStub(this.channel)

  // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
  // target:
  // /home/runner/work/sdk/sdk/java/src/main/java/trinsic/services/AccessManagementServiceKt.kt

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun addRoleAssignment(request: AddRoleAssignmentRequest): AddRoleAssignmentResponse {
    /** Adds a role assignment to an account */
    return withMetadata(stub, request).addRoleAssignment(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun removeRoleAssignment(
      request: RemoveRoleAssignmentRequest
  ): RemoveRoleAssignmentResponse {
    /** Removes a role assignment from the account */
    return withMetadata(stub, request).removeRoleAssignment(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun listRoleAssignments(
      request: ListRoleAssignmentsRequest
  ): ListRoleAssignmentsResponse {
    /** List the role assignments for the given account */
    return withMetadata(stub, request).listRoleAssignments(request)
  }
  // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}