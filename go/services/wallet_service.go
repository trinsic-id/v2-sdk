package services

import (
	"context"

	sdk "github.com/trinsic-id/sdk/go/proto"
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
		client:  sdk.NewUniversalWalletClient(base.GetChannel()),
	}

	return service, nil
}

// WalletService defines the interface for interacting with wallet
type WalletService interface {
	Service
	Search(userContext context.Context, request *sdk.SearchRequest) (*sdk.SearchResponse, error)
	InsertItem(userContext context.Context, request *sdk.InsertItemRequest) (string, error)
	DeleteItem(userContext context.Context, request *sdk.DeleteItemRequest) error
}

type walletBase struct {
	Service
	client sdk.UniversalWalletClient
}

func (w *walletBase) Search(userContext context.Context, request *sdk.SearchRequest) (*sdk.SearchResponse, error) {
	if request == nil {
		request = &sdk.SearchRequest{}
	}

	if len(request.Query) == 0 {
		request.Query = "SELECT c.id, c.type, c.data FROM c"
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

func (w *walletBase) InsertItem(userContext context.Context, request *sdk.InsertItemRequest) (string, error) {
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

func (w *walletBase) DeleteItem(userContext context.Context, request *sdk.DeleteItemRequest) error {
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
