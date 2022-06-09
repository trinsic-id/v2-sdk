package main

import (
	"context"
	"fmt"
	account "github.com/trinsic-id/sdk/go/proto/account/v1"
	sdk "github.com/trinsic-id/sdk/go/services"
)

func main() {
	opts, err := sdk.NewServiceOptions()
	if err != nil {
		panic("could not create service options")
	}
	accountService, err := sdk.NewAccountService(opts)
	if err != nil {
		panic("Account service not created")
	}

	profile, _, err := accountService.SignIn(context.Background(), &account.SignInRequest{})
	if err != nil {
		panic("Sign in failed!")
	}
	fmt.Printf("%v\n", profile)
}
