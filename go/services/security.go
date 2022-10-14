package services

import (
	"crypto/rand"
	"encoding/base64"
	"fmt"

	"time"

	"github.com/coinbase/kryptology/pkg/core/curves"
	"github.com/mikelodder7/oberon/go/pkg/oberon"
	"github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
	"github.com/trinsic-id/sdk/go/proto/services/common/v1/common"
	"lukechampine.com/blake3"

	"google.golang.org/protobuf/proto"
)

// SecurityProvider defines the required functionality to provide authentication to the api
type SecurityProvider interface {
	GetAuthHeader(profile *account.AccountProfile, message proto.Message) (string, error)
	BlindToken(token, data []byte) ([]byte, error)
	UnblindToken(token, data []byte) ([]byte, error)
	CreateProof(token, data, nonce []byte) ([]byte, error)
}

// OberonSecurityProvider implements the SecurityProvider interface and provides oberon token functionality
type OberonSecurityProvider struct {
}

// GetAuthHeader returns an authentication header with a correctly formatted oberon token
func (o *OberonSecurityProvider) GetAuthHeader(profile *account.AccountProfile, message proto.Message) (string, error) {
	if profile != nil && profile.Protection.Enabled {
		return "", fmt.Errorf("the token must be unprotected before use")
	}

	requestBytes, err := proto.Marshal(message)
	if err != nil {
		return "", err
	}

	requestHash := blake3.Sum512([]byte(requestBytes))
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

	proof, err := o.CreateProof(
		authData,
		authToken,
		nonceBytes,
	)
	if err != nil {
		return "", err
	}
	return fmt.Sprintf("Oberon ver=%d,proof=%s,data=%s,nonce=%s", 1, base64.URLEncoding.EncodeToString(proof), base64.URLEncoding.EncodeToString(profile.AuthData), base64.URLEncoding.EncodeToString(nonceBytes)), nil
}

func (o *OberonSecurityProvider) BlindToken(token, data []byte) ([]byte, error) {
	tkn := &oberon.Token{Value: &curves.PointBls12381G1{}}

	err := tkn.UnmarshalBinary(token)
	if err != nil {
		return nil, err
	}

	blind, err := oberon.NewBlinding(data)
	if err != nil {
		return nil, err
	}

	tkn.ApplyBlinding(tkn, blind)

	return tkn.MarshalBinary()
}

func (o *OberonSecurityProvider) UnblindToken(token, data []byte) ([]byte, error) {
	tkn := &oberon.Token{Value: &curves.PointBls12381G1{}}

	err := tkn.UnmarshalBinary(token)
	if err != nil {
		return nil, err
	}

	blind, err := oberon.NewBlinding(data)
	if err != nil {
		return nil, err
	}

	tkn.RemoveBlinding(tkn, blind)

	return tkn.MarshalBinary()
}

func (o *OberonSecurityProvider) CreateProof(token, data, nonce []byte) ([]byte, error) {
	tkn := &oberon.Token{Value: &curves.PointBls12381G1{}}

	err := tkn.UnmarshalBinary(token)
	if err != nil {
		return nil, err
	}

	p, err := oberon.NewProof(tkn, nil, data, nonce, rand.Reader)
	if err != nil {
		return nil, err
	}

	return p.MarshalBinary()

}
