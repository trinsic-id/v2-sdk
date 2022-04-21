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
  ServiceOptions,
} from "./proto";

export class TemplateService extends ServiceBase {
  client: CredentialTemplatesClient;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = new CredentialTemplatesClient(this.address);
  }

  public createCredentialTemplate(
    request: CreateCredentialTemplateRequest
  ): Promise<CreateCredentialTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.create(request, metadata, (error, response) => {
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

  public getCredentialTemplate(
    request: GetCredentialTemplateRequest
  ): Promise<GetCredentialTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.get(request, metadata, (error, response) => {
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

  public searchCredentialTemplate(
    request: SearchCredentialTemplatesRequest
  ): Promise<SearchCredentialTemplatesResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.search(request, metadata, (error, response) => {
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

  public listCredentialTemplate(
    request: ListCredentialTemplatesRequest
  ): Promise<ListCredentialTemplatesResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.list(request, metadata, (error, response) => {
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

  public deleteCredentialTemplate(
    request: DeleteCredentialTemplateRequest
  ): Promise<DeleteCredentialTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.delete(request, metadata, (error, response) => {
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
