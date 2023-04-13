// We can use the web definitions for node, not the other way round.
import {
    Client,
    createClient,
    createChannel,
    CompatServiceDefinition,
} from "nice-grpc-web";

export interface IPlatformProvider {
    metadataLanguage(): string;

    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService>;
}

export class BrowserProvider implements IPlatformProvider {
    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        // @ts-ignore - compatible types, duplicate definitions
        return createClient(definition, createChannel(address));
    }

    metadataLanguage(): string {
        return "typescript";
    }
}