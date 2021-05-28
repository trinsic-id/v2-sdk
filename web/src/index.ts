// import * as credentialTemplates from "../dist/models/CredentialTemplates_grpc_pb";
// import * as attributes from "../dist/models/Attributes_grpc_pb";

// import {credentials} from "@grpc/grpc-js";
// import {ProviderClient} from "../dist/ProviderService_grpc_pb";
import { TrinsicWalletService } from './WalletService';
import { TrinsicProviderService } from './ProviderService';

// import * as TemplateModels from "../dist/CredentialTemplates_pb";
// import * as PresentationTemplates from "../dist/PresentationTemplates_pb";
// import {CredentialTemplatesClient} from "../dist/CredentialTemplates_grpc_pb";
// import {OrganizationsClient} from "../dist/Organizations_grpc_pb";
// const organizations = new OrganizationsClient("localhost:5000", grpc.credentials.createInsecure());

// const provider = new ProviderClient("localhost:5000", credentials.createInsecure());

export {
    // provider,
    // credentialTemplates,
    // attributes,
    TrinsicWalletService as WalletService,
    TrinsicProviderService as ProviderService
    // organizations,
    // OrganizationModels,
    // TemplateModels,
    // PresentationTemplates
}