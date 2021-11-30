package services

import sdk "github.com/trinsic-id/sdk/go/proto"

type ProfileProvider interface {
	Get(name string) (sdk.AccountProfile, error)
	Save(name string, profile sdk.AccountProfile) error
}

type FileProfileProvider struct {
}

type KeychainProfileProvider struct {
}

func (f FileProfileProvider) Get(name string) (sdk.AccountProfile, error) {
	panic("implement me")
}

func (f FileProfileProvider) Save(name string, profile sdk.AccountProfile) error {
	panic("implement me")
}

func (k KeychainProfileProvider) Get(name string) (sdk.AccountProfile, error) {
	panic("implement me")
}

func (k KeychainProfileProvider) Save(name string, profile sdk.AccountProfile) error {
	panic("implement me")
}
