package services

import account "github.com/trinsic-id/sdk/go/proto/account/v1"

// ProfileProvider defines the interface for interacting with stored profiles
type ProfileProvider interface {
	Get(name string) (account.AccountProfile, error)
	Save(name string, profile account.AccountProfile) error
}

type fileProfileProvider struct {
}

type keychainProfileProvider struct {
}

func (f fileProfileProvider) Get(name string) (account.AccountProfile, error) {
	panic("implement me")
}

func (f fileProfileProvider) Save(name string, profile *account.AccountProfile) error {
	panic("implement me")
}

func (k keychainProfileProvider) Get(name string) (account.AccountProfile, error) {
	panic("implement me")
}

func (k keychainProfileProvider) Save(name string, profile *account.AccountProfile) error {
	panic("implement me")
}
