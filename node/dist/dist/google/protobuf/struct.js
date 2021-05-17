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
exports.google = void 0;
const pb_1 = __importStar(require("google-protobuf"));
var google;
(function (google) {
    var protobuf;
    (function (protobuf) {
        let NullValue;
        (function (NullValue) {
            NullValue[NullValue["NULL_VALUE"] = 0] = "NULL_VALUE";
        })(NullValue = protobuf.NullValue || (protobuf.NullValue = {}));
        class Struct extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("fields" in data && data.fields != undefined) {
                        this.fields = data.fields;
                    }
                }
            }
            get fields() {
                return pb_1.Message.getRepeatedWrapperField(this, Struct.FieldsEntry, 1);
            }
            set fields(value) {
                pb_1.Message.setRepeatedWrapperField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.fields != null) {
                    data.fields = this.fields.map((item) => item.toObject());
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.fields !== undefined)
                    writer.writeRepeatedMessage(1, this.fields, (item) => item.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return Struct.deserialize(bytes);
            }
        }
        protobuf.Struct = Struct;
        (function (Struct) {
            class FieldsEntry extends pb_1.Message {
                constructor(data) {
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
                    return pb_1.Message.getField(this, 1);
                }
                set key(value) {
                    pb_1.Message.setField(this, 1, value);
                }
                get value() {
                    return pb_1.Message.getWrapperField(this, Value, 2);
                }
                set value(value) {
                    pb_1.Message.setWrapperField(this, 2, value);
                }
                toObject() {
                    var data = {};
                    if (this.key != null) {
                        data.key = this.key;
                    }
                    if (this.value != null) {
                        data.value = this.value.toObject();
                    }
                    return data;
                }
                serialize(w) {
                    const writer = w || new pb_1.BinaryWriter();
                    if (typeof this.key === "string" && this.key.length)
                        writer.writeString(1, this.key);
                    if (this.value !== undefined)
                        writer.writeMessage(2, this.value, () => this.value.serialize(writer));
                    if (!w)
                        return writer.getResultBuffer();
                }
                static deserialize(bytes) {
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
                serializeBinary() {
                    return this.serialize();
                }
                static deserializeBinary(bytes) {
                    return FieldsEntry.deserialize(bytes);
                }
            }
            Struct.FieldsEntry = FieldsEntry;
        })(Struct = protobuf.Struct || (protobuf.Struct = {}));
        class Value extends pb_1.Message {
            constructor(data) {
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
                return pb_1.Message.getField(this, 1);
            }
            set null_value(value) {
                pb_1.Message.setField(this, 1, value);
            }
            get number_value() {
                return pb_1.Message.getField(this, 2);
            }
            set number_value(value) {
                pb_1.Message.setField(this, 2, value);
            }
            get string_value() {
                return pb_1.Message.getField(this, 3);
            }
            set string_value(value) {
                pb_1.Message.setField(this, 3, value);
            }
            get bool_value() {
                return pb_1.Message.getField(this, 4);
            }
            set bool_value(value) {
                pb_1.Message.setField(this, 4, value);
            }
            get struct_value() {
                return pb_1.Message.getWrapperField(this, Struct, 5);
            }
            set struct_value(value) {
                pb_1.Message.setWrapperField(this, 5, value);
            }
            get list_value() {
                return pb_1.Message.getWrapperField(this, ListValue, 6);
            }
            set list_value(value) {
                pb_1.Message.setWrapperField(this, 6, value);
            }
            toObject() {
                var data = {};
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
            serialize(w) {
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
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return Value.deserialize(bytes);
            }
        }
        protobuf.Value = Value;
        class ListValue extends pb_1.Message {
            constructor(data) {
                super();
                pb_1.Message.initialize(this, Array.isArray(data) ? data : [], 0, -1, [1], []);
                if (!Array.isArray(data) && typeof data == "object") {
                    if ("values" in data && data.values != undefined) {
                        this.values = data.values;
                    }
                }
            }
            get values() {
                return pb_1.Message.getRepeatedWrapperField(this, Value, 1);
            }
            set values(value) {
                pb_1.Message.setRepeatedWrapperField(this, 1, value);
            }
            toObject() {
                var data = {};
                if (this.values != null) {
                    data.values = this.values.map((item) => item.toObject());
                }
                return data;
            }
            serialize(w) {
                const writer = w || new pb_1.BinaryWriter();
                if (this.values !== undefined)
                    writer.writeRepeatedMessage(1, this.values, (item) => item.serialize(writer));
                if (!w)
                    return writer.getResultBuffer();
            }
            static deserialize(bytes) {
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
            serializeBinary() {
                return this.serialize();
            }
            static deserializeBinary(bytes) {
                return ListValue.deserialize(bytes);
            }
        }
        protobuf.ListValue = ListValue;
    })(protobuf = google.protobuf || (google.protobuf = {}));
})(google = exports.google || (exports.google = {}));
//# sourceMappingURL=struct.js.map