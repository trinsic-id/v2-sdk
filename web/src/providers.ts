// We can use the web definitions for node, not the other way round.
import {
    Client,
    createClient,
    createChannel,
    CompatServiceDefinition,
    NodeHttpTransport,
    FetchTransport,
} from "nice-grpc-web";
import {XHRTransport} from "./XHRTransport";
import {Transport} from "nice-grpc-web/lib/client/Transport";

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
        return "web";
    }
    else if (typeof navigator !== 'undefined' && navigator.product === 'ReactNative') {
        // I'm in react-native
        return "react-native";
    }
    else {
        // I'm in node js
        return "node";
    }
}

export class TransportProvider implements IPlatformProvider {
    /**
     * Override this to specify which transport to use.
     */
    public static overrideTransport?: Transport = undefined;
    private language?: string = undefined;
    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        let transport: any;
        const runtime = getRuntime();
        if (runtime === "web") {
            transport = FetchTransport();
        } else if (runtime === "react-native") {
            // TODO - Once this PR is merged: https://github.com/deeplay-io/nice-grpc/pull/348
            transport = XHRTransport();
        } else {
            transport = NodeHttpTransport();
        }
        if (TransportProvider.overrideTransport !== undefined) {
            transport = TransportProvider.overrideTransport;
        }
        const channel = createChannel(address, transport);
        return createClient(definition, channel);
    }

    metadataLanguage(): string {
        if (this.language === undefined) {
            this.language = "typescript-" + getRuntime();
        }
        return this.language;
    }
}
