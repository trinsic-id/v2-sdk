package trinsic;

import com.google.protobuf.ByteString;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutionException;
import org.junit.jupiter.api.Assertions;
import trinsic.okapi.DidException;
import trinsic.services.TrinsicService;
import trinsic.services.filemanagement.v1.DeleteFileRequest;
import trinsic.services.filemanagement.v1.GetFileRequest;
import trinsic.services.filemanagement.v1.ListFilesRequest;
import trinsic.services.filemanagement.v1.UploadFileRequest;

public class FileManagementDemo {

  public static void main(String[] args)
      throws IOException, DidException, ExecutionException, InterruptedException {
    run();
  }

  public static void run()
      throws IOException, DidException, ExecutionException, InterruptedException {
    var trinsic = new TrinsicService(TrinsicUtilities.getTrinsicServiceOptions());
    var account = trinsic.account().loginAnonymous("default").get();

    trinsic.setAuthToken(account);

    // uploadFile() {
    // Get raw bytes of string
    byte[] fileBytes = "Hello, world!".getBytes(StandardCharsets.UTF_8);
    String fileMimeType = "application/text";

    var uploadResponse =
        trinsic
            .fileManagement()
            .uploadFile(
                UploadFileRequest.newBuilder()
                    .setContents(ByteString.copyFrom(fileBytes))
                    .setMimeType(fileMimeType)
                    .build())
            .get();
    // }

    var fileId = uploadResponse.getUploadedFile().getId();

    // getFile() {
    var getFileResponse =
        trinsic.fileManagement().getFile(GetFileRequest.newBuilder().setId(fileId).build()).get();
    // }

    // listFiles() {
    var listFilesResponse =
        trinsic
            .fileManagement()
            .listFiles(
                ListFilesRequest.newBuilder()
                    .setQuery("SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100")
                    .build())
            .get();
    // }

    Assertions.assertEquals(
        listFilesResponse.getFiles(0).getId(), uploadResponse.getUploadedFile().getId());

    // getStorageStats() {
    var getStatsResponse = trinsic.fileManagement().getStorageStats().get();
    // }

    Assertions.assertEquals(getStatsResponse.getStats().getNumFiles(), 1);
    Assertions.assertEquals(
        getStatsResponse.getStats().getTotalSize(), uploadResponse.getUploadedFile().getSize());

    // deleteFile() {
    trinsic.fileManagement().deleteFile(DeleteFileRequest.newBuilder().setId(fileId).build()).get();
    // }

    System.out.println("File Management demo successful");
    trinsic.shutdown();
  }
}
