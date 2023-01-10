package main

import (
	"context"
	"fmt"
	sdk "github.com/trinsic-id/sdk/go/services"
)

func main() {
	trinsicService, err := sdk.NewTrinsic()
	if err != nil {
		panic("Account service not created")
	}

	profile, err := trinsicService.Account().LoginAnonymous(context.Background())
	if err != nil {
		panic("Sign in failed!")
	}
	fmt.Printf("%v\n", profile)
}
