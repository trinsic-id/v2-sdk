// Force polyfill to prevent React Native/Expo errors:
import "@azure/core-asynciterator-polyfill";
import "fastestsmallesttextencoderdecoder";

import { WalletService } from "./WalletService";
import { ProviderService } from "./ProviderService";
import { TrustRegistryService } from "./TrustRegistryService";
import { CredentialService } from "./CredentialService";
import { TemplateService } from "./TemplateService";
import { TrinsicService } from "./TrinsicService";
import ServiceBase from "./ServiceBase";

export * from "./proto/index";
export * from "./providers";
export * from "./FetchReactNativeTransport";
export * from "./XHRTransport";

export {
    TrinsicService,
    WalletService,
    ProviderService,
    TrustRegistryService,
    CredentialService,
    TemplateService,
    ServiceBase,
};
