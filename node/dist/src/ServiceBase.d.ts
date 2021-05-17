import { Metadata } from "@grpc/grpc-js";
import { trinsic as Wallet } from '../dist/WalletService';
export default abstract class ServiceBase {
    capInvocation: String;
    GetMetadata(): Metadata;
    SetProfile(profile: Wallet.services.WalletProfile): void;
}
