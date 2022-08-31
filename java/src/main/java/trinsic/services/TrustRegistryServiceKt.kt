package trinsic.services

import com.google.protobuf.InvalidProtocolBufferException
import trinsic.okapi.DidException
import trinsic.sdk.options.v1.Options
import trinsic.services.trustregistry.v1.*
import trinsic.services.trustregistry.v1.TrustRegistryGrpcKt

class TrustRegistryServiceKt(options: Options.ServiceOptions.Builder?) : ServiceBase(options) {
  var stub = TrustRegistryGrpcKt.TrustRegistryCoroutineStub(this.channel)

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun searchRegistry(): SearchRegistryResponse {
    return search(SearchRegistryRequest.getDefaultInstance())
  }

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun search(request: SearchRegistryRequest): SearchRegistryResponse {
    var request2 = request
    if (request2.query.isBlank())
        request2 =
            SearchRegistryRequest.newBuilder(request2)
                .setQuery("SELECT * FROM c OFFSET 0 LIMIT 100")
                .build()
    return withMetadata(stub, request2).searchRegistry(request2)
  }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: C:\work\sdk\java\src\main\java\trinsic\services\TrustRegistryServiceKt.kt

  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun addFramework(request: AddFrameworkRequest): AddFrameworkResponse {
	 /**  Add a governance framework to the ecosystem
*/
    // TODO - Support metadata anonymous
    return withMetadata(stub, request).addFramework(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun removeFramework(request: RemoveFrameworkRequest): RemoveFrameworkResponse {
	 /**  Remove a governance framework from the ecosystem
*/
    // TODO - Support metadata anonymous
    return withMetadata(stub, request).removeFramework(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun searchRegistry(request: SearchRegistryRequest): SearchRegistryResponse {
	 /**  Search the ecosystem's governance frameworks
*/
    // TODO - Support metadata anonymous
    return withMetadata(stub, request).searchRegistry(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun registerMember(request: RegisterMemberRequest): RegisterMemberResponse {
	 /**  Register an authoritative issuer for a credential schema
*/
    // TODO - Support metadata anonymous
    return withMetadata(stub, request).registerMember(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun unregisterMember(request: UnregisterMemberRequest): UnregisterMemberResponse {
	 /**  Removes an authoritative issuer for a credential schema from the trust registry
*/
    // TODO - Support metadata anonymous
    return withMetadata(stub, request).unregisterMember(request)
  }
  @Throws(InvalidProtocolBufferException::class, DidException::class)
  suspend fun getMembershipStatus(request: GetMembershipStatusRequest): GetMembershipStatusResponse {
	 /**  Fetch the membership status of an issuer for a given credential schema in a trust registry
*/
    // TODO - Support metadata anonymous
    return withMetadata(stub, request).getMembershipStatus(request)
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
