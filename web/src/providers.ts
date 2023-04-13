// We can use the web definitions for node, not the other way round.
import {
    Client,
    createClient,
    createChannel,
    CompatServiceDefinition,
    NodeHttpTransport, FetchTransport
} from "nice-grpc-web";

export interface IPlatformProvider {
    metadataLanguage(): string;

    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService>;
}

function isNode(): boolean {
    // https://stackoverflow.com/a/38815760
    return typeof process === 'object' && process + '' === '[object process]';
}

export class BrowserProvider implements IPlatformProvider {
    private language?: string = undefined;
    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        let channel: any;
        if (isNode()) {
            channel = createChannel(address, NodeHttpTransport())
        } else {
            channel = createChannel(address, FetchTransport());
        }
        // @ts-ignore - compatible types, duplicate definitions
        return createClient(definition, channel);
    }

    metadataLanguage(): string {
        if (this.language === undefined) {
            if (isNode()) {
                this.language = "typescript-node";
            } else {
                this.language = "typescript-web"
            }
        }
        return this.language;
    }
}