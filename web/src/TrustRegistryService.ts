import ServiceBase from "./ServiceBase";
import { TrustRegistryClient } from "./proto/TrustRegistryServiceClientPb";
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
} from "./proto/TrustRegistry_pb";

export class TrustRegistryService extends ServiceBase {
  client: TrustRegistryClient;

  constructor(serviceAddress: string = "localhost:5000") {
    super();

    this.client = new TrustRegistryClient(serviceAddress, null, null);
  }

  public registerIssuer(request: RegisterIssuerRequest): Promise<RegisterIssuerResponse> {
    return new Promise((resolve, reject) => {
      this.client.registerIssuer(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public registerVerifier(request: RegisterVerifierRequest): Promise<RegisterVerifierResponse> {
    return new Promise((resolve, reject) => {
      this.client.registerVerifier(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public unregisterIssuer(request: UnregisterIssuerRequest): Promise<UnregisterIssuerResponse> {
    return new Promise((resolve, reject) => {
      this.client.unregisterIssuer(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public unregisterVerifier(request: UnregisterVerifierRequest): Promise<UnregisterVerifierResponse> {
    return new Promise((resolve, reject) => {
      this.client.unregisterVerifier(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public checkIssuer(request: CheckIssuerStatusRequest): Promise<CheckIssuerStatusResponse> {
    return new Promise((resolve, reject) => {
      this.client.checkIssuerStatus(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public checkVerifier(request: CheckVerifierStatusRequest): Promise<CheckVerifierStatusResponse> {
    return new Promise((resolve, reject) => {
      this.client.checkVerifierStatus(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public search(query: string): Promise<SearchRegistryResponse> {
    return new Promise((resolve, reject) => {
      this.client.searchRegistry(new SearchRegistryRequest().setQuery(query), this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public addGovernanceFramework(request: AddFrameworkRequest): Promise<AddFrameworkResponse> {
    return new Promise((resolve, reject) => {
      this.client.addFramework(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }

  public removeGovernanceFramework(request: RemoveFrameworkRequest): Promise<RemoveFrameworkResponse> {
    return new Promise((resolve, reject) => {
      this.client.removeFramework(request, this.getMetadata(), (error, response) => {
        if (error) {
          reject(error);
        }
        return resolve(response);
      });
    });
  }
}
