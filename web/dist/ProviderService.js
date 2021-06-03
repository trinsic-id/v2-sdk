"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __exportStar = (this && this.__exportStar) || function(m, exports) {
    for (var p in m) if (p !== "default" && !Object.prototype.hasOwnProperty.call(exports, p)) __createBinding(exports, m, p);
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.TrinsicProviderService = void 0;
const ServiceBase_1 = __importDefault(require("./ServiceBase"));
const ProviderServiceServiceClientPb_1 = require("./proto/ProviderServiceServiceClientPb");
__exportStar(require("grpc-web"), exports);
class TrinsicProviderService extends ServiceBase_1.default {
    // channel: Channel;
    client;
    constructor(serviceAddress = "localhost:5000") {
        super();
        // let credentials = ChannelCredentials.createInsecure();
        // let channel = new Channel(serviceAddress, credentials, {});
        // this.channel = channel;
        this.client = new ProviderServiceServiceClientPb_1.ProviderClient(serviceAddress, {}, {});
    }
    // setChannel(channel: Channel) {
    //   this.channel = channel;
    //   this.client = new ProviderClient(
    //     channel.getTarget(),
    //     ChannelCredentials.createInsecure()
    //   );
    // }
    inviteParticipant(request) {
        return new Promise((resolve, reject) => {
            this.client.invite(request, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }
    invitationStatus(request) {
        return new Promise((resolve, reject) => {
            this.client.invitationStatus(request, this.getMetadata(), (error, response) => {
                if (error) {
                    reject(error);
                }
                return resolve(response);
            });
        });
    }
}
exports.TrinsicProviderService = TrinsicProviderService;
//# sourceMappingURL=ProviderService.js.map