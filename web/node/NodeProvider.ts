import { IPlatformProvider } from "../src";
import { Client, CompatServiceDefinition } from "nice-grpc-web";
import { createClient, createChannel } from "nice-grpc";
import {
    createClient as createClientWeb,
    createChannel as createChannelWeb,
} from "nice-grpc-web";
import { NodeHttpTransport } from "@improbable-eng/grpc-web-node-http-transport";

export class NodeProvider implements IPlatformProvider {
    public static useHttp1: boolean = false;

    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        if (NodeProvider.useHttp1) {
            return createClientWeb(
                definition,
                createChannelWeb(address, NodeHttpTransport())
            );
        }
        // @ts-ignore - compatible types, duplicate definitions
        return createClient(definition, createChannel(address));
    }

    metadataLanguage(): string {
        if (NodeProvider.useHttp1) return "typescript-node-http1";
        return "typescript-node";
    }
}
