/* eslint-disable */
import _m0 from "protobufjs/minimal";

export interface AnnotationOption {
    /** Is this annotation active */
    active?: boolean | undefined;
    /** Custom annotation message to provide */
    message?: string | undefined;
}

export interface SdkTemplateOption {
    /**
     * Whether the service endpoint allows anonymous (no auth token necessary) authentication
     * This is used by the `protoc-gen-trinsic-sdk` plugin for metadata.
     */
    anonymous?: boolean | undefined;
    /**
     * Whether the SDK template generator should ignore this method. This method will
     * be wrapped manually.
     */
    ignore?: boolean | undefined;
    /**
     * Whether the SDK template generator should generate this method without arguments, eg
     * ProviderService.GetEcosystemInfo() where the request object is empty
     */
    noArguments?: boolean | undefined;
    /** This endpoint is experimental. Consider it in beta, so documentation may be incomplete or incorrect. */
    experimental?: AnnotationOption | undefined;
    /** This endpoint is deprecated. It will be removed in the future. */
    deprecated?: AnnotationOption | undefined;
}

function createBaseAnnotationOption(): AnnotationOption {
    return { active: false, message: "" };
}

export const AnnotationOption = {
    encode(
        message: AnnotationOption,
        writer: _m0.Writer = _m0.Writer.create(),
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
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseAnnotationOption();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 8) {
                        break;
                    }

                    message.active = reader.bool();
                    continue;
                case 2:
                    if (tag !== 18) {
                        break;
                    }

                    message.message = reader.string();
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.active === true) {
            obj.active = message.active;
        }
        if (message.message !== undefined && message.message !== "") {
            obj.message = message.message;
        }
        return obj;
    },

    create(base?: DeepPartial<AnnotationOption>): AnnotationOption {
        return AnnotationOption.fromPartial(base ?? {});
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
        writer: _m0.Writer = _m0.Writer.create(),
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
                writer.uint32(34).fork(),
            ).ldelim();
        }
        if (message.deprecated !== undefined) {
            AnnotationOption.encode(
                message.deprecated,
                writer.uint32(42).fork(),
            ).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): SdkTemplateOption {
        const reader =
            input instanceof _m0.Reader ? input : _m0.Reader.create(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseSdkTemplateOption();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if (tag !== 8) {
                        break;
                    }

                    message.anonymous = reader.bool();
                    continue;
                case 2:
                    if (tag !== 16) {
                        break;
                    }

                    message.ignore = reader.bool();
                    continue;
                case 3:
                    if (tag !== 24) {
                        break;
                    }

                    message.noArguments = reader.bool();
                    continue;
                case 4:
                    if (tag !== 34) {
                        break;
                    }

                    message.experimental = AnnotationOption.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
                case 5:
                    if (tag !== 42) {
                        break;
                    }

                    message.deprecated = AnnotationOption.decode(
                        reader,
                        reader.uint32(),
                    );
                    continue;
            }
            if ((tag & 7) === 4 || tag === 0) {
                break;
            }
            reader.skipType(tag & 7);
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
        if (message.anonymous === true) {
            obj.anonymous = message.anonymous;
        }
        if (message.ignore === true) {
            obj.ignore = message.ignore;
        }
        if (message.noArguments === true) {
            obj.noArguments = message.noArguments;
        }
        if (message.experimental !== undefined) {
            obj.experimental = AnnotationOption.toJSON(message.experimental);
        }
        if (message.deprecated !== undefined) {
            obj.deprecated = AnnotationOption.toJSON(message.deprecated);
        }
        return obj;
    },

    create(base?: DeepPartial<SdkTemplateOption>): SdkTemplateOption {
        return SdkTemplateOption.fromPartial(base ?? {});
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
