"use strict";
// import * as credentialTemplates from "../dist/models/CredentialTemplates_grpc_pb";
// import * as attributes from "../dist/models/Attributes_grpc_pb";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ProviderService = exports.WalletService = void 0;
// import {credentials} from "@grpc/grpc-js";
// import {ProviderClient} from "../dist/ProviderService_grpc_pb";
const WalletService_1 = require("./WalletService");
Object.defineProperty(exports, "WalletService", { enumerable: true, get: function () { return WalletService_1.TrinsicWalletService; } });
const ProviderService_1 = require("./ProviderService");
Object.defineProperty(exports, "ProviderService", { enumerable: true, get: function () { return ProviderService_1.TrinsicProviderService; } });
//# sourceMappingURL=index.js.map