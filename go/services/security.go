package services

import (
	"encoding/base64"
	"fmt"
	"github.com/trinsic-id/okapi/go/okapi/hashing/v1/hashing"
	"github.com/trinsic-id/okapi/go/okapi/security/v1/security"

	"time"

	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
	"github.com/trinsic-id/sdk/go/proto/services/common/v1/common"

	"google.golang.org/protobuf/proto"
)

// SecurityProvider defines the required functionality to provide authentication to the api
type SecurityProvider interface {
	GetAuthHeader(profile *account.AccountProfile, message proto.Message) (string, error)
}

// OberonSecurityProvider implements the SecurityProvider interface and provides oberon token functionality
type OberonSecurityProvider struct {
}

// GetAuthHeader returns an authentication header with a correctly formatted oberon token
func (o OberonSecurityProvider) GetAuthHeader(profile *account.AccountProfile, message proto.Message) (string, error) {
	if profile != nil && profile.Protection.Enabled {
		return "", fmt.Errorf("the token must be unprotected before use")
	}

	requestBytes, err := proto.Marshal(message)
	if err != nil {
		return "", err
	}

	hashResult, err := okapi.Hashing().Blake3Hash(&hashing.Blake3HashRequest{Data: requestBytes})
	if err != nil {
		return "", err
	}
	requestHash := hashResult.Digest
	nonce := &common.Nonce{
		Timestamp:   time.Now().UnixMilli(),
		RequestHash: requestHash[:],
	}
	nonceBytes, err := proto.Marshal(nonce)
	if err != nil {
		return "", err
	}

	var authData, authToken []byte
	if profile != nil {
		authData = profile.AuthData
		authToken = profile.AuthToken
	}

	proof, err := okapi.Oberon().CreateProof(&security.CreateOberonProofRequest{
		Data:  authData,
		Token: authToken,
		Nonce: nonceBytes,
	})
	if err != nil {
		return "", err
	}
	return fmt.Sprintf("Oberon ver=%d,proof=%s,data=%s,nonce=%s", 1, base64.URLEncoding.EncodeToString(proof.Proof), base64.URLEncoding.EncodeToString(profile.AuthData), base64.URLEncoding.EncodeToString(nonceBytes)), nil
}
