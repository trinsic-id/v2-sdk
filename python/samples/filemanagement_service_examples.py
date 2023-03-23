import asyncio
from trinsic.proto.services.filemanagement.v1 import (
    DeleteFileRequest,
    GetFileRequest,
    GetStorageStatsRequest,
    GetStorageStatsResponse,
    ListFilesRequest,
    UploadFileRequest,
)

from trinsic.trinsic_util import set_eventloop_policy

# createFileManagementService() {
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
file_management_service = trinsic.file_management
# }


async def file_management_demo():
    await trinsic.account.login_anonymous(ecosystem_id="default")

    # FileManagementServiceUploadFile() {
    # Get raw bytes of string
    file_bytes = bytes("Hello, world!", "utf-8")
    file_mime_type = "application/text"

    upload_response = await file_management_service.upload_file(
        request=UploadFileRequest(file_bytes, file_mime_type)
    )
    # }

    file_id = upload_response.uploaded_file.id

    # FileManagementServiceGetFile() {
    get_file_response = await file_management_service.get_file(
        request=GetFileRequest(file_id)
    )
    # }

    # FileManagementServiceListFiles() {
    list_response = await file_management_service.list_files(
        request=ListFilesRequest(
            query="SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100"
        )
    )
    # }

    assert list_response.files[0].id == file_id

    # FileManagementServiceGetStorageStats() {
    get_stats_response: GetStorageStatsResponse = (
        await file_management_service.get_storage_stats(
            request=GetStorageStatsRequest()
        )
    )
    print(f"Total file count={get_stats_response.stats.num_files}")
    # }

    # FileManagementServiceDeleteFile() {
    await file_management_service.delete_file(request=DeleteFileRequest(file_id))
    # }

    trinsic.close()


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(file_management_demo())
