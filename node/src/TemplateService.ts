import ServiceBase from "./ServiceBase";
import {
    CreateCredentialTemplateRequest,
    CreateCredentialTemplateResponse,
    CredentialTemplatesClient,
    DeleteCredentialTemplateRequest,
    DeleteCredentialTemplateResponse,
    GetCredentialTemplateRequest,
    GetCredentialTemplateResponse,
    ListCredentialTemplatesRequest,
    ListCredentialTemplatesResponse,
    SearchCredentialTemplatesRequest,
    SearchCredentialTemplatesResponse,
    ServiceOptions
} from "./proto";

export class TemplateService extends ServiceBase {
    client: CredentialTemplatesClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new CredentialTemplatesClient(this.address, this.channelCredentials);
    }

    public createCredentialTemplate(
        request: CreateCredentialTemplateRequest
    ): Promise<CreateCredentialTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.create(
                request,
                await this.getMetadata(request, CreateCredentialTemplateRequest),
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

    public getCredentialTemplate(request: GetCredentialTemplateRequest): Promise<GetCredentialTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.get(request, await this.getMetadata(request, GetCredentialTemplateRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public searchCredentialTemplate(request: SearchCredentialTemplatesRequest): Promise<SearchCredentialTemplatesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.search(request, await this.getMetadata(request, SearchCredentialTemplatesRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public listCredentialTemplate(request: ListCredentialTemplatesRequest): Promise<ListCredentialTemplatesResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.list(request, await this.getMetadata(request, ListCredentialTemplatesRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            })
        })
    }

    public deleteCredentialTemplate(request: DeleteCredentialTemplateRequest): Promise<DeleteCredentialTemplateResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.delete(request, await this.getMetadata(request, DeleteCredentialTemplateRequest), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }
}
