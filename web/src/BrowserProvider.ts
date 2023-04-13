import { IPlatformProvider } from "./index";
import {
    Client,
    CompatServiceDefinition,
    createClient,
    createChannel,
} from "nice-grpc-web";

export class BrowserProvider implements IPlatformProvider {
    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        // @ts-ignore - compatible types, duplicate definitions
        return createClient(definition, createChannel(address));
    }

    metadataLanguage(): string {
        return "typescript-browser";
    }
}
