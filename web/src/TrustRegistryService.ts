import ServiceBase from "./ServiceBase";
import {
  AddFrameworkRequest,
  AddFrameworkResponse,
  CheckIssuerStatusRequest,
  CheckIssuerStatusResponse,
  CheckVerifierStatusRequest,
  CheckVerifierStatusResponse,
  FetchDataRequest,
  FetchDataResponse,
  RegisterIssuerRequest,
  RegisterIssuerResponse,
  RegisterVerifierRequest,
  RegisterVerifierResponse,
  RemoveFrameworkRequest,
  RemoveFrameworkResponse,
  SearchRegistryRequest,
  SearchRegistryResponse,
  ServiceOptions,
  TrustRegistryDefinition,
  UnregisterIssuerRequest,
  UnregisterIssuerResponse,
  UnregisterVerifierRequest,
  UnregisterVerifierResponse,
} from "./proto";

import type {Client as BrowserClient} from "nice-grpc-web";

export class TrustRegistryService extends ServiceBase {
  client: BrowserClient<typeof TrustRegistryDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(
      TrustRegistryDefinition
    );
  }

  public async registerIssuer(
    request: RegisterIssuerRequest
  ): Promise<RegisterIssuerResponse> {
    return this.client.registerIssuer(request, {
      metadata: await this.getMetadata(
        RegisterIssuerRequest.encode(request).finish()
      ),
    });
  }

  public async registerVerifier(
    request: RegisterVerifierRequest
  ): Promise<RegisterVerifierResponse> {
    return this.client.registerVerifier(request, {
      metadata: await this.getMetadata(
        RegisterVerifierRequest.encode(request).finish()
      ),
    });
  }

  public async unregisterIssuer(
    request: UnregisterIssuerRequest
  ): Promise<UnregisterIssuerResponse> {
    return this.client.unregisterIssuer(request, {
      metadata: await this.getMetadata(
        UnregisterIssuerRequest.encode(request).finish()
      ),
    });
  }

  public async unregisterVerifier(
    request: UnregisterVerifierRequest
  ): Promise<UnregisterVerifierResponse> {
    return this.client.unregisterVerifier(request, {
      metadata: await this.getMetadata(
        UnregisterVerifierRequest.encode(request).finish()
      ),
    });
  }

  public async checkIssuerStatus(
    request: CheckIssuerStatusRequest
  ): Promise<CheckIssuerStatusResponse> {
    return this.client.checkIssuerStatus(request, {
      metadata: await this.getMetadata(
        CheckIssuerStatusRequest.encode(request).finish()
      ),
    });
  }

  public async checkVerifierStatus(
    request: CheckVerifierStatusRequest
  ): Promise<CheckVerifierStatusResponse> {
    return this.client.checkVerifierStatus(request, {
      metadata: await this.getMetadata(
        CheckVerifierStatusRequest.encode(request).finish()
      ),
    });
  }

  public async searchRegistry(
    request: SearchRegistryRequest = SearchRegistryRequest.fromPartial({query: "SELECT * FROM c OFFSET 0 LIMIT 100"})
  ): Promise<SearchRegistryResponse> {
    return this.client.searchRegistry(request, {
      metadata: await this.getMetadata(
        SearchRegistryRequest.encode(request).finish()
      ),
    });
  }

  public async addGovernanceFramework(
    request: AddFrameworkRequest
  ): Promise<AddFrameworkResponse> {
    return this.client.addFramework(request, {
      metadata: await this.getMetadata(
        AddFrameworkRequest.encode(request).finish()
      ),
    });
  }

  public async removeGovernanceFramework(
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
