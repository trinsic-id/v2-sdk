# The Trinsic Go SDK

The Trinsic Go SDK makes it easy to interact with the Trinsic API from any Go application. The most recent version of the library can be found on ____. You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/tree/main/go).

## Installation and Configuration
* NOTE: Windows installation is possible, but requires jumping through a few hoops. More details to come later.
* Make sure you have the okapi native binaries installed on your machine. Default installation instructions are in the [readme.md here](https://github.com/trinsic-id/okapi/)
* You need to have [CGO configured](https://pkg.go.dev/cmd/cgo) for the okapi native binary link
* Issue the following command:
```bash
go install github.com/trinsic-id/sdk/go@latest
```
* To test the installation, try the following go code:
<!--codeinclude-->
```golang
[GoSample](../../samples/go/sample.go) inside_block:main
```
<!--/codeinclude-->

## Next Steps
Once the go package is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Go API Reference](../reference/index.md){ .md-button }

