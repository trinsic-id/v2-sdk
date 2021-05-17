"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const grpc_js_1 = require("@grpc/grpc-js");
const ServiceBase_1 = __importDefault(require("./ServiceBase"));
const ProviderService_grpc_pb_1 = require("../dist/ProviderService_grpc_pb");
class ProviderService extends ServiceBase_1.default {
    constructor(serviceAddress = "http://localhost:5000") {
        super();
        let channel = new grpc_js_1.Channel(serviceAddress, grpc_js_1.ChannelCredentials.createInsecure(), {});
        this.channel = channel;
        this.client = new ProviderService_grpc_pb_1.ProviderClient(channel);
    }
    setChannel(channel) {
        this.channel = channel;
        this.client = new ProviderService_grpc_pb_1.ProviderClient(channel);
    }
    async inviteParticipant(request) {
        let response = await this.client.invite(request, this.GetMetadata());
        return response;
    }
    async invitationStatus(request) {
        let response = await this.client.invitationStatus(request, this.GetMetadata());
        return response;
    }
}
exports.default = ProviderService;
//# sourceMappingURL=ProviderService.js.map