import {
    UploadFileRequest,
    GetFileRequest,
    ListFilesRequest,
    DeleteFileRequest,
    TrinsicService,
} from "../node";

import { getTestServerOptions, myEcosystemIdOrName, setTestTimeout } from "./env";

describe("FileManagementService Unit Tests", () => {
    setTestTimeout();

    it("end-to-end test", async () => {
        let trinsic = new TrinsicService(getTestServerOptions());
        var response = await trinsic.wallet().createWallet({ ecosystemId: myEcosystemIdOrName()});
        trinsic.options.authToken = response.authToken;

        // uploadFile() {
        // Get raw bytes of string
        const fileBytes = new TextEncoder().encode("Hello, world!");
        const fileMimeType = "application/text";

        const uploadResponse = await trinsic.fileManagement().uploadFile(
            UploadFileRequest.fromPartial({
                contents: fileBytes,
                mimeType: fileMimeType
            })
        );
        //}

        expect(uploadResponse.uploadedFile?.id).not.toBeNull();

        const fileId = uploadResponse.uploadedFile?.id;

        // getFile() {
        const getFileResponse = await trinsic.fileManagement().getFile(
            GetFileRequest.fromPartial({
                id: fileId
            })
        );
        //}

        expect(getFileResponse.file?.id).toBe(fileId);
        expect(getFileResponse.file?.mimeType).toBe(fileMimeType);

        // listFiles() {
        const listFilesResponse = await trinsic.fileManagement().listFiles(
            ListFilesRequest.fromPartial({
                query: "SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100"
            })
        );
        // }

        expect(listFilesResponse.files?.length).toBe(1);
        // @ts-ignore
        expect(listFilesResponse.files[0].id).toBe(fileId);

        // getStorageStats() {
        const getStorageStatsResponse = await trinsic.fileManagement().getStorageStats();
        //}

        expect(getStorageStatsResponse.stats?.numFiles).toBe(1);
        expect(getStorageStatsResponse.stats?.totalSize).toBe(getFileResponse.file?.size);

        // deleteFile() {
        await trinsic.fileManagement().deleteFile(
            DeleteFileRequest.fromPartial({
                id: fileId
            })
        );
        //}

        const afterDeleteStorageStatsResponse = await trinsic.fileManagement().getStorageStats();
        expect(afterDeleteStorageStatsResponse.stats?.numFiles).toBe(0);
    });

});
