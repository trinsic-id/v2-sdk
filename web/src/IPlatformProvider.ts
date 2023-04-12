// We can use the web definitions for node, not the other way round.
import {
    Client as BrowserClient,
    CompatServiceDefinition,
} from "nice-grpc-web";

export interface IPlatformProvider {
    metadataLanguage(): string;

    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): BrowserClient<ClientService>;
}
