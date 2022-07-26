// This is overridden by the `browser` field in package.json for web
import {Hashing, Oberon, OkapiMetadata} from "@trinsic/okapi-web";
import { AccountProfile } from "./proto/services/account/v1/account";
import {ITrinsicProvider} from "./ITrinsicProvider";


export class TrinsicWebProvider implements ITrinsicProvider {
    async blake3HashRequest(
        requestData: Uint8Array
    ): Promise<Uint8Array> {
        let requestHash = new Uint8Array();
        if (requestData.length > 0) {
            let hashResponse = await Hashing.blake3Hash({ data: requestData });
            requestHash = hashResponse.digest;
        }
        return requestHash;
    }

    async blindOberon(cloned: AccountProfile, securityCode: Uint8Array): Promise<Uint8Array> {
        let response = await Oberon.blindToken({
            token: cloned.authToken,
            blinding: [securityCode],
        });
        return response.token;
    }

    async oberonProofRequest(profile: AccountProfile, nonceUint8: Uint8Array): Promise<Uint8Array> {
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

    async unblindOberon(cloned: AccountProfile, securityCode: Uint8Array): Promise<Uint8Array> {
        let response = await Oberon.unblindToken({
            token: cloned.authToken,
            blinding: [securityCode],
        });
        return response.token;
    }

    provider(): ITrinsicProvider {
        return webInstance;
    }
}

let webInstance = new TrinsicWebProvider();