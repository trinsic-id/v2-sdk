import ServiceBase from "./ServiceBase";
import {
  AddFrameworkRequest,
  AddFrameworkResponse,
  CheckIssuerStatusRequest,
  CheckIssuerStatusResponse,
  CheckVerifierStatusRequest,
  CheckVerifierStatusResponse,
  FetchDataRequest,
  RegisterIssuerRequest,
  RegisterIssuerResponse,
  RegisterVerifierRequest,
  RegisterVerifierResponse,
  RemoveFrameworkRequest,
  RemoveFrameworkResponse,
  SearchRegistryRequest,
  SearchRegistryResponse,
  ServiceOptions,
  TrustRegistryClient,
  UnregisterIssuerRequest,
  UnregisterIssuerResponse,
  UnregisterVerifierRequest,
  UnregisterVerifierResponse,
} from "./proto";
import { ClientReadableStream } from "@grpc/grpc-js";

export class TrustRegistryService extends ServiceBase {
  client: TrustRegistryClient;

  constructor(options?: ServiceOptions) {
    super(options);

    this.client = new TrustRegistryClient(
      this.address,
      this.channelCredentials
    );
  }

  public registerIssuer(
    request: RegisterIssuerRequest
  ): Promise<RegisterIssuerResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.registerIssuer(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public registerVerifier(
    request: RegisterVerifierRequest
  ): Promise<RegisterVerifierResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.registerVerifier(request, metadata, (error, response) => {
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

  public unregisterIssuer(
    request: UnregisterIssuerRequest
  ): Promise<UnregisterIssuerResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.unregisterIssuer(request, metadata, (error, response) => {
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

  public unregisterVerifier(
    request: UnregisterVerifierRequest
  ): Promise<UnregisterVerifierResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.unregisterVerifier(request, metadata, (error, response) => {
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

  public checkIssuerStatus(
    request: CheckIssuerStatusRequest
  ): Promise<CheckIssuerStatusResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.checkIssuerStatus(request, metadata, (error, response) => {
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

  public checkVerifierStatus(
    request: CheckVerifierStatusRequest
  ): Promise<CheckVerifierStatusResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.checkVerifierStatus(
          request,
          metadata,
          (error, response) => {
            if (error) {
              reject(error);
            } else {
              resolve(response);
            }
          }
        );
      } catch (e) {
        reject(e);
      }
    });
  }

  public searchRegistry(
    request: SearchRegistryRequest = new SearchRegistryRequest()
  ): Promise<SearchRegistryResponse> {
    return new Promise(async (resolve, reject) => {
      if (!request.getQuery()) request = request.setQuery("SELECT * FROM c");
      try {
        let metadata = await this.getMetadata(request);
        this.client.searchRegistry(request, metadata, (error, response) => {
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

  public addGovernanceFramework(
    request: AddFrameworkRequest
  ): Promise<AddFrameworkResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        const uriString = request
          .getGovernanceFramework()
          ?.getGovernanceFrameworkUri();
        new URL(uriString!);
      } catch (e) {
        reject(e);
        return;
      }
      try {
        let metadata = await this.getMetadata(request);
        this.client.addFramework(request, metadata, (error, response) => {
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

  public removeGovernanceFramework(
    request: RemoveFrameworkRequest
  ): Promise<RemoveFrameworkResponse> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        this.client.removeFramework(request, metadata, (error, response) => {
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

  public fetchData(
    request: FetchDataRequest
  ): Promise<ClientReadableStream<unknown>> {
    return new Promise(async (resolve, reject) => {
      try {
        let metadata = await this.getMetadata(request);
        return resolve(this.client.fetchData(request, metadata));
      } catch (e) {
        reject(e);
      }
    });
  }
}
