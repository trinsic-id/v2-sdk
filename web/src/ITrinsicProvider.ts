// This is overridden by the `browser` field in package.json for web
import { AccountProfile } from "./proto/services/account/v1/account";

export interface ITrinsicProvider {
    provider(): ITrinsicProvider
    blake3HashRequest(requestData: Uint8Array): Promise<Uint8Array>
    oberonProofRequest(profile: AccountProfile, nonceUint8: Uint8Array): Promise<Uint8Array>
    unblindOberon(cloned: AccountProfile, securityCode: Uint8Array): Promise<Uint8Array>
    blindOberon(cloned: AccountProfile, securityCode: Uint8Array): Promise<Uint8Array>
    okapiVersion(): Promise<string>
}