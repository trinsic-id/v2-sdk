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
    let isNode = false;
    if (typeof process === 'object') {
        if (typeof process.versions === 'object') {
            if (typeof process.versions.node !== 'undefined') {
                isNode = true;
            }
        }
    }
    return isNode;
}

export class BrowserProvider implements IPlatformProvider {
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
        return "typescript";
    }
}