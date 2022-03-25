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
    UniversalWalletClient,
    ServiceOptions
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

    // must be authorized
    public search(request: SearchRequest = {query: "", continuationToken: ""}): Promise<SearchResponse> {
        return new Promise(async (resolve, reject) => {
            if (!request.query)
                request.query = "SELECT c.id, c.type, c.data FROM c";
            this.walletClient.search(
                request,
                await this.getMetadata(request, SearchRequest),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                }
            );
        });
    }

    // must be authorized
    public async insertItem(request: InsertItemRequest): Promise<InsertItemResponse> {
        return new Promise(async (resolve, reject) => {
            this.walletClient.insertItem(
                request,
                await this.getMetadata(request, InsertItemRequest),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                }
            );
        });
    }

    // must be authorized
    public async getItem(request: GetItemRequest): Promise<GetItemResponse> {
        return new Promise(async (resolve, reject) => {
            this.walletClient.getItem(
                request,
                await this.getMetadata(request, GetItemRequest),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                }
            );
        });
    }

    public deleteItem(request: DeleteItemRequest): Promise<DeleteItemResponse> {
        return new Promise(async (resolve, reject) => {
            this.walletClient.deleteItem(request, await this.getMetadata(request, DeleteItemRequest),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response);
                    }
                }
            );
        });
    }
}
