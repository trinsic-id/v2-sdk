import ServiceBase from "./ServiceBase";
import {
  CreateCredentialTemplateRequest,
  CreateCredentialTemplateResponse,
  CredentialTemplatesDefinition,
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

import type { Client as BrowserClient } from "nice-grpc-web";

export class TemplateService extends ServiceBase {
  client: BrowserClient<typeof CredentialTemplatesDefinition>;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = this.createClient(CredentialTemplatesDefinition);
  }

  public async createCredentialTemplate(
    request: CreateCredentialTemplateRequest
  ): Promise<CreateCredentialTemplateResponse> {
    return this.client.create(request, {
      metadata: await this.getMetadata(
        CreateCredentialTemplateRequest.encode(request).finish()
      ),
    });
  }

  public async getCredentialTemplate(
    request: GetCredentialTemplateRequest
  ): Promise<GetCredentialTemplateResponse> {
    return this.client.get(request, {
      metadata: await this.getMetadata(
        GetCredentialTemplateRequest.encode(request).finish()
      ),
    });
  }

  public async searchCredentialTemplate(
    request: SearchCredentialTemplatesRequest
  ): Promise<SearchCredentialTemplatesResponse> {
    return this.client.search(request, {
      metadata: await this.getMetadata(
        SearchCredentialTemplatesRequest.encode(request).finish()
      ),
    });
  }

  public async listCredentialTemplate(
    request: ListCredentialTemplatesRequest
  ): Promise<ListCredentialTemplatesResponse> {
    return this.client.list(request, {
      metadata: await this.getMetadata(
        ListCredentialTemplatesRequest.encode(request).finish()
      ),
    });
  }

  public async deleteCredentialTemplate(
    request: DeleteCredentialTemplateRequest
  ): Promise<DeleteCredentialTemplateResponse> {
    return this.client.delete(request, {
      metadata: await this.getMetadata(
        DeleteCredentialTemplateRequest.encode(request).finish()
      ),
    });
  }
}
