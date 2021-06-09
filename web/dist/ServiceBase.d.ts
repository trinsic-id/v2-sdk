import { Metadata } from "grpc-web";
import { WalletProfile } from './proto/WalletService_pb';
export default abstract class ServiceBase {
    capInvocation: string;
    getMetadata(): Metadata;
    setProfile(profile: WalletProfile): Promise<void>;
}
