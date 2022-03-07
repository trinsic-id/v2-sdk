# The Trinsic Go SDK

The Trinsic Go SDK makes it easy to interact with the Trinsic API from any Go application.

# Before you start

- If you are a new user starting to learn both GoLang AND the Trinsic SDK, please check out our [GoLang getting started guide](./goQuickie.md). Our getting started guide is a concise and easy way to get started understanding the most important concepts in GoLang. While it is tempting to just jump into a new project in a new language with both feet, we have found that often brushing up on some core GoLang concepts helps developers have less trouble getting started with the Trinsic SDK. This usually is especially the case when dealing with slices, Goroutines, and channels.

# Notes and Gotchas

- Note that the Trinsic GoLang SDK uses OKAPI, which is a Rust Library that exposes a Foreign function interface which is callable from C. If you are not familiar with the concept of a FFI, the idea is just to let a program in one langauge call functions in another. In the Trinsic v2 API, the core SSI functions are exposed through the OKAPI FFI to multiple languages, such that the core functions only need to be implemented once.

- FYI here is an OKAPI ![](okapi.jpeg)

- One caveat of this is that you have to make sure you have the okapi native binaries are installed on your machine. Default installation instructions can be found in the [readme.md here](https://github.com/trinsic-id/okapi/)

# Installation

- To install the latest version of the Trinsic GoLang SDK, please run the following command:

```SHELL
go get github.com/trinsic/go-sdk
```

- You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/go).

- The best way to install Go for your platform is by going to (https://golang.org/dl/)

- You need to have [CGO configured](https://pkg.go.dev/cmd/cgo) for the okapi native binary link
- Issue the following command:

```bash
go install github.com/trinsic-id/sdk/go
```

- To test the installation, try the following go code:
  TODO

## Next Steps

Once the go package is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } [Go API Reference](../reference/go/index.md){ .md-button }
