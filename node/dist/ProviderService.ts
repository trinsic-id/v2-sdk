import * as dep_1 from "./google\\protobuf\\struct";
import * as pb_1 from "google-protobuf";
import * as grpc_1 from "@grpc/grpc-js";
export namespace trinsic.services {
    export enum ParticipantType {
        participant_type_individual = 0,
        participant_type_organization = 1
    }
    export class InviteRequest extends pb_1.Message {
        constructor(data?: any[] | ({
            participant?: ParticipantType;
            description?: string;
        } & (({
            email: string;
            phone?: never;
            didcomm_invitation?: never;
        } | {
            email?: never;
            phone: string;
            didcomm_invitation?: never;
        } | {
            email?: never;
            phone?: never;
            didcomm_invitation: InviteRequest.DidCommInvitation;
        })))) {
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
            return pb_1.Message.getField(this, 1) as ParticipantType;
        }
        set participant(value: ParticipantType) {
            pb_1.Message.setField(this, 1, value);
        }
        get description() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set description(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        get email() {
            return pb_1.Message.getField(this, 5) as string;
        }
        set email(value: string) {
            pb_1.Message.setField(this, 5, value);
        }
        get phone() {
            return pb_1.Message.getField(this, 6) as string;
        }
        set phone(value: string) {
            pb_1.Message.setField(this, 6, value);
        }
        get didcomm_invitation() {
            return pb_1.Message.getWrapperField(this, InviteRequest.DidCommInvitation, 7) as InviteRequest.DidCommInvitation;
        }
        set didcomm_invitation(value: InviteRequest.DidCommInvitation) {
            pb_1.Message.setWrapperField(this, 7, value);
        }
        toObject() {
            var data: {
                participant?: ParticipantType;
                description?: string;
                email?: string;
                phone?: string;
                didcomm_invitation?: ReturnType<typeof InviteRequest.DidCommInvitation.prototype.toObject>;
            } = {};
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
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
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
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InviteRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InviteRequest {
            return InviteRequest.deserialize(bytes);
        }
    }
    export namespace InviteRequest {
        export class DidCommInvitation extends pb_1.Message {
            constructor(data?: any[] | {}) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") { }
            }
            toObject() {
                var data: {} = {};
                return data;
            }
            serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
                const writer = w || new pb_1.BinaryWriter();
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes: Uint8Array | pb_1.BinaryReader): DidCommInvitation {
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
            serializeBinary(): Uint8Array {
                return this.serialize();
            }
            static deserializeBinary(bytes: Uint8Array): DidCommInvitation {
                return DidCommInvitation.deserialize(bytes);
            }
        }
    }
    export class InviteResponse extends pb_1.Message {
        constructor(data?: any[] | {
            invitation_id?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("invitation_id" in data && data.invitation_id != undefined) {
                    this.invitation_id = data.invitation_id;
                }
            }
        }
        get invitation_id() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set invitation_id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                invitation_id?: string;
            } = {};
            if (this.invitation_id != null) {
                data.invitation_id = this.invitation_id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.invitation_id === "string" && this.invitation_id.length)
                writer.writeString(1, this.invitation_id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InviteResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InviteResponse {
            return InviteResponse.deserialize(bytes);
        }
    }
    export class InvitationStatusRequest extends pb_1.Message {
        constructor(data?: any[] | {
            invitation_id?: string;
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("invitation_id" in data && data.invitation_id != undefined) {
                    this.invitation_id = data.invitation_id;
                }
            }
        }
        get invitation_id() {
            return pb_1.Message.getField(this, 1) as string;
        }
        set invitation_id(value: string) {
            pb_1.Message.setField(this, 1, value);
        }
        toObject() {
            var data: {
                invitation_id?: string;
            } = {};
            if (this.invitation_id != null) {
                data.invitation_id = this.invitation_id;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (typeof this.invitation_id === "string" && this.invitation_id.length)
                writer.writeString(1, this.invitation_id);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InvitationStatusRequest {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InvitationStatusRequest {
            return InvitationStatusRequest.deserialize(bytes);
        }
    }
    export class InvitationStatusResponse extends pb_1.Message {
        constructor(data?: any[] | {
            status?: InvitationStatusResponse.Status;
            status_details?: string;
        }) {
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
            return pb_1.Message.getField(this, 1) as InvitationStatusResponse.Status;
        }
        set status(value: InvitationStatusResponse.Status) {
            pb_1.Message.setField(this, 1, value);
        }
        get status_details() {
            return pb_1.Message.getField(this, 2) as string;
        }
        set status_details(value: string) {
            pb_1.Message.setField(this, 2, value);
        }
        toObject() {
            var data: {
                status?: InvitationStatusResponse.Status;
                status_details?: string;
            } = {};
            if (this.status != null) {
                data.status = this.status;
            }
            if (this.status_details != null) {
                data.status_details = this.status_details;
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.status !== undefined)
                writer.writeEnum(1, this.status);
            if (typeof this.status_details === "string" && this.status_details.length)
                writer.writeString(2, this.status_details);
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): InvitationStatusResponse {
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
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): InvitationStatusResponse {
            return InvitationStatusResponse.deserialize(bytes);
        }
    }
    export namespace InvitationStatusResponse {
        export enum Status {
            Error = 0,
            InvitationSent = 1,
            Completed = 2
        }
    }
    export interface IProviderService extends grpc_1.ServiceDefinition<grpc_1.UntypedServiceImplementation> {
        Invite: grpc_1.MethodDefinition<InviteRequest, InviteResponse>;
        InviteWithWorkflow: grpc_1.MethodDefinition<InviteRequest, InviteResponse>;
        InvitationStatus: grpc_1.MethodDefinition<InvitationStatusRequest, InvitationStatusResponse>;
    }
    export interface IProviderServer extends grpc_1.UntypedServiceImplementation {
        Invite: grpc_1.handleUnaryCall<InviteRequest, InviteResponse>;
        InviteWithWorkflow: grpc_1.handleUnaryCall<InviteRequest, InviteResponse>;
        InvitationStatus: grpc_1.handleUnaryCall<InvitationStatusRequest, InvitationStatusResponse>;
    }
    export const Provider = {
        Invite: {
            path: "/trinsic.services.Provider/Invite",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: InviteRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => InviteRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: InviteResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => InviteResponse.deserialize(new Uint8Array(bytes))
        },
        InviteWithWorkflow: {
            path: "/trinsic.services.Provider/InviteWithWorkflow",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: InviteRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => InviteRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: InviteResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => InviteResponse.deserialize(new Uint8Array(bytes))
        },
        InvitationStatus: {
            path: "/trinsic.services.Provider/InvitationStatus",
            requestStream: false,
            responseStream: false,
            requestSerialize: (message: InvitationStatusRequest) => Buffer.from(message.serialize()),
            requestDeserialize: (bytes: Buffer) => InvitationStatusRequest.deserialize(new Uint8Array(bytes)),
            responseSerialize: (message: InvitationStatusResponse) => Buffer.from(message.serialize()),
            responseDeserialize: (bytes: Buffer) => InvitationStatusResponse.deserialize(new Uint8Array(bytes))
        }
    };
    export class ProviderClient extends grpc_1.makeGenericClientConstructor(Provider, "Provider", {}) {
        constructor(address: string, credentials: grpc_1.ChannelCredentials, options?: Partial<grpc_1.ChannelOptions>) {
            super(address, credentials, options)
        }
    }
}
