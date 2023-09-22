package main

import (
	"context"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/services"
)

func main() {
	trinsic, err := sdk.NewTrinsic()
	if err != nil {
		panic("Account service not created")
	}

	profile, err := trinsic.Account().LoginAnonymous(context.Background())
	if err != nil {
		panic("Sign in failed!")
	}
	fmt.Printf("%v\n", profile)
}
