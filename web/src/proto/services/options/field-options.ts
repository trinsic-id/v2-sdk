/* eslint-disable */
import _m0 from "protobufjs/minimal";

export interface AnnotationOption {
    /** Is this annotation active */
    active?: boolean;
    /** Custom annotation message to provide */
    message?: string;
}

export interface SdkTemplateOption {
    /**
     * Whether the service endpoint allows anonymous (no auth token necessary) authentication
     * This is used by the `protoc-gen-trinsic-sdk` plugin for metadata.
     */
    anonymous?: boolean;
    /**
     * Whether the SDK template generator should ignore this method. This method will
     * be wrapped manually.
     */
    ignore?: boolean;
    /**
     * Whether the SDK template generator should generate this method without arguments, eg
     * ProviderService.GetEcosystemInfo() where the request object is empty
     */
    noArguments?: boolean;
    /** This endpoint is experimental. Consider it in beta, so documentation may be incomplete or incorrect. */
    experimental?: AnnotationOption;
    /** This endpoint is deprecated. It will be removed in the future. */
    deprecated?: AnnotationOption;
}

function createBaseAnnotationOption(): AnnotationOption {
    return { active: false, message: "" };
}

export const AnnotationOption = {
    encode(
        message: AnnotationOption,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.active === true) {
            writer.uint32(8).bool(message.active);
        }
        if (message.message !== undefined && message.message !== "") {
            writer.uint32(18).string(message.message);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): AnnotationOption {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAnnotationOption();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.active = reader.bool();
                    break;
                case 2:
                    message.message = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): AnnotationOption {
        return {
            active: isSet(object.active) ? Boolean(object.active) : false,
            message: isSet(object.message) ? String(object.message) : "",
        };
    },

    toJSON(message: AnnotationOption): unknown {
        const obj: any = {};
        message.active !== undefined && (obj.active = message.active);
        message.message !== undefined && (obj.message = message.message);
        return obj;
    },

    fromPartial(object: DeepPartial<AnnotationOption>): AnnotationOption {
        const message = createBaseAnnotationOption();
        message.active = object.active ?? false;
        message.message = object.message ?? "";
        return message;
    },
};

function createBaseSdkTemplateOption(): SdkTemplateOption {
    return {
        anonymous: false,
        ignore: false,
        noArguments: false,
        experimental: undefined,
        deprecated: undefined,
    };
}

export const SdkTemplateOption = {
    encode(
        message: SdkTemplateOption,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.anonymous === true) {
            writer.uint32(8).bool(message.anonymous);
        }
        if (message.ignore === true) {
            writer.uint32(16).bool(message.ignore);
        }
        if (message.noArguments === true) {
            writer.uint32(24).bool(message.noArguments);
        }
        if (message.experimental !== undefined) {
            AnnotationOption.encode(
                message.experimental,
                writer.uint32(34).fork()
            ).ldelim();
        }
        if (message.deprecated !== undefined) {
            AnnotationOption.encode(
                message.deprecated,
                writer.uint32(42).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): SdkTemplateOption {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSdkTemplateOption();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.anonymous = reader.bool();
                    break;
                case 2:
                    message.ignore = reader.bool();
                    break;
                case 3:
                    message.noArguments = reader.bool();
                    break;
                case 4:
                    message.experimental = AnnotationOption.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                case 5:
                    message.deprecated = AnnotationOption.decode(
                        reader,
                        reader.uint32()
                    );
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): SdkTemplateOption {
        return {
            anonymous: isSet(object.anonymous)
                ? Boolean(object.anonymous)
                : false,
            ignore: isSet(object.ignore) ? Boolean(object.ignore) : false,
            noArguments: isSet(object.noArguments)
                ? Boolean(object.noArguments)
                : false,
            experimental: isSet(object.experimental)
                ? AnnotationOption.fromJSON(object.experimental)
                : undefined,
            deprecated: isSet(object.deprecated)
                ? AnnotationOption.fromJSON(object.deprecated)
                : undefined,
        };
    },

    toJSON(message: SdkTemplateOption): unknown {
        const obj: any = {};
        message.anonymous !== undefined && (obj.anonymous = message.anonymous);
        message.ignore !== undefined && (obj.ignore = message.ignore);
        message.noArguments !== undefined &&
            (obj.noArguments = message.noArguments);
        message.experimental !== undefined &&
            (obj.experimental = message.experimental
                ? AnnotationOption.toJSON(message.experimental)
                : undefined);
        message.deprecated !== undefined &&
            (obj.deprecated = message.deprecated
                ? AnnotationOption.toJSON(message.deprecated)
                : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<SdkTemplateOption>): SdkTemplateOption {
        const message = createBaseSdkTemplateOption();
        message.anonymous = object.anonymous ?? false;
        message.ignore = object.ignore ?? false;
        message.noArguments = object.noArguments ?? false;
        message.experimental =
            object.experimental !== undefined && object.experimental !== null
                ? AnnotationOption.fromPartial(object.experimental)
                : undefined;
        message.deprecated =
            object.deprecated !== undefined && object.deprecated !== null
                ? AnnotationOption.fromPartial(object.deprecated)
                : undefined;
        return message;
    },
};

type Builtin =
    | Date
    | Function
    | Uint8Array
    | string
    | number
    | boolean
    | undefined;

type DeepPartial<T> = T extends Builtin
    ? T
    : T extends Array<infer U>
    ? Array<DeepPartial<U>>
    : T extends ReadonlyArray<infer U>
    ? ReadonlyArray<DeepPartial<U>>
    : T extends {}
    ? { [K in keyof T]?: DeepPartial<T[K]> }
    : Partial<T>;

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
