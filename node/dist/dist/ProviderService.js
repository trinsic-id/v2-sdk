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
const pb_1 = __importStar(require("google-protobuf"));
const grpc_1 = __importStar(require("@grpc/grpc-js"));
var trinsic;
(function (trinsic) {
    var services;
    (function (services) {
        let ParticipantType;
        (function (ParticipantType) {
            ParticipantType[ParticipantType["participant_type_individual"] = 0] = "participant_type_individual";
            ParticipantType[ParticipantType["participant_type_organization"] = 1] = "participant_type_organization";
        })(ParticipantType = services.ParticipantType || (services.ParticipantType = {}));
        class InviteRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], [[5, 6, 7]]);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("participant" in data && data.participant != undefined) {
                        this.participant = data.participant;
                    }
                    if ("description" in data && data.description != undefined) {
                        this.description = data.description;
                    }
                    if ("email" in data && data.email != undefined) {
                        this.email = data.email;
                    }
                    if ("phone" in data && data.phone != undefined) {
                        this.phone = data.phone;
                    }
                    if ("didcomm_invitation" in data && data.didcomm_invitation != undefined) {
                        this.didcomm_invitation = data.didcomm_invitation;
                    }
                }
            }
            get participant() {
                return pb_1.Message.getField(this, 1);
            }
            set participant(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get description() {
                return pb_1.Message.getField(this, 2);
            }
            set description(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get email() {
                return pb_1.Message.getField(this, 5);
            }
            set email(value) {
                pb_1.Message.setField(this, 5, value);
            }
            get phone() {
                return pb_1.Message.getField(this, 6);
            }
            set phone(value) {
                pb_1.Message.setField(this, 6, value);
            }
            get didcomm_invitation() {
                return pb_1.Message.getWrapperField(this, InviteRequest.DidCommInvitation, 7);
            }
            set didcomm_invitation(value) {
                pb_1.Message.setWrapperField(this, 7, value);
            }
            toObject() {
                var data = {};
                if (this.participant != null) {
                    data.participant = this.participant;
                }
                if (this.description != null) {
                    data.description = this.description;
                }
                if (this.email != null) {
                    data.email = this.email;
                }
                if (this.phone != null) {
                    data.phone = this.phone;
                }
                if (this.didcomm_invitation != null) {
                    data.didcomm_invitation = this.didcomm_invitation.toObject();
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.participant !== undefined)
                    writer.writeEnum(1, this.participant);
                if (typeof this.description === "string" && this.description.length)
                    writer.writeString(2, this.description);
                if (typeof this.email === "string" && this.email.length)
                    writer.writeString(5, this.email);
                if (typeof this.phone === "string" && this.phone.length)
                    writer.writeString(6, this.phone);
                if (this.didcomm_invitation !== undefined)
                    writer.writeMessage(7, this.didcomm_invitation, () => this.didcomm_invitation.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InviteRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.participant = reader.readEnum();
                            break;
                        case 2:
                            message.description = reader.readString();
                            break;
                        case 5:
                            message.email = reader.readString();
                            break;
                        case 6:
                            message.phone = reader.readString();
                            break;
                        case 7:
                            reader.readMessage(message.didcomm_invitation, () => message.didcomm_invitation = InviteRequest.DidCommInvitation.deserialize(reader));
                            break;
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return InviteRequest.deserialize(bytes);
            }
        }
        services.InviteRequest = InviteRequest;
        (function (InviteRequest) {
            class DidCommInvitation extends pb_1.Message {
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
                    const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new DidCommInvitation();
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
                    return DidCommInvitation.deserialize(bytes);
                }
            }
            InviteRequest.DidCommInvitation = DidCommInvitation;
        })(InviteRequest = services.InviteRequest || (services.InviteRequest = {}));
        class InviteResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("invitation_id" in data && data.invitation_id != undefined) {
                        this.invitation_id = data.invitation_id;
                    }
                }
            }
            get invitation_id() {
                return pb_1.Message.getField(this, 1);
            }
            set invitation_id(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.invitation_id != null) {
                    data.invitation_id = this.invitation_id;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.invitation_id === "string" && this.invitation_id.length)
                    writer.writeString(1, this.invitation_id);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InviteResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.invitation_id = reader.readString();
                            break;
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return InviteResponse.deserialize(bytes);
            }
        }
        services.InviteResponse = InviteResponse;
        class InvitationStatusRequest extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("invitation_id" in data && data.invitation_id != undefined) {
                        this.invitation_id = data.invitation_id;
                    }
                }
            }
            get invitation_id() {
                return pb_1.Message.getField(this, 1);
            }
            set invitation_id(value) {
                pb_1.Message.setField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.invitation_id != null) {
                    data.invitation_id = this.invitation_id;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.invitation_id === "string" && this.invitation_id.length)
                    writer.writeString(1, this.invitation_id);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InvitationStatusRequest();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.invitation_id = reader.readString();
                            break;
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return InvitationStatusRequest.deserialize(bytes);
            }
        }
        services.InvitationStatusRequest = InvitationStatusRequest;
        class InvitationStatusResponse extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("status" in data && data.status != undefined) {
                        this.status = data.status;
                    }
                    if ("status_details" in data && data.status_details != undefined) {
                        this.status_details = data.status_details;
                    }
                }
            }
            get status() {
                return pb_1.Message.getField(this, 1);
            }
            set status(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get status_details() {
                return pb_1.Message.getField(this, 2);
            }
            set status_details(value) {
                pb_1.Message.setField(this, 2, value);
            }
            toObject() {
                var data = {};
                if (this.status != null) {
                    data.status = this.status;
                }
                if (this.status_details != null) {
                    data.status_details = this.status_details;
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.status !== undefined)
                    writer.writeEnum(1, this.status);
                if (typeof this.status_details === "string" && this.status_details.length)
                    writer.writeString(2, this.status_details);
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new InvitationStatusResponse();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.status = reader.readEnum();
                            break;
                        case 2:
                            message.status_details = reader.readString();
                            break;
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return InvitationStatusResponse.deserialize(bytes);
            }
        }
        services.InvitationStatusResponse = InvitationStatusResponse;
        (function (InvitationStatusResponse) {
            let Status;
            (function (Status) {
                Status[Status["Error"] = 0] = "Error";
                Status[Status["InvitationSent"] = 1] = "InvitationSent";
                Status[Status["Completed"] = 2] = "Completed";
            })(Status = InvitationStatusResponse.Status || (InvitationStatusResponse.Status = {}));
        })(InvitationStatusResponse = services.InvitationStatusResponse || (services.InvitationStatusResponse = {}));
        services.Provider = {
            Invite: {
                path: "/trinsic.services.Provider/Invite",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => InviteRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => InviteResponse.deserialize(new Uint8Array(bytes))
            },
            InviteWithWorkflow: {
                path: "/trinsic.services.Provider/InviteWithWorkflow",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => InviteRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => InviteResponse.deserialize(new Uint8Array(bytes))
            },
            InvitationStatus: {
                path: "/trinsic.services.Provider/InvitationStatus",
                requestStream: false,
                responseStream: false,
                requestSerialize: (message) => Buffer.from(message.serialize()),
                requestDeserialize: (bytes) => InvitationStatusRequest.deserialize(new Uint8Array(bytes)),
                responseSerialize: (message) => Buffer.from(message.serialize()),
                responseDeserialize: (bytes) => InvitationStatusResponse.deserialize(new Uint8Array(bytes))
            }
        };
        class ProviderClient extends grpc_1.makeGenericClientConstructor(services.Provider, "Provider", {}) {
            constructor(address, credentials, options) {
                super(address, credentials, options);
            }
        }
        services.ProviderClient = ProviderClient;
    })(services = trinsic.services || (trinsic.services = {}));
})(trinsic = exports.trinsic || (exports.trinsic = {}));
//# sourceMappingURL=ProviderService.js.map