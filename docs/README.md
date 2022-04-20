# Documentation

We're using [mkdocs](https://www.mkdocs.org/) with [`mkdocs-material`](https://squidfunk.github.io/mkdocs-material/).

### Dependencies

- the gitpod environment is already set up with everything need to generate the documentation site.
- Install the requirements using `pip install -r requirements.txt`
- Install the python SDK requirements (required for `mkdocstrings` which uses introspection) using `pip install -r python/requirements.txt`
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
- `section_name` is the name of the section you wish to include
- `include_heading` controls whether or not to include the heading itself

#### `proto_obj`

This macro allows you to inject the documentation for any protobuf message or service that is documented in `reference/proto/index.md`.

Usage: `{{ proto_obj(obj: str, header_text: str=None) }}`

- `obj` is the name of the protobuf message or service
    - For example, `ServiceOptions`
- `header_text`, if specified, overrides the text of the header with whatever you specify
    - If unspecified, the name of the message is used (same as the value of `obj`)


Example: `{{ proto_obj('SignInRequest') }}`

### Build and deploy

When finished editing, just make a PR.
They'll be built and deployed automatically using the [`docs.yml`](./.github/workflows/docs.yml)
Docs can be viewed here: https://trinsic-id.github.io/sdk

### Using Insiders Features on Local env (For Trinsineers)

- ping @michaeldboyd for shared secret
- run `pip install git+https://<SHARED_SECRET>@github.com/squidfunk/mkdocs-material-insiders.git`
- use any features included in the [reference guide](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/) with tag `insiders only`
