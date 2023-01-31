package services

import (
	"context"
	"github.com/trinsic-id/sdk/go/proto/services/filemanagement/v1/filemanagement"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestEndToEndUpload(t *testing.T) {
	assert := assert.New(t)

	trinsic, err := NewTrinsic(WithTestEnv())
	assert.Nil(err)

	trinsic.Account().LoginAnonymous(context.Background(), "default")

	// uploadFile() {
	uploadResponse, err := trinsic.FileManagement().UploadFile(context.Background(),
		&filemanagement.UploadFileRequest{
			Contents: []byte("Hello, world!"),
			MimeType: "application/text",
		})
	//}

	assert.Nil(err)

	fileId := uploadResponse.UploadedFile.Id

	// getFile() {
	getFileResponse, err := trinsic.FileManagement().GetFile(context.Background(),
		&filemanagement.GetFileRequest{
			Id: fileId,
		})
	//}

	assert.Nil(err)
	assert.Equal(getFileResponse.File, uploadResponse.UploadedFile)

	// listFiles() {
	listFilesResponse, err := trinsic.FileManagement().ListFiles(context.Background(),
		&filemanagement.ListFilesRequest{
			Query: "SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100",
		})
	// }

	assert.Nil(err)
	assert.Equal(listFilesResponse.Files[0], getFileResponse.File)

	// getStorageStats() {
	getStatsResponse, err := trinsic.FileManagement().GetStorageStats(context.Background(), &filemanagement.GetStorageStatsRequest{})
	//}

	assert.Nil(err)
	assert.Equal(1, getStatsResponse.Stats.NumFiles)
	assert.Equal(getFileResponse.String(), getStatsResponse.Stats.TotalSize)

	// deleteFile() {
	deleteResponse, err := trinsic.FileManagement().DeleteFile(context.Background(),
		&filemanagement.DeleteFileRequest{
			Id: fileId,
		})
	//}

	assert.Nil(err)
	assert.NotNil(deleteResponse)
}
