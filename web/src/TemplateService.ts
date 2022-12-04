import ServiceBase from "./ServiceBase";
import { CredentialTemplatesDefinition, ServiceOptions } from "./proto";
import * as proto from "./proto";

import type { Client as BrowserClient } from "nice-grpc-web";

export class TemplateService extends ServiceBase {
    client: BrowserClient<typeof CredentialTemplatesDefinition>;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = this.createClient(CredentialTemplatesDefinition);
    }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/web/src/TemplateService.ts

  /** Create a credential template in the current ecosystem */
  public async create(request: proto.CreateCredentialTemplateRequest): Promise<proto.CreateCredentialTemplateResponse> {
    
    return this.client.create(request, {
      metadata: await this.buildMetadata(proto.CreateCredentialTemplateRequest.encode(request).finish())
    });
  }
  /** Fetch a credential template by ID */
  public async get(request: proto.GetCredentialTemplateRequest): Promise<proto.GetCredentialTemplateResponse> {
    
    return this.client.get(request, {
      metadata: await this.buildMetadata(proto.GetCredentialTemplateRequest.encode(request).finish())
    });
  }
  /** Search credential templates using SQL, returning strongly-typed template data */
  public async list(request: proto.ListCredentialTemplatesRequest): Promise<proto.ListCredentialTemplatesResponse> {
    
    return this.client.list(request, {
      metadata: await this.buildMetadata(proto.ListCredentialTemplatesRequest.encode(request).finish())
    });
  }
  /** Search credential templates using SQL, returning raw JSON data */
  public async search(request: proto.SearchCredentialTemplatesRequest): Promise<proto.SearchCredentialTemplatesResponse> {
    
    return this.client.search(request, {
      metadata: await this.buildMetadata(proto.SearchCredentialTemplatesRequest.encode(request).finish())
    });
  }
  /** Delete a credential template from the current ecosystem by ID */
  public async delete(request: proto.DeleteCredentialTemplateRequest): Promise<proto.DeleteCredentialTemplateResponse> {
    
    return this.client.delete(request, {
      metadata: await this.buildMetadata(proto.DeleteCredentialTemplateRequest.encode(request).finish())
    });
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
