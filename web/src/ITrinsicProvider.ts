import { AccountProfile } from "./proto/services/account/v1/account";
// We can use the web definitions for node, not the other way round.
import {
    Client as BrowserClient,
    CompatServiceDefinition,
} from "nice-grpc-web";


export interface ITrinsicProvider {
    metadataLanguage(): string
    blake3HashRequest(requestData: Uint8Array): Promise<Uint8Array>
    oberonProofRequest(profile: AccountProfile, nonceUint8: Uint8Array): Promise<Uint8Array>
    unblindOberon(cloned: AccountProfile, securityCode: Uint8Array): Promise<Uint8Array>
    blindOberon(cloned: AccountProfile, securityCode: Uint8Array): Promise<Uint8Array>
    okapiVersion(): Promise<string>

    createGrpcClient<ClientService extends CompatServiceDefinition>(definition: ClientService, address: string): BrowserClient<ClientService>
}

