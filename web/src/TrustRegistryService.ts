import ServiceBase from "./ServiceBase";
import {
    ServiceOptions,
    AddFrameworkRequest,
    AddFrameworkResponse,
    CheckIssuerStatusRequest,
    CheckIssuerStatusResponse,
    CheckVerifierStatusRequest,
    CheckVerifierStatusResponse, FetchDataRequest, FetchDataResponse,
    RegisterIssuerRequest,
    RegisterIssuerResponse,
    RegisterVerifierRequest,
    RegisterVerifierResponse,
    RemoveFrameworkRequest,
    RemoveFrameworkResponse,
    SearchRegistryRequest,
    SearchRegistryResponse,
    TrustRegistryClient,
    UnregisterIssuerRequest,
    UnregisterIssuerResponse,
    UnregisterVerifierRequest,
    UnregisterVerifierResponse
} from "./proto";
import { ClientReadableStream } from "grpc-web";

export class TrustRegistryService extends ServiceBase {
    client: TrustRegistryClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new TrustRegistryClient(this.address);
    }

    public registerIssuer(request: RegisterIssuerRequest): Promise<RegisterIssuerResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.registerIssuer(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public registerVerifier(request: RegisterVerifierRequest): Promise<RegisterVerifierResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.registerVerifier(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public unregisterIssuer(request: UnregisterIssuerRequest): Promise<UnregisterIssuerResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.unregisterIssuer(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public unregisterVerifier(request: UnregisterVerifierRequest): Promise<UnregisterVerifierResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.unregisterVerifier(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public checkIssuerStatus(request: CheckIssuerStatusRequest): Promise<CheckIssuerStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.checkIssuerStatus(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public checkVerifierStatus(request: CheckVerifierStatusRequest): Promise<CheckVerifierStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.checkVerifierStatus(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public searchRegistry(request: SearchRegistryRequest = new SearchRegistryRequest()): Promise<SearchRegistryResponse> {
        return new Promise(async (resolve, reject) => {
            if (!request.getQuery())
                request = request.setQuery("SELECT * FROM c");
            this.client.searchRegistry(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public addGovernanceFramework(request: AddFrameworkRequest): Promise<AddFrameworkResponse> {
        return new Promise(async (resolve, reject) => {
            try {
                const uriString = request.getGovernanceFramework()?.getGovernanceFrameworkUri();
                new URL(uriString!);
            } catch (e) {
                reject(e);
                return;
            }
            this.client.addFramework(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public removeGovernanceFramework(request: RemoveFrameworkRequest): Promise<RemoveFrameworkResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.removeFramework(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(response);
                }
            });
        });
    }

    public fetchData(request: FetchDataRequest): Promise<ClientReadableStream<unknown>> {
        return new Promise(async (resolve, reject) => {
            return resolve(this.client.fetchData(request, await this.getMetadata(request)));
        });
    }
}
