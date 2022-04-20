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
  UniversalWalletClient,
} from "./proto";

export class WalletService extends ServiceBase {
  walletClient: UniversalWalletClient;

  constructor(options?: ServiceOptions) {
    super(options);

    this.walletClient = new UniversalWalletClient(
      this.address,
      this.channelCredentials
    );
  }

  public search(
    request: SearchRequest = new SearchRequest()
  ): Promise<SearchResponse> {
    return new Promise(async (resolve, reject) => {
      if (!request.getQuery())
        request = request.setQuery("SELECT c.id, c.type, c.data FROM c");
      try {
        let metadata = await this.getMetadata(request);
        this.walletClient.search(request, metadata, (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        });
      } catch (e) {
        reject(e);
      }
    });
  }

  public async insertItem(
    request: InsertItemRequest
  ): Promise<InsertItemResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.walletClient.insertItem(request, metadata, (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        });
      } catch (e) {
        reject(e);
      }
    });
  }

  public async getItem(request: GetItemRequest): Promise<GetItemResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.walletClient.getItem(request, metadata, (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        });
      } catch (e) {
        reject(e);
      }
    });
  }

  public deleteItem(request: DeleteItemRequest): Promise<DeleteItemResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.walletClient.deleteItem(request, metadata, (error, response) => {
          if (error) {
            reject(error);
          } else {
            resolve(response);
          }
        });
      } catch (e) {
        reject(e);
      }
    });
  }
}
