# The Trinsic Go SDK

The Trinsic Go SDK makes it easy to interact with the Trinsic API from any Go application. The most recent version of the library can be found on ____. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/go).

## Installation and Configuration

> If you're installing go on M1, the [Standard Go.dev Install Page](https://go.dev/doc/install) actually defaults to still showing you an amd64 install pkg even if you're on an M1.

You have to go to the [other downloads](https://go.dev/dl/) page to get the `arm64` version for sure.

!!! info "Notes: Installing the SDK for Go"

    - Windows installation is possible, but requires jumping through a few hoops. More details to come later.
    - Make sure you have the okapi native binaries installed on your machine. Default installation instructions are in the [trinsic-id/okapi](https://github.com/trinsic-id/okapi/) GitHub repository.
    - You need to have [CGO configured](https://pkg.go.dev/cmd/cgo) for the okapi native binary link.

1. Run the following command:
```bash
go install github.com/trinsic-id/sdk/go@latest
```
2. The the installation by running the following go code:
    <!--codeinclude-->
    ```golang
    [GoSample](../../samples/go/sample.go) inside_block:main
    ```
<!--/codeinclude-->

## Next Steps
Once the go package is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Go API Reference](../reference/index.md){ .md-button }

## Diagnostics

### M1 Architecture install issues

```bash
uname -m
echo $GOARCH
```

The go architecture and apple processor architecture need to match for the dynamic okapi library loading to work.

The long story short is though, when that happens, it actually sets all the environment variables also to AMD, including `GOHOSTARCH`, `GOARCH`, and `GOTOOLDIR`. This, then causes the bad env variable to impact the linker.

If you receive an error that looks like the following on Apple M1 architecture, it is possible that you have the wrong architecture of golang installed/configured.
```bash
panic: unable to open a handle to the library [recovered]
panic: unable to open a handle to the library
```

Try running a test code with the following env vars set:
```bash
GOARCH=arm64  go test ./...
```

If `CGO` is not enabled, you will receive an error like the following:
```bash
go/pkg/mod/github.com/trinsic-id/okapi/go@v1.6.1/okapi/didcomm.go:22:9: undefined: callOkapiNative
```

Try running with the following env var set:
```bash
CGO_ENABLED=1  go test ./...
```
