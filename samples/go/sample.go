package main

import (
	"context"
	"fmt"
	account "github.com/trinsic-id/sdk/go/proto/services/account/v1/account"
	sdk "github.com/trinsic-id/sdk/go/services"
)

func main() {
	trinsicService, err := sdk.NewTrinsic()
	if err != nil {
		panic("Account service not created")
	}

	profile, _, err := trinsicService.Account().SignIn(context.Background(), &account.SignInRequest{})
	if err != nil {
		panic("Sign in failed!")
	}
	fmt.Printf("%v\n", profile)
}
