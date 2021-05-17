import * as pb_1 from "google-protobuf";
export namespace google.protobuf {
    export enum NullValue {
        NULL_VALUE = 0
    }
    export class Struct extends pb_1.Message {
        constructor(data?: any[] | {
            fields?: Struct.FieldsEntry[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("fields" in data && data.fields != undefined) {
                    this.fields = data.fields;
                }
            }
        }
        get fields() {
            return pb_1.Message.getRepeatedWrapperField(this, Struct.FieldsEntry, 1) as Struct.FieldsEntry[];
        }
        set fields(value: Struct.FieldsEntry[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                fields?: ReturnType<typeof Struct.FieldsEntry.prototype.toObject>[];
            } = {};
            if (this.fields != null) {
                data.fields = this.fields.map((item: Struct.FieldsEntry) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.fields !== undefined)
                writer.writeRepeatedMessage(1, this.fields, (item: Struct.FieldsEntry) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Struct {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Struct();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.fields, () => pb_1.Message.addToRepeatedWrapperField(message, 1, Struct.FieldsEntry.deserialize(reader), Struct.FieldsEntry));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): Struct {
            return Struct.deserialize(bytes);
        }
    }
    export namespace Struct {
        export class FieldsEntry extends pb_1.Message {
            constructor(data?: any[] | {
                key?: string;
                value?: Value;
            }) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("key" in data && data.key != undefined) {
                        this.key = data.key;
                    }
                    if ("value" in data && data.value != undefined) {
                        this.value = data.value;
                    }
                }
            }
            get key() {
                return pb_1.Message.getField(this, 1) as string;
            }
            set key(value: string) {
                pb_1.Message.setField(this, 1, value);
            }
            get value() {
                return pb_1.Message.getWrapperField(this, Value, 2) as Value;
            }
            set value(value: Value) {
                pb_1.Message.setWrapperField(this, 2, value);
            }
            toObject() {
                var data: {
                    key?: string;
                    value?: ReturnType<typeof Value.prototype.toObject>;
                } = {};
                if (this.key != null) {
                    data.key = this.key;
                }
                if (this.value != null) {
                    data.value = this.value.toObject();
                }
                return data;
            }
            serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
                const writer = w || new pb_1.BinaryWriter();
                if (typeof this.key === "string" && this.key.length)
                    writer.writeString(1, this.key);
                if (this.value !== undefined)
                    writer.writeMessage(2, this.value, () => this.value.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes: Uint8Array | pb_1.BinaryReader): FieldsEntry {
                const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new FieldsEntry();
                while (reader.nextField()) {
                    if (reader.isEndGroup())
                        break;
                    switch (reader.getFieldNumber()) {
                        case 1:
                            message.key = reader.readString();
                            break;
                        case 2:
                            reader.readMessage(message.value, () => message.value = Value.deserialize(reader));
                            break;
                        default: reader.skipField();
                    }
                }
                return message;
            }
            serializeBinary(): Uint8Array {
                return this.serialize();
            }
            static deserializeBinary(bytes: Uint8Array): FieldsEntry {
                return FieldsEntry.deserialize(bytes);
            }
        }
    }
    export class Value extends pb_1.Message {
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
        })))) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [], [[1, 2, 3, 4, 5, 6]]);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("null_value" in data && data.null_value != undefined) {
                    this.null_value = data.null_value;
                }
                if ("number_value" in data && data.number_value != undefined) {
                    this.number_value = data.number_value;
                }
                if ("string_value" in data && data.string_value != undefined) {
                    this.string_value = data.string_value;
                }
                if ("bool_value" in data && data.bool_value != undefined) {
                    this.bool_value = data.bool_value;
                }
                if ("struct_value" in data && data.struct_value != undefined) {
                    this.struct_value = data.struct_value;
                }
                if ("list_value" in data && data.list_value != undefined) {
                    this.list_value = data.list_value;
                }
            }
        }
        get null_value() {
            return pb_1.Message.getField(this, 1) as NullValue;
        }
        set null_value(value: NullValue) {
            pb_1.Message.setField(this, 1, value);
        }
        get number_value() {
            return pb_1.Message.getField(this, 2) as number;
        }
        set number_value(value: number) {
            pb_1.Message.setField(this, 2, value);
        }
        get string_value() {
            return pb_1.Message.getField(this, 3) as string;
        }
        set string_value(value: string) {
            pb_1.Message.setField(this, 3, value);
        }
        get bool_value() {
            return pb_1.Message.getField(this, 4) as boolean;
        }
        set bool_value(value: boolean) {
            pb_1.Message.setField(this, 4, value);
        }
        get struct_value() {
            return pb_1.Message.getWrapperField(this, Struct, 5) as Struct;
        }
        set struct_value(value: Struct) {
            pb_1.Message.setWrapperField(this, 5, value);
        }
        get list_value() {
            return pb_1.Message.getWrapperField(this, ListValue, 6) as ListValue;
        }
        set list_value(value: ListValue) {
            pb_1.Message.setWrapperField(this, 6, value);
        }
        toObject() {
            var data: {
                null_value?: NullValue;
                number_value?: number;
                string_value?: string;
                bool_value?: boolean;
                struct_value?: ReturnType<typeof Struct.prototype.toObject>;
                list_value?: ReturnType<typeof ListValue.prototype.toObject>;
            } = {};
            if (this.null_value != null) {
                data.null_value = this.null_value;
            }
            if (this.number_value != null) {
                data.number_value = this.number_value;
            }
            if (this.string_value != null) {
                data.string_value = this.string_value;
            }
            if (this.bool_value != null) {
                data.bool_value = this.bool_value;
            }
            if (this.struct_value != null) {
                data.struct_value = this.struct_value.toObject();
            }
            if (this.list_value != null) {
                data.list_value = this.list_value.toObject();
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.null_value !== undefined)
                writer.writeEnum(1, this.null_value);
            if (this.number_value !== undefined)
                writer.writeDouble(2, this.number_value);
            if (typeof this.string_value === "string" && this.string_value.length)
                writer.writeString(3, this.string_value);
            if (this.bool_value !== undefined)
                writer.writeBool(4, this.bool_value);
            if (this.struct_value !== undefined)
                writer.writeMessage(5, this.struct_value, () => this.struct_value.serialize(writer));
            if (this.list_value !== undefined)
                writer.writeMessage(6, this.list_value, () => this.list_value.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): Value {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new Value();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        message.null_value = reader.readEnum();
                        break;
                    case 2:
                        message.number_value = reader.readDouble();
                        break;
                    case 3:
                        message.string_value = reader.readString();
                        break;
                    case 4:
                        message.bool_value = reader.readBool();
                        break;
                    case 5:
                        reader.readMessage(message.struct_value, () => message.struct_value = Struct.deserialize(reader));
                        break;
                    case 6:
                        reader.readMessage(message.list_value, () => message.list_value = ListValue.deserialize(reader));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): Value {
            return Value.deserialize(bytes);
        }
    }
    export class ListValue extends pb_1.Message {
        constructor(data?: any[] | {
            values?: Value[];
        }) {
            super();
            pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
            if (!Array.isArray(data) && typeof data == "object") {
                if ("values" in data && data.values != undefined) {
                    this.values = data.values;
                }
            }
        }
        get values() {
            return pb_1.Message.getRepeatedWrapperField(this, Value, 1) as Value[];
        }
        set values(value: Value[]) {
            pb_1.Message.setRepeatedWrapperField(this, 1, value);
        }
        toObject() {
            var data: {
                values?: ReturnType<typeof Value.prototype.toObject>[];
            } = {};
            if (this.values != null) {
                data.values = this.values.map((item: Value) => item.toObject());
            }
            return data;
        }
        serialize(w?: pb_1.BinaryWriter): Uint8Array | undefined {
            const writer = w || new pb_1.BinaryWriter();
            if (this.values !== undefined)
                writer.writeRepeatedMessage(1, this.values, (item: Value) => item.serialize(writer));
            if (!w)
                return writer.getResultBuffer();
        }
        static deserialize(bytes: Uint8Array | pb_1.BinaryReader): ListValue {
            const reader = bytes instanceof Uint8Array ? new pb_1.BinaryReader(bytes) : bytes, message = new ListValue();
            while (reader.nextField()) {
                if (reader.isEndGroup())
                    break;
                switch (reader.getFieldNumber()) {
                    case 1:
                        reader.readMessage(message.values, () => pb_1.Message.addToRepeatedWrapperField(message, 1, Value.deserialize(reader), Value));
                        break;
                    default: reader.skipField();
                }
            }
            return message;
        }
        serializeBinary(): Uint8Array {
            return this.serialize();
        }
        static deserializeBinary(bytes: Uint8Array): ListValue {
            return ListValue.deserialize(bytes);
        }
    }
}
