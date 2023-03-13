using System.Diagnostics.CodeAnalysis;
using System.Text;
using System.Threading.Tasks;
using FluentAssertions;
using Google.Protobuf;
using Trinsic;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.Common.V1;
using Trinsic.Services.FileManagement.V1;
using Xunit;
using Xunit.Abstractions;

#pragma warning disable CS0618

namespace Tests;

[SuppressMessage("ReSharper", "MethodHasAsyncOverload")]
public class FileManagementServiceTests
{
    private readonly ITestOutputHelper _testOutputHelper;
    private readonly ServiceOptions _options;

    public FileManagementServiceTests(ITestOutputHelper testOutputHelper) {
        _testOutputHelper = testOutputHelper;
        _options = Tests.GetTestServiceOptions();

        _testOutputHelper.WriteLine($"Testing endpoint: {_options.FormatUrl()}");
    }
    
    [Fact]
    public async Task TestFileManagementService() {
        var trinsic = new TrinsicService(MemoryTokenProvider.StaticInstance, _options.Clone());
        await trinsic.Account.LoginAnonymousAsync("default");
        
        // uploadFile() {
        // Get raw bytes of string
        var fileBytes = Encoding.UTF8.GetBytes("Hello, world!");
        var fileMimeType = "application/text";

        var uploadResponse = trinsic.FileManagement.UploadFile(new UploadFileRequest()
        {
            Contents = ByteString.CopyFrom(fileBytes),
            MimeType = fileMimeType
        });
        //}

        uploadResponse.UploadedFile.Should().NotBeNull();
        uploadResponse.UploadedFile.Id.Should().NotBeEmpty();
        
        var fileId = uploadResponse.UploadedFile.Id;
        
        // getFile() {
        var getFileResponse = trinsic.FileManagement.GetFile(new GetFileRequest()
        {
            Id = fileId
        });
        //}

        getFileResponse.File.Should().Be(uploadResponse.UploadedFile);


        // listFiles() {
        var listFilesResponse = trinsic.FileManagement.ListFiles(new ListFilesRequest()
        {
            Query = "SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100"
        });
        // }

        listFilesResponse.Files.Count.Should().Be(1);
        listFilesResponse.Files[0].Should().Be(getFileResponse.File);

        // getStorageStats() {
        var getStorageStatsResponse = trinsic.FileManagement.GetStorageStats();
        //}

        getStorageStatsResponse.Stats.NumFiles.Should().Be(1);
        getStorageStatsResponse.Stats.TotalSize.Should().Be(getFileResponse.File.Size);

        // deleteFile() {
        trinsic.FileManagement.DeleteFile(new DeleteFileRequest()
        {
            Id = fileId
        });
        //}
        
        getStorageStatsResponse = trinsic.FileManagement.GetStorageStats();
        getStorageStatsResponse.Stats.NumFiles.Should().Be(0);
        getStorageStatsResponse.Stats.TotalSize.Should().Be(0);
    }

}