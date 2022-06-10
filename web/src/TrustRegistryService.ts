import ServiceBase from "./ServiceBase";
import {
  AddFrameworkRequest,
  AddFrameworkResponse,
  FetchDataRequest,
  FetchDataResponse,
  GetMembershipStatusRequest,
  GetMembershipStatusResponse,
  RegisterMemberRequest,
  RegisterMemberResponse,
  RemoveFrameworkRequest,
  RemoveFrameworkResponse,
  SearchRegistryRequest,
  SearchRegistryResponse,
  ServiceOptions,
  TrustRegistryDefinition,
  UnregisterMemberRequest,
  UnregisterMemberResponse,
} from "./proto";

import type { Client as BrowserClient } from "nice-grpc-web";

export class TrustRegistryService extends ServiceBase {
  client: BrowserClient<typeof TrustRegistryDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(TrustRegistryDefinition);
  }

  public async registerMember(
    request: RegisterMemberRequest
  ): Promise<RegisterMemberResponse> {
    return this.client.registerMember(request, {
      metadata: await this.getMetadata(
        RegisterMemberRequest.encode(request).finish()
      ),
    });
  }

  public async unregisterMember(
    request: UnregisterMemberRequest
  ): Promise<UnregisterMemberResponse> {
    return this.client.unregisterMember(request, {
      metadata: await this.getMetadata(
        UnregisterMemberRequest.encode(request).finish()
      ),
    });
  }

  public async getMembershipStatus(
    request: GetMembershipStatusRequest
  ): Promise<GetMembershipStatusResponse> {
    return this.client.getMembershipStatus(request, {
      metadata: await this.getMetadata(
        GetMembershipStatusRequest.encode(request).finish()
      ),
    });
  }

  public async searchRegistry(
    request: SearchRegistryRequest = SearchRegistryRequest.fromPartial({
      query: "SELECT * FROM c OFFSET 0 LIMIT 100",
    })
  ): Promise<SearchRegistryResponse> {
    return this.client.searchRegistry(request, {
      metadata: await this.getMetadata(
        SearchRegistryRequest.encode(request).finish()
      ),
    });
  }

  public async addFramework(
    request: AddFrameworkRequest
  ): Promise<AddFrameworkResponse> {
    return this.client.addFramework(request, {
      metadata: await this.getMetadata(
        AddFrameworkRequest.encode(request).finish()
      ),
    });
  }

  public async removeFramework(
    request: RemoveFrameworkRequest
  ): Promise<RemoveFrameworkResponse> {
    return this.client.removeFramework(request, {
      metadata: await this.getMetadata(
        RemoveFrameworkRequest.encode(request).finish()
      ),
    });
  }

  public async fetchData(
    request: FetchDataRequest
  ): Promise<AsyncIterable<FetchDataResponse>> {
    return this.client.fetchData(request, {
      metadata: await this.getMetadata(
        FetchDataRequest.encode(request).finish()
      ),
    });
  }
}