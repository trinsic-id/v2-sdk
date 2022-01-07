import ServiceBase, {ServiceOptions} from "./ServiceBase";
import {
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CredentialTemplatesClient,
    GetCredentialTemplateRequest,
    GetCredentialTemplateResponse,
    ListCredentialTemplatesRequest,
    ListCredentialTemplatesResponse,
    SearchCredentialTemplatesRequest,
    SearchCredentialTemplatesResponse,
    VerifiableCredentialClient
} from "./proto";
import {DeleteCredentialTemplateRequest, DeleteCredentialTemplateResponse} from "../lib";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export class TemplateService extends ServiceBase {
    client: CredentialTemplatesClient;
    credentialClient: VerifiableCredentialClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new CredentialTemplatesClient(this.address, this.channelCredentials);
        this.credentialClient = new VerifiableCredentialClient(this.address, this.channelCredentials);
    }

    public createCredentialTemplate(
        request: CreateCredentialTemplateRequest
    ): Promise<CreateCredentialTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.create(
                request,
                await this.getMetadata(request),
                (error, response) => {
                    if (error) {
                        reject(error);
                    }
                    return resolve(response);
                }
            );
        });
    }

    public getCredentialTemplate(request: GetCredentialTemplateRequest): Promise<GetCredentialTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.get(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }

    public searchCredentialTemplate(request: SearchCredentialTemplatesRequest): Promise<SearchCredentialTemplatesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.search(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }

    public listCredentialTemplate(request: ListCredentialTemplatesRequest): Promise<ListCredentialTemplatesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.list(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response)
            })
        })
    }

    public deleteCredentialTemplate(request: DeleteCredentialTemplateRequest): Promise<DeleteCredentialTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.delete(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }
}
