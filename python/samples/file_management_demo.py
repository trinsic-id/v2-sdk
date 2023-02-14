import asyncio
from trinsic.proto.services.filemanagement.v1 import (
    DeleteFileRequest,
    GetFileRequest,
    GetStorageStatsRequest,
    ListFilesRequest,
    UploadFileRequest,
)

from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def file_management_demo():
    config = trinsic_config()
    trinsic = TrinsicService(server_config=config)
    await trinsic.account.login_anonymous(ecosystem_id="default")

    # uploadFile() {
    # Get raw bytes of string
    file_bytes = bytes("Hello, world!", "utf-8")
    file_mime_type = "application/text"

    upload_response = await trinsic.file_management.upload_file(
        request=UploadFileRequest(file_bytes, file_mime_type)
    )
    # }

    file_id = upload_response.uploaded_file.id

    # getFile() {
    get_response = await trinsic.file_management.get_file(
        request=GetFileRequest(file_id)
    )
    # }

    # listFiles() {
    list_response = await trinsic.file_management.list_files(
        request=ListFilesRequest(
            query="SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100"
        )
    )
    # }

    assert list_response.files[0].id == file_id

    # getStorageStats() {
    get_stats_response = await trinsic.file_management.get_storage_stats(
        request=GetStorageStatsRequest()
    )
    # }

    # deleteFile() {
    await trinsic.file_management.delete_file(request=DeleteFileRequest(file_id))
    # }

    trinsic.close()


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(file_management_demo())
