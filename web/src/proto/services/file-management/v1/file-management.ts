/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";

/** Contains information about a file stored in Trinsic's CDN */
export interface File {
    /** ID of file, generated randomly by Trinsic on upload */
    id?: string;
    /** Wallet ID of uploader */
    uploaderId?: string;
    /** Size, in bytes, of file */
    size?: number;
    /** Uploader-provided MIME type of file */
    mimeType?: string;
    /** ISO 8601 timestamp of when file was uploaded to Trinsic */
    uploaded?: string;
    /** CDN URL of file */
    url?: string;
}

/** Represents aggregate statistics of all files uploaded by a single issuer */
export interface StorageStats {
    /** Number of files uploaded by this account */
    numFiles?: number;
    /** Sum total size of all files, in bytes */
    totalSize?: number;
}

/** Request to upload a file to Trinsic's CDN */
export interface UploadFileRequest {
    /** Raw content of file */
    contents?: Uint8Array;
    /** MIME type describing file contents */
    mimeType?: string;
}

/** Response to `UploadFileRequest` */
export interface UploadFileResponse {
    /** Information about newly-uploaded file */
    uploadedFile?: File;
}

/** Request to fetch information about a stored file */
export interface GetFileRequest {
    /** ID of file to fetch */
    id?: string;
}

/** Response to `GetFileRequest` */
export interface GetFileResponse {
    /** File specified by `id` parameter of `GetFileRequest`. */
    file?: File;
}

/** Request to delete a file from Trinsic's CDN by ID */
export interface DeleteFileRequest {
    /** ID of file to delete */
    id?: string;
}

/** Response to `DeleteFileRequest`. Empty payload. */
export interface DeleteFileResponse {}

/** Request to list files */
export interface ListFilesRequest {
    /** Query to search with. If not specified, will return the most recent 100 files. */
    query?: string;
    /**
     * Token provided by previous `ListFilesRequest`
     * if more data is available for query
     */
    continuationToken?: string;
}

/** Response to `ListFilesRequest` */
export interface ListFilesResponse {
    /** Files found by query */
    files?: File[];
    /** Whether more results are available for this query via `continuation_token` */
    hasMoreResults?: boolean;
    /** Token to fetch next set of resuts via `ListFilesRequest` */
    continuationToken?: string;
}

/** Request to get statistics about files uploaded by this account */
export interface GetStorageStatsRequest {}

/** Response to `GetStorageStatsRequest` */
export interface GetStorageStatsResponse {
    /** Statistics about files uploaded by the calling account */
    stats?: StorageStats;
}

function createBaseFile(): File {
    return {
        id: "",
        uploaderId: "",
        size: 0,
        mimeType: "",
        uploaded: "",
        url: "",
    };
}

export const File = {
    encode(
        message: File,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        if (message.uploaderId !== undefined && message.uploaderId !== "") {
            writer.uint32(18).string(message.uploaderId);
        }
        if (message.size !== undefined && message.size !== 0) {
            writer.uint32(24).uint32(message.size);
        }
        if (message.mimeType !== undefined && message.mimeType !== "") {
            writer.uint32(34).string(message.mimeType);
        }
        if (message.uploaded !== undefined && message.uploaded !== "") {
            writer.uint32(42).string(message.uploaded);
        }
        if (message.url !== undefined && message.url !== "") {
            writer.uint32(50).string(message.url);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): File {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseFile();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.id = reader.string();
                    break;
                case 2:
                    message.uploaderId = reader.string();
                    break;
                case 3:
                    message.size = reader.uint32();
                    break;
                case 4:
                    message.mimeType = reader.string();
                    break;
                case 5:
                    message.uploaded = reader.string();
                    break;
                case 6:
                    message.url = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): File {
        return {
            id: isSet(object.id) ? String(object.id) : "",
            uploaderId: isSet(object.uploaderId)
                ? String(object.uploaderId)
                : "",
            size: isSet(object.size) ? Number(object.size) : 0,
            mimeType: isSet(object.mimeType) ? String(object.mimeType) : "",
            uploaded: isSet(object.uploaded) ? String(object.uploaded) : "",
            url: isSet(object.url) ? String(object.url) : "",
        };
    },

    toJSON(message: File): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        message.uploaderId !== undefined &&
            (obj.uploaderId = message.uploaderId);
        message.size !== undefined && (obj.size = Math.round(message.size));
        message.mimeType !== undefined && (obj.mimeType = message.mimeType);
        message.uploaded !== undefined && (obj.uploaded = message.uploaded);
        message.url !== undefined && (obj.url = message.url);
        return obj;
    },

    fromPartial(object: DeepPartial<File>): File {
        const message = createBaseFile();
        message.id = object.id ?? "";
        message.uploaderId = object.uploaderId ?? "";
        message.size = object.size ?? 0;
        message.mimeType = object.mimeType ?? "";
        message.uploaded = object.uploaded ?? "";
        message.url = object.url ?? "";
        return message;
    },
};

function createBaseStorageStats(): StorageStats {
    return { numFiles: 0, totalSize: 0 };
}

export const StorageStats = {
    encode(
        message: StorageStats,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.numFiles !== undefined && message.numFiles !== 0) {
            writer.uint32(8).uint32(message.numFiles);
        }
        if (message.totalSize !== undefined && message.totalSize !== 0) {
            writer.uint32(16).uint64(message.totalSize);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): StorageStats {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseStorageStats();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.numFiles = reader.uint32();
                    break;
                case 2:
                    message.totalSize = longToNumber(reader.uint64() as Long);
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): StorageStats {
        return {
            numFiles: isSet(object.numFiles) ? Number(object.numFiles) : 0,
            totalSize: isSet(object.totalSize) ? Number(object.totalSize) : 0,
        };
    },

    toJSON(message: StorageStats): unknown {
        const obj: any = {};
        message.numFiles !== undefined &&
            (obj.numFiles = Math.round(message.numFiles));
        message.totalSize !== undefined &&
            (obj.totalSize = Math.round(message.totalSize));
        return obj;
    },

    fromPartial(object: DeepPartial<StorageStats>): StorageStats {
        const message = createBaseStorageStats();
        message.numFiles = object.numFiles ?? 0;
        message.totalSize = object.totalSize ?? 0;
        return message;
    },
};

function createBaseUploadFileRequest(): UploadFileRequest {
    return { contents: new Uint8Array(), mimeType: "" };
}

export const UploadFileRequest = {
    encode(
        message: UploadFileRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.contents !== undefined && message.contents.length !== 0) {
            writer.uint32(10).bytes(message.contents);
        }
        if (message.mimeType !== undefined && message.mimeType !== "") {
            writer.uint32(18).string(message.mimeType);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): UploadFileRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUploadFileRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.contents = reader.bytes();
                    break;
                case 2:
                    message.mimeType = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): UploadFileRequest {
        return {
            contents: isSet(object.contents)
                ? bytesFromBase64(object.contents)
                : new Uint8Array(),
            mimeType: isSet(object.mimeType) ? String(object.mimeType) : "",
        };
    },

    toJSON(message: UploadFileRequest): unknown {
        const obj: any = {};
        message.contents !== undefined &&
            (obj.contents = base64FromBytes(
                message.contents !== undefined
                    ? message.contents
                    : new Uint8Array()
            ));
        message.mimeType !== undefined && (obj.mimeType = message.mimeType);
        return obj;
    },

    fromPartial(object: DeepPartial<UploadFileRequest>): UploadFileRequest {
        const message = createBaseUploadFileRequest();
        message.contents = object.contents ?? new Uint8Array();
        message.mimeType = object.mimeType ?? "";
        return message;
    },
};

function createBaseUploadFileResponse(): UploadFileResponse {
    return { uploadedFile: undefined };
}

export const UploadFileResponse = {
    encode(
        message: UploadFileResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.uploadedFile !== undefined) {
            File.encode(
                message.uploadedFile,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): UploadFileResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseUploadFileResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.uploadedFile = File.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): UploadFileResponse {
        return {
            uploadedFile: isSet(object.uploadedFile)
                ? File.fromJSON(object.uploadedFile)
                : undefined,
        };
    },

    toJSON(message: UploadFileResponse): unknown {
        const obj: any = {};
        message.uploadedFile !== undefined &&
            (obj.uploadedFile = message.uploadedFile
                ? File.toJSON(message.uploadedFile)
                : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<UploadFileResponse>): UploadFileResponse {
        const message = createBaseUploadFileResponse();
        message.uploadedFile =
            object.uploadedFile !== undefined && object.uploadedFile !== null
                ? File.fromPartial(object.uploadedFile)
                : undefined;
        return message;
    },
};

function createBaseGetFileRequest(): GetFileRequest {
    return { id: "" };
}

export const GetFileRequest = {
    encode(
        message: GetFileRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): GetFileRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetFileRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.id = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): GetFileRequest {
        return {
            id: isSet(object.id) ? String(object.id) : "",
        };
    },

    toJSON(message: GetFileRequest): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        return obj;
    },

    fromPartial(object: DeepPartial<GetFileRequest>): GetFileRequest {
        const message = createBaseGetFileRequest();
        message.id = object.id ?? "";
        return message;
    },
};

function createBaseGetFileResponse(): GetFileResponse {
    return { file: undefined };
}

export const GetFileResponse = {
    encode(
        message: GetFileResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.file !== undefined) {
            File.encode(message.file, writer.uint32(10).fork()).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): GetFileResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetFileResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.file = File.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): GetFileResponse {
        return {
            file: isSet(object.file) ? File.fromJSON(object.file) : undefined,
        };
    },

    toJSON(message: GetFileResponse): unknown {
        const obj: any = {};
        message.file !== undefined &&
            (obj.file = message.file ? File.toJSON(message.file) : undefined);
        return obj;
    },

    fromPartial(object: DeepPartial<GetFileResponse>): GetFileResponse {
        const message = createBaseGetFileResponse();
        message.file =
            object.file !== undefined && object.file !== null
                ? File.fromPartial(object.file)
                : undefined;
        return message;
    },
};

function createBaseDeleteFileRequest(): DeleteFileRequest {
    return { id: "" };
}

export const DeleteFileRequest = {
    encode(
        message: DeleteFileRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.id !== undefined && message.id !== "") {
            writer.uint32(10).string(message.id);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): DeleteFileRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteFileRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.id = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): DeleteFileRequest {
        return {
            id: isSet(object.id) ? String(object.id) : "",
        };
    },

    toJSON(message: DeleteFileRequest): unknown {
        const obj: any = {};
        message.id !== undefined && (obj.id = message.id);
        return obj;
    },

    fromPartial(object: DeepPartial<DeleteFileRequest>): DeleteFileRequest {
        const message = createBaseDeleteFileRequest();
        message.id = object.id ?? "";
        return message;
    },
};

function createBaseDeleteFileResponse(): DeleteFileResponse {
    return {};
}

export const DeleteFileResponse = {
    encode(
        _: DeleteFileResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): DeleteFileResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseDeleteFileResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(_: any): DeleteFileResponse {
        return {};
    },

    toJSON(_: DeleteFileResponse): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(_: DeepPartial<DeleteFileResponse>): DeleteFileResponse {
        const message = createBaseDeleteFileResponse();
        return message;
    },
};

function createBaseListFilesRequest(): ListFilesRequest {
    return { query: "", continuationToken: "" };
}

export const ListFilesRequest = {
    encode(
        message: ListFilesRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.query !== undefined && message.query !== "") {
            writer.uint32(10).string(message.query);
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            writer.uint32(18).string(message.continuationToken);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): ListFilesRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListFilesRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.query = reader.string();
                    break;
                case 2:
                    message.continuationToken = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): ListFilesRequest {
        return {
            query: isSet(object.query) ? String(object.query) : "",
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: ListFilesRequest): unknown {
        const obj: any = {};
        message.query !== undefined && (obj.query = message.query);
        message.continuationToken !== undefined &&
            (obj.continuationToken = message.continuationToken);
        return obj;
    },

    fromPartial(object: DeepPartial<ListFilesRequest>): ListFilesRequest {
        const message = createBaseListFilesRequest();
        message.query = object.query ?? "";
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseListFilesResponse(): ListFilesResponse {
    return { files: [], hasMoreResults: false, continuationToken: "" };
}

export const ListFilesResponse = {
    encode(
        message: ListFilesResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.files !== undefined && message.files.length !== 0) {
            for (const v of message.files) {
                File.encode(v!, writer.uint32(10).fork()).ldelim();
            }
        }
        if (message.hasMoreResults === true) {
            writer.uint32(16).bool(message.hasMoreResults);
        }
        if (
            message.continuationToken !== undefined &&
            message.continuationToken !== ""
        ) {
            writer.uint32(26).string(message.continuationToken);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): ListFilesResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseListFilesResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.files!.push(File.decode(reader, reader.uint32()));
                    break;
                case 2:
                    message.hasMoreResults = reader.bool();
                    break;
                case 3:
                    message.continuationToken = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): ListFilesResponse {
        return {
            files: Array.isArray(object?.files)
                ? object.files.map((e: any) => File.fromJSON(e))
                : [],
            hasMoreResults: isSet(object.hasMoreResults)
                ? Boolean(object.hasMoreResults)
                : false,
            continuationToken: isSet(object.continuationToken)
                ? String(object.continuationToken)
                : "",
        };
    },

    toJSON(message: ListFilesResponse): unknown {
        const obj: any = {};
        if (message.files) {
            obj.files = message.files.map((e) =>
                e ? File.toJSON(e) : undefined
            );
        } else {
            obj.files = [];
        }
        message.hasMoreResults !== undefined &&
            (obj.hasMoreResults = message.hasMoreResults);
        message.continuationToken !== undefined &&
            (obj.continuationToken = message.continuationToken);
        return obj;
    },

    fromPartial(object: DeepPartial<ListFilesResponse>): ListFilesResponse {
        const message = createBaseListFilesResponse();
        message.files = object.files?.map((e) => File.fromPartial(e)) || [];
        message.hasMoreResults = object.hasMoreResults ?? false;
        message.continuationToken = object.continuationToken ?? "";
        return message;
    },
};

function createBaseGetStorageStatsRequest(): GetStorageStatsRequest {
    return {};
}

export const GetStorageStatsRequest = {
    encode(
        _: GetStorageStatsRequest,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): GetStorageStatsRequest {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetStorageStatsRequest();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(_: any): GetStorageStatsRequest {
        return {};
    },

    toJSON(_: GetStorageStatsRequest): unknown {
        const obj: any = {};
        return obj;
    },

    fromPartial(
        _: DeepPartial<GetStorageStatsRequest>
    ): GetStorageStatsRequest {
        const message = createBaseGetStorageStatsRequest();
        return message;
    },
};

function createBaseGetStorageStatsResponse(): GetStorageStatsResponse {
    return { stats: undefined };
}

export const GetStorageStatsResponse = {
    encode(
        message: GetStorageStatsResponse,
        writer: _m0.Writer = _m0.Writer.create()
    ): _m0.Writer {
        if (message.stats !== undefined) {
            StorageStats.encode(
                message.stats,
                writer.uint32(10).fork()
            ).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number
    ): GetStorageStatsResponse {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseGetStorageStatsResponse();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.stats = StorageStats.decode(
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

    fromJSON(object: any): GetStorageStatsResponse {
        return {
            stats: isSet(object.stats)
                ? StorageStats.fromJSON(object.stats)
                : undefined,
        };
    },

    toJSON(message: GetStorageStatsResponse): unknown {
        const obj: any = {};
        message.stats !== undefined &&
            (obj.stats = message.stats
                ? StorageStats.toJSON(message.stats)
                : undefined);
        return obj;
    },

    fromPartial(
        object: DeepPartial<GetStorageStatsResponse>
    ): GetStorageStatsResponse {
        const message = createBaseGetStorageStatsResponse();
        message.stats =
            object.stats !== undefined && object.stats !== null
                ? StorageStats.fromPartial(object.stats)
                : undefined;
        return message;
    },
};

export type FileManagementDefinition = typeof FileManagementDefinition;
export const FileManagementDefinition = {
    name: "FileManagement",
    fullName: "services.filemanagement.v1.FileManagement",
    methods: {
        /** Upload a file to Trinsic's CDN */
        uploadFile: {
            name: "UploadFile",
            requestType: UploadFileRequest,
            requestStream: false,
            responseType: UploadFileResponse,
            responseStream: false,
            options: {},
        },
        /** Fetch information about a file by its ID */
        getFile: {
            name: "GetFile",
            requestType: GetFileRequest,
            requestStream: false,
            responseType: GetFileResponse,
            responseStream: false,
            options: {},
        },
        /** Delete a file by its ID */
        deleteFile: {
            name: "DeleteFile",
            requestType: DeleteFileRequest,
            requestStream: false,
            responseType: DeleteFileResponse,
            responseStream: false,
            options: {},
        },
        /** List files the calling account has uploaded */
        listFiles: {
            name: "ListFiles",
            requestType: ListFilesRequest,
            requestStream: false,
            responseType: ListFilesResponse,
            responseStream: false,
            options: {},
        },
        /** Get statistics about files uploaded by the calling account */
        getStorageStats: {
            name: "GetStorageStats",
            requestType: GetStorageStatsRequest,
            requestStream: false,
            responseType: GetStorageStatsResponse,
            responseStream: false,
            options: {},
        },
    },
} as const;

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var globalThis: any = (() => {
    if (typeof globalThis !== "undefined") return globalThis;
    if (typeof self !== "undefined") return self;
    if (typeof window !== "undefined") return window;
    if (typeof global !== "undefined") return global;
    throw "Unable to locate global object";
})();

function bytesFromBase64(b64: string): Uint8Array {
    if (globalThis.Buffer) {
        return Uint8Array.from(globalThis.Buffer.from(b64, "base64"));
    } else {
        const bin = globalThis.atob(b64);
        const arr = new Uint8Array(bin.length);
        for (let i = 0; i < bin.length; ++i) {
            arr[i] = bin.charCodeAt(i);
        }
        return arr;
    }
}

function base64FromBytes(arr: Uint8Array): string {
    if (globalThis.Buffer) {
        return globalThis.Buffer.from(arr).toString("base64");
    } else {
        const bin: string[] = [];
        arr.forEach((byte) => {
            bin.push(String.fromCharCode(byte));
        });
        return globalThis.btoa(bin.join(""));
    }
}

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

function longToNumber(long: Long): number {
    if (long.gt(Number.MAX_SAFE_INTEGER)) {
        throw new globalThis.Error(
            "Value is larger than Number.MAX_SAFE_INTEGER"
        );
    }
    return long.toNumber();
}

if (_m0.util.Long !== Long) {
    _m0.util.Long = Long as any;
    _m0.configure();
}

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
