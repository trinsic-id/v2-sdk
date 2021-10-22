import { credentials as ChannelCredentials, Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { CredentialTemplatesClient } from "./proto";
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
import { CredentialClient } from "./proto";
import { IssueFromTemplateRequest, IssueResponse, JsonPayload } from "./proto";
import { Struct } from "google-protobuf/google/protobuf/struct_pb";

type JavaScriptValue = string | number | boolean | {} | any[];
type JSStruct = { [key: string]: JavaScriptValue };

export class TemplateService extends ServiceBase {
  channel: Channel;
  client: CredentialTemplatesClient;
  credentialClient: CredentialClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    let credentials = ChannelCredentials.createInsecure();
    let channel = new Channel(serviceAddress, credentials, {});
    this.channel = channel;
    this.client = new CredentialTemplatesClient(serviceAddress, credentials);
    this.credentialClient = new CredentialClient(serviceAddress, credentials);
  }

  public createCredentialTemplate(
    name: string,
    schema: JSStruct,
    baseUri?: string
  ): Promise<CreateCredentialTemplateResponse> {
    return new Promise((resolve, reject) => {
      var jsonSchema = new JsonPayload();
      jsonSchema.setJsonStruct(Struct.fromJavaScript(schema));
      let createCredentialTemplateRequest = new CreateCredentialTemplateRequest();
      createCredentialTemplateRequest.setName(name);
      createCredentialTemplateRequest.setSchema(jsonSchema);
      createCredentialTemplateRequest.setBaseUri(baseUri);

      this.client.create(createCredentialTemplateRequest, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public getCredentialTemplate(templateId: string): Promise<CredentialTemplate> {
    return new Promise((resolve, reject) => {
      let request = new GetCredentialTemplateRequest().setId(templateId);
      this.client.get(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response.getTemplate());
      });
    });
  }

  public searchCredentialTemplate(query: string = "SELECT * FROM c"): Promise<CredentialTemplate[]> {
    return new Promise((resolve, reject) => {
      let request = new SearchCredentialTemplatesRequest().setQuery(query);
      this.client.search(request, this.getMetadata(), (error, response) => {
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
    return new Promise((resolve, reject) => {
      let request = new UpdateCredentialTemplateRequest();
      request.setId(templateId);
      request.setName(name);
      request.setSchema(new JsonPayload().setJsonStruct(Struct.fromJavaScript(schema)));
      this.client.update(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public deleteCredentialTemplate(templateId: string): Promise<DeleteCredentialTemplateResponse> {
    return new Promise((resolve, reject) => {
      let request = new DeleteCredentialTemplateRequest().setId(templateId);
      this.client.delete(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public issueFromTemplate(templateId: string, attributes: JSStruct): Promise<object> {
    return new Promise((resolve, reject) => {
      let jsonPayload = new JsonPayload();
      jsonPayload.setJsonStruct(Struct.fromJavaScript(attributes));
      let request = new IssueFromTemplateRequest();
      request.setTemplateid(templateId);
      request.setAttributes(jsonPayload);

      this.credentialClient.issueFromTemplate(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response.getDocument().getJsonStruct().toJavaScript());
      });
    });
  }
}
