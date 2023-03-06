---
name: New Release Checklist
about: Maintainers checklist for publishing new releases
title: New Release Checklist - vX.X.0
labels: ''
assignees: fundthmcalculus, geel9

---

# Description

This issue is tracking steps to complete a release ensuring all artifacts are correctly produced. This covers both automated tasks and manual tasks.

# Release

Manual steps are instructions that need to be taken in order to have a full release on all associated repos. Validation steps consist of checklist of items to verify, to ensure all reqiuirements and releases have gone without problems and that the correct assets are created needed for the manual steps.

## Intiial Steps

- [ ] **Github Release** &mdash; create a new release following the semantic versioning guidelines. The next available version should increase either the Major or Minor version, following the semver recommendations. Patch should be set to `0`. This allows individual languages to publish hotfixes under the same version with new patch. An example version format is `v1.2.0`.
    - [ ] Create a new tag with the same name `v[MAJOR].[MINOR].0`
    - [ ] Ensure code contributions and commits are included in the release description, either by utilizing the GitHub automatic options or entering them manually.
    - [ ] Organize the release notes into the following sections: _Language-Specific Changes_, _SDK-Wide Changes_, _Documentation/Samples_, _Protobuf/gRPC Updates_, _Bugfixes/Minor Improvements_, _Internal Improvements_
    - [ ] Confirm documentation of any breaking changes with @fundthmcalculus @geel9 @michaeldboyd

## Validation Steps
- [ ] Builds complete successfully
- [ ] Release actions complete successfully
- [ ] **Assets** &mdash; ensure the following assets have been created by the release actions and are uploaded as assets in the release
    - [ ] Debian Package, named `trinsic_X.X.0_amd64.deb`
    - [ ] Trinsic CLI tarball (for Homebrew), named `trinsic-cli-X.X.0.tar.gz`
    - [ ] Trinsic CLI vendored tarball (for Homebrew), named `trinsic-cli-vendor-X.X.0.tar.gz`
    - [ ] Trinsic CLI Microsoft Installer (msi), name `trinsic-cli-X.X.0.msi`
    - [ ] Trinsic Java/Kotlin (jar), name `trinsic-services-X.X.0.jar`
- [ ] **Package Releases** &mdash; validate if packages have been correctly released
  - [ ] golang tag (`go/vX.X.0`)
  - [ ] nuget.org
  - [ ] npmjs.com
  - [ ] pypi.org
  - [ ] pub.dev (Dart) - future work, this is not fully implemented

## Post-release Manual Steps

- [ ] **Swift Release** &mdash; create new release in associated repository for Swift package at [trinsic-id/sdk-swift](https://github.com/trinsic-id/sdk-swift). The release version in this repo follows a pattern that doesn't include leading `v`. Example release format is `1.2.0`.
- [ ] External Tools
  - [ ] **Homebrew** &mdash; to create a new tap, follow the instructions at [trinsic-id/homebrew-tap](https://github.com/trinsic-id/homebrew-tap) by making a new PR with the required information. This step depends on a release asset package. TODO: Renovate bot can update this automatically
  - [ ] **Windows Package Manager** (winget) &mdash; Update PR to the yaml here: https://github.com/microsoft/winget-pkgs/tree/master/manifests/t/trinsic/cli/ This step depends on the Microsoft Installer package.
  - [ ] **NixOS** &mdash; done automatically by nixos bot. Periodically verify that package versions haven't fallen behind at https://search.nixos.org/packages in Unstable channel.
- [ ] **Samples** &mdash; if required, code samples at https://github.com/trinsic-id/sdk-examples should be updated to match the version
    - [ ] Renovate bot will produce PRs to update all relevant samples with the latest trinsic packages, so this is mostly automatic
    - [ ] Update Instruqt demo here: https://github.com/trinsic-id/tutorials/
- [ ] Release announced to Trinsic Team
