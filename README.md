# Trinsic SDK v2

- .NET
- TS/WASM
- Rust CLI

dotnet/

nodejs/

cli/

# High Level Features

- Connect to Trinsic Platform v2 Service
  - Generate Proto for each platform
  - Write wrappers for each calls
- Use DIDComm v2 features for key/transport management
  - Sign, Pack/Unpack
  - Generate ED keys



# CLI

The cli is built with a rust gRPC library named [tonic](https://github.com/hyperium/tonic)

# npm


protoc --proto_path=../../Proto --js_out=library=trinsic,binary:./ ../../Proto/IssuerService.proto

## gitpod
[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/trinsic-id/sdks)

## git subtrees
first, add the remote to the repository: `bash ./git-add-remotes.sh`

The remote and the prefix will be both named after the directory names. 

If you make changes to a subrepo when working on a feature, just commit the change like you'd normally do. If possible, make separate commits for any changes in the subrepo. This will keep the commits clearer when making a PR in the subrepo. When you want to push your changes to the subrepo, just decide on branch name in the remote repo (probably the same as your feature branch) and do the following:
`git subtree push --prefix=didcomm-v2 didcomm-v2 <branch-name>`
This will take any commits that have been made in the didcomm-v2 branch and separate them out. 

`git subtree pull --prefix=proto --squash proto main`
A couple ways to make this simpler:
- Only pull changes from the main branch of sub repositories - this will ensure we don't need to go through any sticky rebases. 
- When pulling changes, make sure to use the `--squash` flag to keep the version history clean and make it easier to revert changes if necessary. 
