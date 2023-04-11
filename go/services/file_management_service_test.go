package services

import (
	"context"
	"github.com/trinsic-id/sdk/go/proto/services/filemanagement/v1/filemanagement"
	"github.com/trinsic-id/sdk/go/proto/services/universalwallet/v1/wallet"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestEndToEndUpload(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, err := NewTrinsic(WithTestEnv())
	assert2.Nil(err)

	createWallet, err := trinsic.Wallet().CreateWallet(context.Background(), &wallet.CreateWalletRequest{
		EcosystemId: "default",
		Description: nil,
	})
	assert2.Nil(err)
	assert2.NotNil(createWallet.Wallet)

	trinsic, err = NewTrinsic(WithTestEnv(), WithAuthToken(createWallet.AuthToken))
	assert2.NotNil(trinsic)
	assert2.Nil(err)

	// uploadFile() {
	uploadResponse, err := trinsic.FileManagement().UploadFile(context.Background(),
		&filemanagement.UploadFileRequest{
			Contents: []byte("Hello, world!"),
			MimeType: "application/text",
		})
	//}

	assert2.Nil(err)

	fileId := uploadResponse.UploadedFile.Id

	// getFile() {
	getFileResponse, err := trinsic.FileManagement().GetFile(context.Background(),
		&filemanagement.GetFileRequest{
			Id: fileId,
		})
	//}

	assert2.Nil(err)
	assert2.Equal(getFileResponse.File, uploadResponse.UploadedFile)

	// listFiles() {
	listFilesResponse, err := trinsic.FileManagement().ListFiles(context.Background(),
		&filemanagement.ListFilesRequest{
			Query: "SELECT * FROM _ ORDER BY _.uploadDate DESC OFFSET 0 LIMIT 100",
		})
	// }

	assert2.Nil(err)
	assert2.Equal(listFilesResponse.Files[0], getFileResponse.File)

	// getStorageStats() {
	getStatsResponse, err := trinsic.FileManagement().GetStorageStats(context.Background())
	//}

	assert2.Nil(err)
	assert2.Equal(uint32(1), getStatsResponse.Stats.NumFiles)
	assert2.Equal(uint64(getFileResponse.File.Size), getStatsResponse.Stats.TotalSize)

	// deleteFile() {
	deleteResponse, err := trinsic.FileManagement().DeleteFile(context.Background(),
		&filemanagement.DeleteFileRequest{
			Id: fileId,
		})
	//}

	assert2.Nil(err)
	assert2.NotNil(deleteResponse)
}
