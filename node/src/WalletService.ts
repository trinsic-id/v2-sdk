import {Struct} from "google-protobuf/google/protobuf/struct_pb";
import ServiceBase, {ServiceOptions} from "./ServiceBase";
import {InsertItemRequest, JsonPayload, SearchRequest, SearchResponse, UniversalWalletClient,} from "./proto";

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
    public search(query: string = "SELECT * from c"): Promise<SearchResponse> {
        return new Promise(async (resolve, reject) => {
            let searchRequest = new SearchRequest().setQuery(query);

            this.walletClient.search(
                searchRequest,
                await this.getMetadata(searchRequest),
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
    public insertItem(item: any): Promise<string> {
        var request = new JsonPayload().setJsonStruct(
            Struct.fromJavaScript(item)
        );

        return new Promise(async (resolve, reject) => {
            let itemRequest = new InsertItemRequest().setItem(request);

            this.walletClient.insertItem(
                itemRequest,
                await this.getMetadata(itemRequest),
                (error, response) => {
                    if (error) {
                        reject(error);
                    } else {
                        resolve(response.getItemId());
                    }
                }
            );
        });
    }
}
