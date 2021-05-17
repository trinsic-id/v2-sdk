import { Channel } from "@grpc/grpc-js";
import ServiceBase from "./ServiceBase";
import { trinsic as Wallet } from "../dist/WalletService";
import { trinsic as Issuer } from "../dist/IssuerService";
export default class TrinsicWalletService extends ServiceBase {
    channel: Channel;
    client: Wallet.services.WalletClient;
    credentialClient: Issuer.services.CredentialClient;
    constructor(serviceAddress?: string);
    setChannel(channel: Channel): void;
    registerOrConnect(email: string): void;
    createWallet(securityCode?: string): Wallet.services.WalletProfile;
}
