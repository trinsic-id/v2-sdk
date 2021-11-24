import { credentials as ChannelCredentials, Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { CredentialTemplatesClient, ServerConfig } from "./proto";
import {
  CreateCredentialTemplateRequest,
  CreateCredentialTemplateResponse,
  CredentialTemplate,
  DeleteCredentialTemplateRequest,
  DeleteCredentialTemplateResponse,
  GetCredentialTemplateRequest,
  GetCredentialTemplateResponse,
  SearchCredentialTemplatesRequest,
  SearchCredentialTemplatesResponse,
  UpdateCredentialTemplateRequest,
  UpdateCredentialTemplateResponse,
} from "./proto";
import { VerifiableCredentialClient } from "./proto";
import { IssueFromTemplateRequest, IssueResponse, JsonPayload } from "./proto";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export class TemplateService extends ServiceBase {
  client: CredentialTemplatesClient;
  credentialClient: VerifiableCredentialClient;

  constructor(config: ServerConfig = null) {
    super(null, config);

    this.client = new CredentialTemplatesClient(this.address, this.channelCredentials);
    this.credentialClient = new VerifiableCredentialClient(this.address, this.channelCredentials);
  }

  public createCredentialTemplate(
    name: string,
    schema: JSStruct,
    baseUri?: string
  ): Promise<CreateCredentialTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      var jsonSchema = new JsonPayload().setJsonStruct(Struct.fromJavaScript(schema));
      let createCredentialTemplateRequest = new CreateCredentialTemplateRequest()
        .setName(name)
        .setSchema(jsonSchema)
        .setBaseUri(baseUri);

      this.client.create(
        createCredentialTemplateRequest,
        await this.getMetadata(createCredentialTemplateRequest),
        (error, response) => {
          if (error) {
            reject(error);
          }
          return resolve(response);
        }
      );
    });
  }

  public getCredentialTemplate(templateId: string): Promise<CredentialTemplate> {
    return new Promise(async (resolve, reject) => {
      let request = new GetCredentialTemplateRequest().setId(templateId);
      this.client.get(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response.getTemplate());
      });
    });
  }

  public searchCredentialTemplate(query: string = "SELECT * FROM c"): Promise<CredentialTemplate[]> {
    return new Promise(async (resolve, reject) => {
      let request = new SearchCredentialTemplatesRequest().setQuery(query);
      this.client.search(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response?.getTemplatesList());
      });
    });
  }

  public updateCredentialTemplate(
    templateId: string,
    name?: string,
    schema?: JSStruct
  ): Promise<UpdateCredentialTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      let request = new UpdateCredentialTemplateRequest()
        .setId(templateId)
        .setName(name)
        .setSchema(new JsonPayload().setJsonStruct(Struct.fromJavaScript(schema)));

      this.client.update(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public deleteCredentialTemplate(templateId: string): Promise<DeleteCredentialTemplateResponse> {
    return new Promise(async (resolve, reject) => {
      let request = new DeleteCredentialTemplateRequest().setId(templateId);
      this.client.delete(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public issueFromTemplate(templateId: string, attributes: JSStruct): Promise<object> {
    return new Promise(async (resolve, reject) => {
      let jsonPayload = new JsonPayload().setJsonStruct(Struct.fromJavaScript(attributes));
      let request = new IssueFromTemplateRequest().setTemplateid(templateId).setAttributes(jsonPayload);

      this.credentialClient.issueFromTemplate(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response.getDocument().getJsonStruct().toJavaScript());
      });
    });
  }
}
