import ServiceBase from "./ServiceBase";
import * as proto from "./proto";

import type { Client as BrowserClient } from "nice-grpc-web";

export class FileManagementService extends ServiceBase {
    client: BrowserClient<typeof proto.FileManagementDefinition>;

    constructor(options?: proto.TrinsicOptions) {
        super(options);

        this.client = this.createClient(proto.FileManagementDefinition);
    }

    // BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
    // target: /home/runner/work/sdk/sdk/web/src/FileManagementService.ts

    /** Upload a file to Trinsic's CDN
     *@deprecated This method is experimental */
    public async uploadFile(
        request: proto.UploadFileRequest
    ): Promise<proto.UploadFileResponse> {
        return this.client.uploadFile(request, {
            metadata: await this.buildMetadata(
                proto.UploadFileRequest.encode(request).finish()
            ),
        });
    }
    /** Fetch information about a file by its ID
     *@deprecated This method is experimental */
    public async getFile(
        request: proto.GetFileRequest
    ): Promise<proto.GetFileResponse> {
        return this.client.getFile(request, {
            metadata: await this.buildMetadata(
                proto.GetFileRequest.encode(request).finish()
            ),
        });
    }
    /** Delete a file by its ID
     *@deprecated This method is experimental */
    public async deleteFile(
        request: proto.DeleteFileRequest
    ): Promise<proto.DeleteFileResponse> {
        return this.client.deleteFile(request, {
            metadata: await this.buildMetadata(
                proto.DeleteFileRequest.encode(request).finish()
            ),
        });
    }
    /** List files the calling account has uploaded
     *@deprecated This method is experimental */
    public async listFiles(
        request: proto.ListFilesRequest
    ): Promise<proto.ListFilesResponse> {
        return this.client.listFiles(request, {
            metadata: await this.buildMetadata(
                proto.ListFilesRequest.encode(request).finish()
            ),
        });
    }
    /** Get statistics about files uploaded by the calling account
     *@deprecated This method is experimental */
    public async getStorageStats(): Promise<proto.GetStorageStatsResponse> {
        let request = proto.GetStorageStatsRequest.fromPartial({});
        return this.client.getStorageStats(request, {
            metadata: await this.buildMetadata(
                proto.GetStorageStatsRequest.encode(request).finish()
            ),
        });
    }
    // END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}