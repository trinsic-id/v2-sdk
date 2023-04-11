package services

import (
	"context"
	"github.com/trinsic-id/sdk/go/proto/services/common/v1/common"
	"github.com/trinsic-id/sdk/go/proto/services/universalwallet/v1/wallet"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
)

func TestEcosystemUpdateInfo(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, _, err := CreateTestTrinsicWithNewEcosystem()
	if !assert2.Nil(err) {
		return
	}

	// updateEcosystem() {
	updateRequest := &provider.UpdateEcosystemRequest{
		Description: "My new description",
		Uri:         "https://new-example.com",
	}

	updateResponse, err := trinsic.Provider().UpdateEcosystem(context.Background(), updateRequest)
	// }
	if !assert2.Nil(err) || !assert2.NotNil(updateResponse) {
		return
	}

	if !assert2.Equal(updateResponse.Ecosystem.Description, "My new description") {
		return
	}

	// ecosystemInfo() {
	infoResponse, err := trinsic.Provider().EcosystemInfo(context.Background(), &provider.EcosystemInfoRequest{})
	// }

	if !assert2.Nil(err) || !assert2.NotNil(updateResponse) {
		return
	}

	if !assert2.Equal(infoResponse.Ecosystem.Description, updateResponse.Ecosystem.Description) {
		return
	}
}

func TestUpgradeDid(t *testing.T) {
	assert2 := assert.New(t)

	trinsic, _, err := CreateTestTrinsicWithNewEcosystem()
	if !assert2.Nil(err) {
		return
	}

	createWallet, err := trinsic.Wallet().CreateWallet(context.Background(), &wallet.CreateWalletRequest{
		EcosystemId: "default",
		Description: nil,
	})
	if !assert2.Nil(err) {
		return
	}

	walletId := createWallet.Wallet.WalletId

	// upgradeDid() {
	upgradeResponse, err := trinsic.Provider().UpgradeDID(context.Background(), &provider.UpgradeDidRequest{
		Account: &provider.UpgradeDidRequest_WalletId{
			WalletId: walletId,
		},
		Method: common.SupportedDidMethod_ION,
		Options: &provider.UpgradeDidRequest_IonOptions{
			IonOptions: &provider.IonOptions{
				Network: provider.IonOptions_TestNet,
			},
		},
	})
	// }

	// Should error as ecosystems cannot upgrade by default ATM
	if assert2.NotNil(err) || assert2.Nil(upgradeResponse) {
		return
	}

}
