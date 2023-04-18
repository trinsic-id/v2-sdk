// We can use the web definitions for node, not the other way round.
import {
    Client,
    createClient,
    createChannel,
    CompatServiceDefinition,
    NodeHttpTransport,
    FetchTransport,
} from "nice-grpc-web";

export interface IPlatformProvider {
    metadataLanguage(): string;

    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService>;
}

function getRuntime(): string {
    // https://stackoverflow.com/a/39473604
    if (typeof document !== 'undefined') {
        // I'm on the web!
        console.warn("Web!");
        return "web";
    }
    else if (typeof navigator !== 'undefined' && navigator.product === 'ReactNative') {
        // I'm in react-native
        console.warn("React native!");
        return "react-native";
    }
    else {
        console.warn("Node.js!");
        // I'm in node js
        return "node";
    }
}

export class BrowserProvider implements IPlatformProvider {
    private language?: string = undefined;
    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        let channel: any;
        const runtime = getRuntime();
        if (runtime === "web") {
            channel = createChannel(address, FetchTransport());
        } else {
            channel = createChannel(address, NodeHttpTransport());
        }
        // @ts-ignore - compatible types, duplicate definitions
        return createClient(definition, channel);
    }

    metadataLanguage(): string {
        if (this.language === undefined) {
            this.language = "typescript-" + getRuntime();
        }
        return this.language;
    }
}
