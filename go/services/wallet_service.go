package services

import (
	"context"
	walletV1 "github.com/trinsic-id/sdk/go/proto/universalwallet/v1"
)

// NewWalletService returns a wallet service with the base service configured
// using the provided options
func NewWalletService(options *Options) (WalletService, error) {
	base, err := NewServiceBase(options)
	if err != nil {
		return nil, err
	}
	service := &walletBase{
		Service: base,
		client:  walletV1.NewUniversalWalletClient(base.GetChannel()),
	}

	return service, nil
}

// WalletService defines the interface for interacting with wallet
type WalletService interface {
	Service
	Search(userContext context.Context, request *walletV1.SearchRequest) (*walletV1.SearchResponse, error)
	InsertItem(userContext context.Context, request *walletV1.InsertItemRequest) (string, error)
	DeleteItem(userContext context.Context, request *walletV1.DeleteItemRequest) error
}

type walletBase struct {
	Service
	client walletV1.UniversalWalletClient
}

func (w *walletBase) Search(userContext context.Context, request *walletV1.SearchRequest) (*walletV1.SearchResponse, error) {
	if request == nil {
		request = &walletV1.SearchRequest{}
	}

	if len(request.Query) == 0 {
		request.Query = "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100"
	}

	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := w.client.Search(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (w *walletBase) InsertItem(userContext context.Context, request *walletV1.InsertItemRequest) (string, error) {
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return "", err
	}

	response, err := w.client.InsertItem(md, request)
	if err != nil {
		return "", err
	}

	return response.ItemId, nil
}

func (w *walletBase) DeleteItem(userContext context.Context, request *walletV1.DeleteItemRequest) error {
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return err
	}

	_, err = w.client.DeleteItem(md, request)
	if err != nil {
		return err
	}

	return nil
}
