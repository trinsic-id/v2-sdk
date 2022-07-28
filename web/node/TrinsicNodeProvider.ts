import { Hashing, Oberon, OkapiMetadata } from "@trinsic/okapi-node";
import { AccountProfile, ITrinsicProvider } from "../src";
import { Client, CompatServiceDefinition } from "nice-grpc-web";
import { createClient, createChannel } from "nice-grpc";
import { createClient as createClientWeb, createChannel as createChannelWeb } from "nice-grpc-web";
import {NodeHttpTransport} from "@improbable-eng/grpc-web-node-http-transport"

export class TrinsicNodeProvider implements ITrinsicProvider {
    public static useHttp1: boolean = false
    async blake3HashRequest(requestData: Uint8Array): Promise<Uint8Array> {
        let requestHash = new Uint8Array();
        if (requestData.length > 0) {
            let hashResponse = await Hashing.blake3Hash({ data: requestData });
            requestHash = hashResponse.digest;
        }
        return requestHash;
    }

    async blindOberon(
        cloned: AccountProfile,
        securityCode: Uint8Array
    ): Promise<Uint8Array> {
        let response = await Oberon.blindToken({
            token: cloned.authToken,
            blinding: [securityCode],
        });
        return response.token;
    }

    async oberonProofRequest(
        profile: AccountProfile,
        nonceUint8: Uint8Array
    ): Promise<Uint8Array> {
        let proof = await Oberon.createProof({
            data: profile.authData,
            nonce: nonceUint8,
            token: profile.authToken,
            blinding: [],
        });
        return proof.proof;
    }

    async okapiVersion(): Promise<string> {
        return (await OkapiMetadata.getMetadata()).version;
    }

    async unblindOberon(
        cloned: AccountProfile,
        securityCode: Uint8Array
    ): Promise<Uint8Array> {
        let response = await Oberon.unblindToken({
            token: cloned.authToken,
            blinding: [securityCode],
        });
        return response.token;
    }

    createGrpcClient<ClientService extends CompatServiceDefinition>(
        definition: ClientService,
        address: string
    ): Client<ClientService> {
        if (TrinsicNodeProvider.useHttp1) {
            return createClientWeb(definition, createChannelWeb(address,NodeHttpTransport()));
        }
        // @ts-ignore - compatible types, duplicate definitions
        return createClient(definition, createChannel(address));
    }

    metadataLanguage(): string {
        if (TrinsicNodeProvider.useHttp1) return "typescript-node-http1"
        return "typescript-node";
    }
}
