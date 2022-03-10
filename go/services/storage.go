package services

import sdk "github.com/trinsic-id/sdk/go/proto"

// ProfileProvider defines the interface for interacting with stored profiles
type ProfileProvider interface {
	Get(name string) (sdk.AccountProfile, error)
	Save(name string, profile sdk.AccountProfile) error
}

type fileProfileProvider struct {
}

type keychainProfileProvider struct {
}

func (f fileProfileProvider) Get(name string) (sdk.AccountProfile, error) {
	panic("implement me")
}

func (f fileProfileProvider) Save(name string, profile *sdk.AccountProfile) error {
	panic("implement me")
}

func (k keychainProfileProvider) Get(name string) (sdk.AccountProfile, error) {
	panic("implement me")
}

func (k keychainProfileProvider) Save(name string, profile *sdk.AccountProfile) error {
	panic("implement me")
}
