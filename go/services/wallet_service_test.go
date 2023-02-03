package services

import (
	"context"
	"encoding/json"
	"github.com/trinsic-id/sdk/go/proto/services/universalwallet/v1/wallet"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestWalletService(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, err := CreateTestTrinsicWithNewEcosystem()
	assert2.Nil(err)

	// Get account info to learn the ecosystem name
	accountInfo, err := trinsic.Account().GetInfo(context.Background())
	assert2.Nil(err)

	// Create a new account in the ecosystem
	_, err = trinsic.Account().LoginAnonymous(context.Background(), accountInfo.EcosystemId)
	assert2.Nil(err)

	// Get account info again to get new wallet ID
	accountInfo, err = trinsic.Account().GetInfo(context.Background())
	assert2.Nil(err)

	walletId := accountInfo.WalletId

	valuesBytes, _ := json.Marshal(struct{ name string }{name: "A Realperson"})
	credentialJson := string(valuesBytes)

	// insertItemWallet() {
	insertResponse, err := trinsic.Wallet().InsertItem(context.Background(), &wallet.InsertItemRequest{
		ItemJson: credentialJson,
		ItemType: "VerifiableCredential",
	})
	// }

	assert2.NotNil(insertResponse)
	assert2.Nil(err)

	itemId := insertResponse.ItemId

	// getItem() {
	getResponse, err := trinsic.Wallet().GetItem(context.Background(), &wallet.GetItemRequest{
		ItemId: itemId,
	})
	//}

	assert2.Nil(err)
	assert2.NotNil(getResponse)

	// deleteItem() {
	deleteResponse, err := trinsic.Wallet().DeleteItem(context.Background(),
		&wallet.DeleteItemRequest{
			ItemId: itemId,
		})
	//}

	assert2.Nil(err)
	assert2.NotNil(deleteResponse)

	// searchWalletBasic() {
	searchResponse, err := trinsic.Wallet().SearchWallet(context.Background(), &wallet.SearchRequest{})
	// }

	assert2.NotNil(searchResponse)
	assert2.Nil(err)

	// deleteWallet() {
	deleteWalletResponse, err := trinsic.Wallet().DeleteWallet(context.Background(),
		&wallet.DeleteWalletRequest{
			Account: &wallet.DeleteWalletRequest_WalletId{
				WalletId: walletId,
			},
		})
	//}

	assert2.Nil(err)
	assert2.Nil(deleteWalletResponse)
}
