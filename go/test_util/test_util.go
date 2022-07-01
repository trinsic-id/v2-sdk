package test_util

import (
	"context"
	"github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
	"github.com/trinsic-id/sdk/go/services"
)

// TestTrinsicWithNewEcosystem creates a testing ecosystem and returns a `services.Trinsic` configured against it
func TestTrinsicWithNewEcosystem() (*services.Trinsic, error) {
	trinsic, err := services.NewTrinsic(services.WithTestEnv())
	if err != nil {
		return nil, err
	}

	// Make a new ecosystem
	ecoResponse, err := trinsic.Provider().CreateEcosystem(context.Background(), &provider.CreateEcosystemRequest{})
	if err != nil {
		return nil, err
	}

	// Set auth token and ecosystem ID
	token, err := services.ProfileToToken(ecoResponse.GetProfile())
	if err != nil {
		return nil, err
	}

	trinsic.SetToken(token)
	trinsic.SetEcosystemId(ecoResponse.GetEcosystem().Id)

	return trinsic, nil
}
