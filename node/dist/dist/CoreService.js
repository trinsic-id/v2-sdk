"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.trinsic = void 0;
const pbmse_1 = require("./pbmse/pbmse");
const pb_1 = __importStar(require("google-protobuf"));
const grpc_1 = __importStar(require("@grpc/grpc-js"));
var trinsic;
(function (trinsic) {
    var services;
    (function (services) {
        let ResponseStatus;
        (function (ResponseStatus) {
            ResponseStatus[ResponseStatus["SUCCESS"] = 0] = "SUCCESS";
            ResponseStatus[ResponseStatus["WALLET_ACCESS_DENIED"] = 10] = "WALLET_ACCESS_DENIED";
            ResponseStatus[ResponseStatus["WALLET_EXISTS"] = 11] = "WALLET_EXISTS";
            ResponseStatus[ResponseStatus["ITEM_NOT_FOUND"] = 20] = "ITEM_NOT_FOUND";
            ResponseStatus[ResponseStatus["SERIALIZATION_ERROR"] = 200] = "SERIALIZATION_ERROR";
            ResponseStatus[ResponseStatus["UNKNOWN_ERROR"] = 100] = "UNKNOWN_ERROR";
        })(ResponseStatus = services.ResponseStatus || (services.ResponseStatus = {}));
        class NoOp extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") { }
            }
            toObject() {
                var data = {};
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new NoOp();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return NoOp.deserialize(bytes);
            }
        }
        services.NoOp = NoOp;
        services.Common = {
            Request: {
                path: "/trinsic.services.Common/Request",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => pbmse_1.pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => pbmse_1.pbmse.EncryptedMessage.deserialize(new Uint8Array(bytes))
            }
        };
        class CommonClient extends grpc_1.makeGenericClientConstructor(services.Common, "Common", {}) {
            constructor(address, credentials, options) {
                super(address, credentials, options);
            }
        }
        services.CommonClient = CommonClient;
    })(services = trinsic.services || (trinsic.services = {}));
})(trinsic = exports.trinsic || (exports.trinsic = {}));
exports.default = trinsic.services;
//# sourceMappingURL=CoreService.js.map