package services

import (
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
	"github.com/trinsic-id/sdk/go/proto/services/provider/v1/provider"
	"github.com/trinsic-id/sdk/go/proto/services/trustregistry/v1/trustregistry"
	"github.com/trinsic-id/sdk/go/proto/services/universalwallet/v1/wallet"
	"github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/templates/v1/template"
	"github.com/trinsic-id/sdk/go/proto/services/verifiablecredentials/v1/credential"
)

type Trinsic struct {
	Service

	as *accountBase
	cs *credentialBase
	ts *templateBase
	ps *providerBase
	tr *trustregistryBase
	ws *walletBase
}

func NewTrinsic(options ...Option) (*Trinsic, error) {
	opts, err := NewServiceOptions(options...)
	if err != nil {
		return nil, err
	}

	base, err := NewServiceBase(opts)
	if err != nil {
		return nil, err
	}

	return &Trinsic{Service: base}, nil
}

func (t *Trinsic) Account() AccountService {
	if t.as == nil {
		t.as = &accountBase{
			Service: t.Service,
			client:  account.NewAccountClient(t.Service.GetChannel()),
		}
	}

	return t.as
}

func (t *Trinsic) Credential() CredentialService {
	if t.cs == nil {
		t.cs = &credentialBase{
			Service: t.Service,
			client:  credential.NewVerifiableCredentialClient(t.Service.GetChannel()),
		}
	}

	return t.cs
}

func (t *Trinsic) Template() TemplateService {
	if t.ts == nil {
		t.ts = &templateBase{
			Service: t.Service,
			client:  template.NewCredentialTemplatesClient(t.Service.GetChannel()),
		}
	}

	return t.ts
}

func (t *Trinsic) Provider() ProviderService {
	if t.ps == nil {
		t.ps = &providerBase{
			Service: t.Service,
			client:  provider.NewProviderClient(t.Service.GetChannel()),
		}
	}

	return t.ps
}

func (t *Trinsic) TrustRegistry() TrustRegistryService {
	if t.tr == nil {
		t.tr = &trustregistryBase{
			Service: t.Service,
			client:  trustregistry.NewTrustRegistryClient(t.Service.GetChannel()),
		}
	}

	return t.tr
}
func (t *Trinsic) Wallet() WalletService {
	if t.ws == nil {
		t.ws = &walletBase{
			Service: t.Service,
			client:  wallet.NewUniversalWalletClient(t.Service.GetChannel()),
		}
	}

	return t.ws
}
