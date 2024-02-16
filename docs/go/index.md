# The Trinsic Go SDK

The Trinsic Go SDK makes it easy to interact with the Trinsic API from any Go application. The most recent version of the library can be found on Github. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/go).

## Installation and Configuration

1. Run the following command to install the go SDK package
```bash
go install github.com/trinsic-id/sdk/go@latest
```
2. Test the installation by running the following go code:
    <!--codeinclude-->
    ```golang
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
    ```
<!--/codeinclude-->

