package main

import (
	"bufio"
	"context"
	"fmt"
	"os"
	"strings"

	sdk "github.com/trinsic-id/sdk/go/proto"
	"github.com/trinsic-id/sdk/go/services"
)

func main() {
	conf := &sdk.ServerConfig{
		Endpoint: "127.0.0.1",
		Port:     5000,
		UseTls:   false,
	}

	as, err := services.CreateAccountService(nil, conf, nil)
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	p, _, err := as.SignIn(context.Background(), &sdk.AccountDetails{Email: "test@test.com"})
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	buf := bufio.NewReader(os.Stdin)
	fmt.Print("enter confirmation code: ")
	code, err := buf.ReadBytes('\n')
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	up, err := as.Unprotect(p, strings.TrimSuffix(string(code), "\n"))
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	as.SetProfile(up)

	info, err := as.GetInfo(context.Background())
	fmt.Println(info, err)

	// pbytes, err := protojson.Marshal(up)
	// if err != nil {
	// 	fmt.Println(err)
	// 	os.Exit(1)
	// }

	// err = ioutil.WriteFile("profile.json", pbytes, 0644)
	// if err != nil {
	// 	fmt.Println(err)
	// 	os.Exit(1)
	// }

	ps, err := services.CreateProviderService(up, conf, as.GetChannel())
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	eco := sdk.Ecosystem{
		Name:        "Test Eco",
		Uri:         "https://trinsic.id/ecosystems/test",
		Description: "A test ecosyste,",
	}

	er, err := ps.CreateEcosystem(context.Background(), &sdk.CreateEcosystemRequest{Name: eco.Name, Uri: eco.Uri, Description: eco.Description})

	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	eco.Id = er.Id
	ps.SetEcosystem(er.Id)

	fmt.Println("new ecosystem", eco.Id)

	invResp, err := ps.InviteParticipant(context.TODO(), &sdk.InviteRequest{
		ContactMethod: &sdk.InviteRequest_Email{Email: "james@dean.com"},
	})
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	fmt.Println("invite ID: ", invResp.InvitationId)

	invStat, err := ps.InvitationStatus(context.TODO(), &sdk.InvitationStatusRequest{InvitationId: invResp.InvitationId})
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	fmt.Printf("%+v\n", invStat)

	p2, _, err := as.SignIn(context.Background(), &sdk.AccountDetails{Email: "james@dean.com"})
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	buf = bufio.NewReader(os.Stdin)
	fmt.Print("enter confirmation code: ")
	code, err = buf.ReadBytes('\n')
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	up2, err := as.Unprotect(p2, strings.TrimSuffix(string(code), "\n"))
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	fmt.Println("new account created and unprotected")

	ps.SetProfile(up2)

	buf = bufio.NewReader(os.Stdin)
	fmt.Print("enter invite code: ")
	code, err = buf.ReadBytes('\n')
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	aiResp, err := ps.AcceptInvite(context.Background(), strings.TrimSuffix(string(code), "\n"))
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	fmt.Println("invited accepted: ", aiResp)

}
