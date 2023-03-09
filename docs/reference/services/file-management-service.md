# File Management Service

The File Management Service allows files to be uploaded and thereafter managed by Issuers.

!!! tip "Restricted Experimental Service"
    This service exists as an experiment to enable rapid prototyping of certain use-cases, such as linking to files / binary data
    within Credentials.

    Ecosystems must be on a paid plan in order to make use of this service.

!!! warning "Data Security Precautions"
    Any file uploaded through this service is accessible over the internet to anyone who has the URL.

    Although the URLs are extremely long and securely generated (thus are extremely costly to brute force), we do not recommend
    storing highly-sensitive files or documents via the File Management Service.

    For example, government-issued IDs, social security cards, birth certificates, passports, etc. should **not** be uploaded to this service.

---

## Upload File

Uploads a file to Trinsic's CDN.

`contents` must be the raw contents of the file, with a current maximum of 4 megabytes (`4,194,304` bytes).

`mime_type` must be the [MIME Type <small>:material-open-in-new:</small>](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types){target=_blank} of the file you are uploading. This determines the file's resulting extension, as well as how it is treated when opened by a browser (displayed as an image, downloaded directly, etc.).

If you do not know the MIME Type of the file being uploaded, or otherwise cannot provide it, use `application/octet-stream` as a safe default.



The URL returned by this endpoint will contain a [Hashlink <small>:material-open-in-new:</small>](https://w3c-ccg.github.io/hashlink/){target=_blank} query parameter, in the form of `?hl={hash}`. The value of `hash` is a [Multihash <small>:material-open-in-new:</small>](https://multiformats.io/multihash/){target=_blank} string, encoding the hash of the uploaded file contents.

The `hl` parameter is expected to be included with the URL whenever it is issued in a credential. This allows the cryptographic signature to cover the contents of the file (through its hash), without having to include the entire raw file contents in the credential itself.


{{ proto_sample_start("services.filemanagement.v1.FileManagement.UploadFile") }}
{{ proto_sample_code("services.filemanagement.v1.FileManagement.UploadFile") }}
{{ proto_method_tabs("services.filemanagement.v1.FileManagement.UploadFile") }}

---

## Get File

Fetches information about a file via its ID.

Only files uploaded by the calling account will be returned.

{{ proto_sample_start("services.filemanagement.v1.FileManagement.GetFile") }}
{{ proto_sample_code("services.filemanagement.v1.FileManagement.GetFile") }}
{{ proto_method_tabs("services.filemanagement.v1.FileManagement.GetFile") }}

---

## Delete File

Deletes a file from Trinsic's CDN.

Only files uploaded by the calling account may be deleted.

{{ proto_sample_start("services.filemanagement.v1.FileManagement.DeleteFile") }}
{{ proto_sample_code("services.filemanagement.v1.FileManagement.DeleteFile") }}
{{ proto_method_tabs("services.filemanagement.v1.FileManagement.DeleteFile") }}

---

## List Files

Queries the files uploaded by the calling account.

{{ proto_sample_start("services.filemanagement.v1.FileManagement.ListFiles") }}
{{ proto_sample_code("services.filemanagement.v1.FileManagement.ListFiles") }}
{{ proto_method_tabs("services.filemanagement.v1.FileManagement.ListFiles") }}

---

## Get Storage Statistics

Returns aggregate statistics regarding the files uploaded by the calling account.

{{ proto_sample_start("services.filemanagement.v1.FileManagement.GetStorageStats") }}
{{ proto_sample_code("services.filemanagement.v1.FileManagement.GetStorageStats") }}
{{ proto_method_tabs("services.filemanagement.v1.FileManagement.GetStorageStats") }}
