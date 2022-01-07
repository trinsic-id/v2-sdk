import ServiceBase, {ServiceOptions} from "./ServiceBase";
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
    TrustRegistryClient,
    UnregisterIssuerRequest,
    UnregisterIssuerResponse,
    UnregisterVerifierRequest,
    UnregisterVerifierResponse
} from "./proto";
import {FetchDataRequest, FetchDataResponse} from "../lib";

export class TrustRegistryService extends ServiceBase {
    client: TrustRegistryClient;

    constructor(options?: ServiceOptions) {
        super(options);

        this.client = new TrustRegistryClient(this.address, this.channelCredentials);
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

    public checkIssuerStatus(request: CheckIssuerStatusRequest): Promise<CheckIssuerStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.checkIssuerStatus(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }

    public checkVerifierStatus(request: CheckVerifierStatusRequest): Promise<CheckVerifierStatusResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.checkVerifierStatus(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }

    public searchRegistry(query: string = "SELECT * FROM c"): Promise<SearchRegistryResponse> {
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

    public fetchData(request: FetchDataRequest): Promise<FetchDataResponse> {
        return new Promise(async (resolve, reject) => {
            this.client.fetch(request, await this.getMetadata(request), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }
}
