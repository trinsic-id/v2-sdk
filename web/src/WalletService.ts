import ServiceBase from "./ServiceBase";
import {
  DeleteItemRequest,
  DeleteItemResponse,
  GetItemRequest,
  GetItemResponse,
  InsertItemRequest,
  InsertItemResponse,
  SearchRequest,
  SearchResponse,
  ServiceOptions,
  UniversalWalletDefinition,
} from "./proto";

import type {Client as BrowserClient} from "nice-grpc-web";


export class WalletService extends ServiceBase {
  client: BrowserClient<typeof UniversalWalletDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(UniversalWalletDefinition);
  }

  public async search(
    request: SearchRequest = SearchRequest.fromPartial({
      query: "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100",
    })
  ): Promise<SearchResponse> {
    return this.client.search(request, {
      metadata: await this.getMetadata(SearchRequest.encode(request).finish()),
    });
  }

  public async insertItem(
    request: InsertItemRequest
  ): Promise<InsertItemResponse> {
    return this.client.insertItem(request, {
      metadata: await this.getMetadata(
        InsertItemRequest.encode(request).finish()
      ),
    });
  }

  public async getItem(request: GetItemRequest): Promise<GetItemResponse> {
    return this.client.getItem(request, {
      metadata: await this.getMetadata(GetItemRequest.encode(request).finish()),
    });
  }

  public async deleteItem(
    request: DeleteItemRequest
  ): Promise<DeleteItemResponse> {
    return this.client.deleteItem(request, {
      metadata: await this.getMetadata(
        DeleteItemRequest.encode(request).finish()
      ),
    });
  }
}
