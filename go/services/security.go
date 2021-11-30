package services

import (
	"encoding/base64"
	"fmt"
	"github.com/trinsic-id/okapi/go/okapi"
	"github.com/trinsic-id/okapi/go/okapiproto"
	sdk "github.com/trinsic-id/sdk/go/proto"
	"google.golang.org/protobuf/proto"
	"lukechampine.com/blake3"
	"time"
)

type SecurityProvider interface {
	GetAuthHeader(profile *sdk.AccountProfile, message proto.Message) (string, error)
}

type OberonSecurityProvider struct {
}

func (o OberonSecurityProvider) GetAuthHeader(profile *sdk.AccountProfile, message proto.Message) (string, error) {
	if profile.Protection.Enabled {
		return "", fmt.Errorf("The token must be unprotected before use")
	}

	requestBytes, err := proto.Marshal(message)
	if err != nil {
		return "", err
	}

	requestHash := blake3.Sum256(requestBytes)
	nonce := &sdk.Nonce{
		Timestamp:   time.Now().UnixMilli(),
		RequestHash: requestHash[:],
	}
	nonceBytes, err := proto.Marshal(nonce)
	if err != nil {
		return "", err
	}

	proof, err := okapi.Oberon().CreateProof(&okapiproto.CreateOberonProofRequest{
		Data:  profile.AuthData,
		Token: profile.AuthToken,
		Nonce: nonceBytes,
	})
	if err != nil {
		return "", err
	}
	return fmt.Sprintf("Oberon proof=%s,data=%s,nonce=%s",
		base64.URLEncoding.EncodeToString(proof.Proof),
		base64.URLEncoding.EncodeToString(profile.AuthData),
		base64.URLEncoding.EncodeToString(nonceBytes)), nil
}
