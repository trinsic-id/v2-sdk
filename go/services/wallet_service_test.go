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

	// searchWalletBasic() {
	searchResponse, err := trinsic.Wallet().SearchWallet(context.Background(), &wallet.SearchRequest{})
	// }

	assert2.NotNil(searchResponse)
	assert2.Nil(err)
}
