import * as pb_1 from "google-protobuf";
export declare namespace google.protobuf {
    enum NullValue {
        NULL_VALUE = 0
    }
    class Struct extends pb_1.Message {
        constructor(data?: any[] | {
            fields?: Struct.FieldsEntry[];
        });
        get fields(): Struct.FieldsEntry[];
        set fields(value: Struct.FieldsEntry[]);
        toObject(): {
            fields?: ReturnType<typeof Struct.FieldsEntry.prototype.toObject>[];
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Struct;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): Struct;
    }
    namespace Struct {
        class FieldsEntry extends pb_1.Message {
            constructor(data?: any[] | {
                key?: string;
                value?: Value;
            });
            get key(): string;
            set key(value: string);
            get value(): Value;
            set value(value: Value);
            toObject(): {
                key?: string;
                value?: ReturnType<typeof Value.prototype.toObject>;
            };
            serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
            static deserialize(bytes: Uint8Array | pb_1.BinaryReader): FieldsEntry;
            serializeBinary(): Uint8Array;
            static deserializeBinary(bytes: Uint8Array): FieldsEntry;
        }
    }
    class Value extends pb_1.Message {
        constructor(data?: any[] | ({} & (({
            null_value: NullValue;
            number_value?: never;
            string_value?: never;
            bool_value?: never;
            struct_value?: never;
            list_value?: never;
        } | {
            null_value?: never;
            number_value: number;
            string_value?: never;
            bool_value?: never;
            struct_value?: never;
            list_value?: never;
        } | {
            null_value?: never;
            number_value?: never;
            string_value: string;
            bool_value?: never;
            struct_value?: never;
            list_value?: never;
        } | {
            null_value?: never;
            number_value?: never;
            string_value?: never;
            bool_value: boolean;
            struct_value?: never;
            list_value?: never;
        } | {
            null_value?: never;
            number_value?: never;
            string_value?: never;
            bool_value?: never;
            struct_value: Struct;
            list_value?: never;
        } | {
            null_value?: never;
            number_value?: never;
            string_value?: never;
            bool_value?: never;
            struct_value?: never;
            list_value: ListValue;
        }))));
        get null_value(): NullValue;
        set null_value(value: NullValue);
        get number_value(): number;
        set number_value(value: number);
        get string_value(): string;
        set string_value(value: string);
        get bool_value(): boolean;
        set bool_value(value: boolean);
        get struct_value(): Struct;
        set struct_value(value: Struct);
        get list_value(): ListValue;
        set list_value(value: ListValue);
        toObject(): {
            null_value?: NullValue;
            number_value?: number;
            string_value?: string;
            bool_value?: boolean;
            struct_value?: ReturnType<typeof Struct.prototype.toObject>;
            list_value?: ReturnType<typeof ListValue.prototype.toObject>;
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Value;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): Value;
    }
    class ListValue extends pb_1.Message {
        constructor(data?: any[] | {
            values?: Value[];
        });
        get values(): Value[];
        set values(value: Value[]);
        toObject(): {
            values?: ReturnType<typeof Value.prototype.toObject>[];
        };
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined;
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListValue;
        serializeBinary(): Uint8Array;
        static deserializeBinary(bytes: Uint8Array): ListValue;
    }
}
