import { credentials as ChannelCredentials, Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { TrustRegistryClient } from "./proto";
import {
  AddFrameworkRequest,
  AddFrameworkResponse,
  CheckIssuerStatusRequest,
  CheckIssuerStatusResponse,
  CheckVerifierStatusRequest,
  CheckVerifierStatusResponse,
  RegisterIssuerRequest,
  RegisterIssuerResponse,
  RegisterVerifierRequest,
  RegisterVerifierResponse,
  RemoveFrameworkRequest,
  RemoveFrameworkResponse,
  SearchRegistryRequest,
  SearchRegistryResponse,
  UnregisterIssuerRequest,
  UnregisterIssuerResponse,
  UnregisterVerifierRequest,
  UnregisterVerifierResponse,
} from "./proto";

export class TrustRegistryService extends ServiceBase {
  channel: Channel;
  client: TrustRegistryClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    let credentials = ChannelCredentials.createInsecure();
    let channel = new Channel(serviceAddress, credentials, {});
    this.channel = channel;
    this.client = new TrustRegistryClient(serviceAddress, credentials);
  }

  setChannel(channel: Channel) {
    this.channel = channel;
    this.client = new TrustRegistryClient(channel.getTarget(), ChannelCredentials.createInsecure());
  }

  public registerIssuer(request: RegisterIssuerRequest): Promise<RegisterIssuerResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.registerIssuer(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public registerVerifier(request: RegisterVerifierRequest): Promise<RegisterVerifierResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.registerVerifier(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public unregisterIssuer(request: UnregisterIssuerRequest): Promise<UnregisterIssuerResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.unregisterIssuer(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public unregisterVerifier(request: UnregisterVerifierRequest): Promise<UnregisterVerifierResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.unregisterVerifier(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public checkIssuer(request: CheckIssuerStatusRequest): Promise<CheckIssuerStatusResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.checkIssuerStatus(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public checkVerifier(request: CheckVerifierStatusRequest): Promise<CheckVerifierStatusResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.checkVerifierStatus(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public search(query: string = "SELECT * FROM c"): Promise<SearchRegistryResponse> {
    return new Promise(async (resolve, reject) => {
      const request = new SearchRegistryRequest().setQuery(query);
      this.client.searchRegistry(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public addGovernanceFramework(request: AddFrameworkRequest): Promise<AddFrameworkResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.addFramework(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public removeGovernanceFramework(request: RemoveFrameworkRequest): Promise<RemoveFrameworkResponse> {
    return new Promise(async (resolve, reject) => {
      this.client.removeFramework(request, await this.getMetadata(request), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }
}
