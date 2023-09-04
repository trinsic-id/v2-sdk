import { TrinsicOptions } from "./proto";
import { Metadata } from "nice-grpc-common";
import {
    Client as BrowserClient,
    CompatServiceDefinition as ClientServiceDefinition,
} from "nice-grpc-web";
import { getSdkVersion } from "./Version";
import { TransportProvider, IPlatformProvider } from "./providers";

export default abstract class ServiceBase {
    static platform: IPlatformProvider = new TransportProvider();
    options: TrinsicOptions;

    protected constructor(
        options: TrinsicOptions = TrinsicOptions.fromPartial({}),
    ) {
        options.serverEndpoint = options.serverEndpoint || "prod.trinsic.cloud";
        options.serverPort = options.serverPort || 443;
        options.serverUseTls =
            options.serverPort == 443 ? true : options.serverUseTls || false;

        this.options = options;
    }

    async buildMetadata(request?: Uint8Array): Promise<Metadata> {
        const metadata = new Metadata();
        metadata.append(
            "trinsicsdklanguage".toLowerCase(),
            ServiceBase.platform.metadataLanguage(),
        );
        metadata.append("trinsicsdkversion".toLowerCase(), getSdkVersion());
        if (this.options.authToken) {
            metadata.append(
                "authorization",
                "Bearer " + this.options.authToken!,
            );
        }
        return metadata;
    }

    public setAuthToken(token: string) {
        this.options.authToken = token;
    }

    protected createClient<ClientService extends ClientServiceDefinition>(
        definition: ClientService,
    ): BrowserClient<ClientService> {
        let address = `${this.options.serverUseTls ? "https" : "http"}://${
            this.options.serverEndpoint
        }:${this.options.serverPort}`;
        return ServiceBase.platform.createGrpcClient(definition, address);
    }
}
