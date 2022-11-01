# Documentation

We're using [mkdocs](https://www.mkdocs.org/) with [`mkdocs-material`](https://squidfunk.github.io/mkdocs-material/).

### Dependencies
- Install go: https://go.dev/doc/install
- Install the necessary `protoc` plugins and make them available on your PATH
  - `go install github.com/trinsic-id/protoc-gen-json@latest`
  - `go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest`
- Ensure you have python3 installed: https://pip.pypa.io/en/stable/installation/
- Install the requirements using `pip install -r docs/requirements.txt`
- Install the python SDK requirements (required for `mkdocstrings` which uses introspection) using `pip install -r python/requirements.txt`
  - If you get the error that it is missing the `poetry` module, run  `pip install -U poetry`
- https://www.mkdocs.org/#installation
- https://squidfunk.github.io/mkdocs-material/getting-started/#installation
- https://github.com/rnorth/mkdocs-codeinclude-plugin

### Running locally

Type `mkdocs serve` in this repo's root. The command will start a server at http://127.0.0.0:5000/ with automatic refresh.

### Editing

The docs are easy to edit. Find the `nav` tag in [./mkdocs.yml](.mkdocs.yml) file to change the side bar.

Write markdown in the `docs` folder. You can use normal markdown, html, or any of our theme's features - [Reference](https://squidfunk.github.io/mkdocs-material-insiders/reference/abbreviations/)

### Trinsic-specific Macros

To make editing docs easier to work on (and more powerful), we make use of a few macros that we've developed -- the source for these lives in the `mkdocs_macros_main.py` file in the root of this repository.

#### `include_section`

This macro includes a section from another markdown file.

Usage: `{{ include_section(file_name: str, section_name: str, include_heading: bool=False) }}`

- `file_name` is the path, _relative to the docs root_, of the markdown file you wish to include a section from
    - For example, to include a section from `sdk/docs/learn/intro.md`, you would use the path `learn/intro.md`
- `section_name` is the name of the section you wish to include
- `include_heading` controls whether or not to include the heading itself

#### Protobuf-Related Macros (`proto_sample_start`, `proto_method_tabs`, `proto_message`, `proto_enum`)

These macros provide functionality for auto-documentation for our protobuf objects.

**Note**: All these macros work off of the output of `protoc-gen-json`. [Read its docs](https://github.com/trinsic-id/protoc-gen-json) for more info.

##### `proto_sample_start` / `proto_method_tabs`

These two macros are designed to be used in a very specific way.

`proto_sample_start()` is used to generate the `Sample` tab header, as well as the preceding `<div>` we use to target the generated tab structure for custom CSS.

Immediately following `proto_sample_start()` should be a set of tabs, **indented one level**, one for each language, containing sample code for the method you are documenting.


`proto_method_tabs()` should be used _after_ the sample code tabs, and is used to generate the `Request` and `Response` tabs for a specific protobuf method.


**Example:**
```markdown
{{ proto_sample_start() }}
    === "Trinsic CLI" 
        ```bash
        trinsic account login --email <PROFILE_EMAIL>
        ```

    === "TypeScript"
        ```typescript
        const allison = (await accountService.signIn()).getProfile();
        ```

    === "C#"
        <!--codeinclude-->
        ```csharp
        [CreateProof](../../../dotnet/Tests/Tests.cs) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Python"
        <!--codeinclude-->
        ```python
        [Insert Item Wallet](../../../python/tests/test_trinsic_services.py) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Go"
        <!--codeinclude-->
        ```golang
        [CreateEcosystem](../../../go/services/account_service_test.go) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Java"
        <!--codeinclude-->
        ```java
        [CreateEcosystem](../../../java/src/test/java/trinsic/AccountServiceTest.java) inside_block:accountServiceSignIn
        ```
        <!--/codeinclude-->

    === "Ruby"
        ```ruby
        allison = account_service.sign_in(nil).profile
        ```

{{ proto_method_tabs("services.account.v1.Account.SignIn") }}
```

Produces:

<img src="https://user-images.githubusercontent.com/1294419/172242784-139f45b7-d662-4c71-82c9-7783f7b3886b.gif" width="550"/>


#### `proto_message` / `proto_enum`

These macros are used to generate the documentation for a protobuf message or enum, respectively.

They take, as their only argument, the *Fully-Qualified Name* of the message or enum.

Example:

`{{ proto_message('sdk.options.v1.ServiceOptions') }}`


### Build and deploy

When finished editing, just make a PR.
They'll be built and deployed automatically using the [`docs.yml`](./.github/workflows/docs.yml)
Docs can be viewed here: https://trinsic-id.github.io/sdk

### Using Insiders Features on Local env (For Trinsineers)

- ping @michaeldboyd for shared secret
- run `pip install git+https://<SHARED_SECRET>@github.com/squidfunk/mkdocs-material-insiders.git`
- use any features included in the [reference guide](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/) with tag `insiders only`
