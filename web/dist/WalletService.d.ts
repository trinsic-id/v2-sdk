import ServiceBase from "./ServiceBase";
import { WalletClient } from "./proto/WalletServiceServiceClientPb";
import { CredentialClient } from "./proto/IssuerServiceServiceClientPb";
import { GetProviderConfigurationResponse, WalletProfile, ConnectResponse, SearchResponse } from "./proto/WalletService_pb";
declare type JavaScriptValue = string | number | boolean | {} | any[];
declare type JSStruct = {
    [key: string]: JavaScriptValue;
};
export * from "grpc-web";
export declare class TrinsicWalletService extends ServiceBase {
    client: WalletClient;
    credentialClient: CredentialClient;
    constructor(serviceAddress?: string);
    registerOrConnect(email: string): Promise<ConnectResponse>;
    getProviderConfiguration(): Promise<GetProviderConfigurationResponse>;
    createWallet(securityCode?: string): Promise<WalletProfile>;
    issueCredential(document: JSStruct): Promise<object>;
    search(query?: string): Promise<SearchResponse>;
    insertItem(item: JSStruct): Promise<string>;
    createProof(documentId: string, revealDocument: JSStruct): Promise<object>;
    verifyProof(proofDocument: JSStruct): Promise<boolean>;
}
