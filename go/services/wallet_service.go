package services

import (
	"context"

	"github.com/trinsic-id/sdk/go/proto/services/universalwallet/v1/wallet"
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
		client:  wallet.NewUniversalWalletClient(base.GetChannel()),
	}

	return service, nil
}

// WalletService defines the interface for interacting with wallet
type WalletService interface {
	Service
	Search(userContext context.Context, request *wallet.SearchRequest) (*wallet.SearchResponse, error)
	InsertItem(userContext context.Context, request *wallet.InsertItemRequest) (*wallet.InsertItemResponse, error)
	DeleteItem(userContext context.Context, request *wallet.DeleteItemRequest) (*wallet.DeleteItemResponse, error)
}

type walletBase struct {
	Service
	client wallet.UniversalWalletClient
}

func (w *walletBase) Search(userContext context.Context, request *wallet.SearchRequest) (*wallet.SearchResponse, error) {
	if request == nil {
		request = &wallet.SearchRequest{}
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

func (w *walletBase) InsertItem(userContext context.Context, request *wallet.InsertItemRequest) (*wallet.InsertItemResponse, error) {
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := w.client.InsertItem(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}

func (w *walletBase) DeleteItem(userContext context.Context, request *wallet.DeleteItemRequest) (*wallet.DeleteItemResponse, error) {
	md, err := w.GetMetadataContext(userContext, request)
	if err != nil {
		return nil, err
	}

	response, err := w.client.DeleteItem(md, request)
	if err != nil {
		return nil, err
	}

	return response, nil
}