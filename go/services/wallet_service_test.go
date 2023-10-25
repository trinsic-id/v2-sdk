package services

import (
	"context"
	"encoding/json"
	"github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
	"github.com/trinsic-id/sdk/go/proto/services/universalwallet/v1/wallet"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestWalletService(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, ecosystem, err := CreateTestTrinsicWithNewEcosystem()
	assert2.Nil(err)

	// Create a new account in the ecosystem
	createWalletResponse, err := trinsic.Wallet().CreateWallet(context.Background(), &wallet.CreateWalletRequest{
		EcosystemId: ecosystem.Id,
		Description: nil,
	})
	assert2.Nil(err)

	walletId := createWalletResponse.Wallet.WalletId

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

	// getWalletInfo() {
	getWalletInfoResponse, err := trinsic.Wallet().GetWalletInfo(context.Background(),
		&wallet.GetWalletInfoRequest{
			WalletId: createWalletResponse.Wallet.WalletId,
		},
	)
	// }

	assert2.Nil(err)
	assert2.NotNil(getWalletInfoResponse)

	// getWalletFromExternalIdentity() {
	getWalletFromExternalIdentityResponse, err := trinsic.Wallet().GetWalletFromExternalIdentity(context.Background(),
		&wallet.GetWalletFromExternalIdentityRequest{
			Identity: &provider.WalletExternalIdentity{
				Id:       "test@trinsic.id",
				Provider: provider.IdentityProvider_Email,
			},
		},
	)
	// }

	assert2.NotNil(err)
	assert2.Contains(err.Error(), "Wallet attached to the provided External Identity was not found")
	assert2.Nil(getWalletFromExternalIdentityResponse)

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
	assert2.NotNil(deleteWalletResponse)
}
