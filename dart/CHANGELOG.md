## 1.8.0

**Full Changelog**: https://github.com/trinsic-id/sdk/compare/v1.7.0...v1.8.0

## 1.7.0

### Language-Specific Changes
* You can now explicitly import the browser-only dependencies in typescript by: `import "@trinsic/sdk/browser"

### Other SDK-wide Changes
#### Version Information Metadata
> Sending specific metadata: okapi version, SDK version, SDK language. We only use this information for security/obsolescence purposes.
* .NET Metadata: SDK Version/Lang; Okapi Version; Optional Authentication by @geel9 in https://github.com/trinsic-id/sdk/pull/855
* Dart: metadata request, version signature by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/860
* Go metadata sending by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/861
* Java updates with metadata options by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/862
* python metadata / version information by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/865
* Sdk 845 ruby metadata by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/866
* Sdk 845 cli metadata sender by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/872
* Sdk 845 typescript metadata version by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/868


### Documentation and Samples
* Clarify named ecosystem policy by @geel9 in https://github.com/trinsic-id/sdk/pull/815
* New docs navigation style by @geel9 in https://github.com/trinsic-id/sdk/pull/814
* Remove duplicated authors footer by @geel9 in https://github.com/trinsic-id/sdk/pull/821
* Update sdk-change.md by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/824
* Special handling of `map<>` proto types in documentation by @geel9 in https://github.com/trinsic-id/sdk/pull/863
* Update authentication documentation by @geel9 in https://github.com/trinsic-id/sdk/pull/826
* Docs `navigation.sections` feature by @geel9 in https://github.com/trinsic-id/sdk/pull/827
* Further updates to `Reference -> Overview` by @geel9 in https://github.com/trinsic-id/sdk/pull/830
* Fork `codeinclude` plugin to enable fail-on-not-found functionality by @geel9 in https://github.com/trinsic-id/sdk/pull/832
* Fix Go/Java samples; re-add `WalletService.Search()` Go interface by @geel9 in https://github.com/trinsic-id/sdk/pull/833
* Implement custom tab sync logic by @geel9 in https://github.com/trinsic-id/sdk/pull/834
* Add documentation for `IssuerIsSigner` verification check by @geel9 in https://github.com/trinsic-id/sdk/pull/848
* Walkthrough `CreateEcosystem` changes; add `ecosystem_id` argument to all `loginAnonymous` methods by @geel9 in https://github.com/trinsic-id/sdk/pull/871
* OIDC Docs: Improved `Configuration` section, document missing parameters, title for code block by @geel9 in https://github.com/trinsic-id/sdk/pull/879
* Automatically host preview version of docs for PRs by @geel9 in https://github.com/trinsic-id/sdk/pull/890
* OIDC Documentation: Improved `Samples` section, link to OIDC Libraries by @geel9 in https://github.com/trinsic-id/sdk/pull/891
* Fix typo in `Standards` document by @geel9 in https://github.com/trinsic-id/sdk/pull/894


### Protobuf/gRPC Updates
* Add node http2 transport layer back. by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/889


### Bugfixes/Minor Improvements
* fix dotnet readme pathing for release by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/811
* Sdk 895 allow direct imports by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/902
* Export `@trinsic/trinsic/browser` properly by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/906
* Fix issueCredential go injection by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/831
* golang on windows now uses windows msvcrt by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/801
* .NET: Always send metadata; don't fail if auth token not present by @geel9 in https://github.com/trinsic-id/sdk/pull/829
* Remove `default_ecosystem` by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/840
* Set AuthToken on signin/ecosystem create, `SetAuthToken` in every language by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/846
* Use `commonjs` module support by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/847
* Remove `default_ecosystem` from CLI config by @tmarkovski in https://github.com/trinsic-id/sdk/pull/867
* Fix Typescript Web by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/869
* anonymize methods that can be anonymized, rename `searchWallet` by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/877
* SDK Version Constant Metadata by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/887
* [cli] add library target by @tmarkovski in https://github.com/trinsic-id/sdk/pull/896
* [cli] wire up delete template command by @tmarkovski in https://github.com/trinsic-id/sdk/pull/897


### Internal Improvements
* MFA on rubygems prevents publish from CI/CD by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/810
* Create assign-issues-to-project.yml by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/904
* Update new-release-checklist.md by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/812
* CLI test on Github Actions by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/817
* Generated template Code Wrappers by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/813
* Update CODEOWNERS by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/823
* Copied Protos from server by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/858
* Karma should now report coverage by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/900
* Bump terser from 5.14.1 to 5.14.2 in /web by @dependabot in https://github.com/trinsic-id/sdk/pull/893
* Bump terser from 5.12.1 to 5.14.2 in /samples/oidc-client-verifier by @dependabot in https://github.com/trinsic-id/sdk/pull/892
* Update Production Package Testing to 1.6.0 by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/825
* Copied Protos from server by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/851
* Node 18 testing by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/853
* Copied Protos from server by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/873
* Update action versions, enable caching for python, node, golang, ruby by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/886
* [ts][go] Add memory token provider for storing auth tokens by @fundthmcalculus in https://github.com/trinsic-id/sdk/pull/901



**Full Changelog**: https://github.com/trinsic-id/sdk/compare/v1.6.0...v1.7.0

## 1.0.0

- Initial version.
