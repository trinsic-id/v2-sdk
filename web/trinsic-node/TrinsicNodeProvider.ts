// This is overridden by the `browser` field in package.json for web
import { Hashing, Oberon, OkapiMetadata } from "@trinsic/okapi-node";
import { AccountProfile } from "../src";
import { ITrinsicProvider } from "../src/ITrinsicProvider";
import { Client, CompatServiceDefinition } from "nice-grpc-web";
import { createClient, createChannel } from "nice-grpc";
export class TrinsicNodeProvider implements ITrinsicProvider {
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

  provider(): ITrinsicProvider {
    return nodeInstance;
  }

  createGrpcClient<ClientService extends CompatServiceDefinition>(
    definition: ClientService,
    address: string
  ): Client<ClientService> {
    // @ts-ignore - compatible types, duplicate definitions
    return createClient(definition, createChannel(address));
  }
}

let nodeInstance = new TrinsicNodeProvider();
