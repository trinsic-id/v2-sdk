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

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [UploadFile](../../../web/test/FileManagementService.test.ts) inside_block:uploadFile
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [UploadFile](../../../dotnet/Tests/FileManagementServiceTests.cs) inside_block:uploadFile
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [UploadFile](../../../python/samples/file_management_demo.py) inside_block:uploadFile
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [UploadFile](../../../go/services/file_management_service_test.go) inside_block:uploadFile
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [UploadFile](../../../java/src/test/java/trinsic/FileManagementDemo.java) inside_block:uploadFile
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.filemanagement.v1.FileManagement.UploadFile") }}

---

## Get File

Fetches information about a file via its ID.

Only files uploaded by the calling account will be returned.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetFile](../../../web/test/FileManagementService.test.ts) inside_block:getFile
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [GetFile](../../../dotnet/Tests/FileManagementServiceTests.cs) inside_block:getFile
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [GetFile](../../../python/samples/file_management_demo.py) inside_block:getFile
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [GetFile](../../../go/services/file_management_service_test.go) inside_block:getFile
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [GetFile](../../../java/src/test/java/trinsic/FileManagementDemo.java) inside_block:getFile
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.filemanagement.v1.FileManagement.GetFile") }}

---

## Delete File

Deletes a file from Trinsic's CDN.

Only files uploaded by the calling account may be deleted.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [DeleteFile](../../../web/test/FileManagementService.test.ts) inside_block:deleteFile
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [DeleteFile](../../../dotnet/Tests/FileManagementServiceTests.cs) inside_block:deleteFile
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [DeleteFile](../../../python/samples/file_management_demo.py) inside_block:deleteFile
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [DeleteFile](../../../go/services/file_management_service_test.go) inside_block:deleteFile
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [DeleteFile](../../../java/src/test/java/trinsic/FileManagementDemo.java) inside_block:deleteFile
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.filemanagement.v1.FileManagement.DeleteFile") }}

---

## List Files

Queries the files uploaded by the calling account.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [ListFiles](../../../web/test/FileManagementService.test.ts) inside_block:listFiles
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [ListFiles](../../../dotnet/Tests/FileManagementServiceTests.cs) inside_block:listFiles
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [ListFiles](../../../python/samples/file_management_demo.py) inside_block:listFiles
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [ListFiles](../../../go/services/file_management_service_test.go) inside_block:listFiles
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [ListFiles](../../../java/src/test/java/trinsic/FileManagementDemo.java) inside_block:listFiles
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.filemanagement.v1.FileManagement.ListFiles") }}

---

## Get Storage Statistics

Returns aggregate statistics regarding the files uploaded by the calling account.

{{ proto_sample_start() }}
    === "TypeScript"
        <!--codeinclude-->
        ```typescript
        [GetStorageStats](../../../web/test/FileManagementService.test.ts) inside_block:getStorageStats
        ```
        <!--/codeinclude-->

    === "C#"
        <!--codeinclude-->
        ```csharp
        [GetStorageStats](../../../dotnet/Tests/FileManagementServiceTests.cs) inside_block:getStorageStats
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [GetStorageStats](../../../python/samples/file_management_demo.py) inside_block:getStorageStats
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [GetStorageStats](../../../go/services/file_management_service_test.go) inside_block:getStorageStats
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [GetStorageStats](../../../java/src/test/java/trinsic/FileManagementDemo.java) inside_block:getStorageStats
        ```
        <!--/codeinclude-->

{{ proto_method_tabs("services.filemanagement.v1.FileManagement.GetStorageStats") }}