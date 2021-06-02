# Documentation

We're using [mkdocs](https://www.mkdocs.org/) with [`mkdocs-material`](https://squidfunk.github.io/mkdocs-material/).

### Dependencies

- the gitpod environment is already set up with everything need to generate the documentation site.
- Install mkdocs using a package manager: https://www.mkdocs.org/#installation
- Install mkdocs-material with `pip`: https://squidfunk.github.io/mkdocs-material/getting-started/#installation

### Running locally

Type `mkdocs serve` in this repo's root. The command will start a server at http://127.0.0.0:5000/ with automatic refresh.

### Editing

The docs are easy to edit. Find the `nav` tag in [./mkdocs.yml](.mkdocs.yml) file to change the side bar.

Write markdown in the `docs` folder. You can use normal markdown, html, or any of our theme's features - [Reference](https://squidfunk.github.io/mkdocs-material-insiders/reference/abbreviations/)

### Build and deploy

When finished editing, just make a PR.
They'll be built and deployed automatically using the [`docs.yml`](./.github/workflows/docs.yml)
Docs can be viewed here: https://trinsic-id.github.io/sdk

### Using Insiders Features on Local env (For Trinsineers)

- ping @michaeldboyd for shared secret
- run `pip install git+https://<SHARED_SECRET>@github.com/squidfunk/mkdocs-material-insiders.git`
- use any features included in the [reference guide](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/) with tag `insiders only`
