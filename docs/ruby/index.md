# The Trinsic Ruby SDK

The Trinsic Ruby SDK makes it easy to interact with the Trinsic API from any Ruby application. The most recent version of the library can be found on [RubyGems](https://rubygems.org/gems/trinsic-services). You can find the SDKs source on [Github](https://github.com/trinsic-id/sdk/ruby).

## Installation and Configuration
* Make sure you have the okapi native binaries installed on your machine. Default installation instructions are in the [readme.md here](https://github.com/trinsic-id/okapi/)
* If you install to a different location for debugging, use the environment variable `RUBY_DLL_PATH` on windows. `LD_LIBRARY_PATH` for Ruby on Mac/Linux
```bash
gem install trinsic-services
```
* Test installation by running the following Ruby script:
```ruby
require 'trinsic_services'

account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_prod_server)
account_profile = account_service.sign_in(nil).profile
puts account_profile
```
* Output should look something like this:
```ruby
<Services::Account::V1::AccountProfile: profile_type: "https://trinsic.id/security/v1/oberon", auth_data: ")urn:trinsic:wallets:bbBEp9EmV1NNWMadBhit2$19ac25ae-2fd0-44d1-9ef7-73cc668e8f7d", auth_token: "▒", protection: <Services::Account::V1::TokenProtection: enabled: false, method: :None>>
```

## Next Steps
Once the SDK is installed and configured, you're ready to start building! We recommend going through the [walkthrough](../walkthroughs/vaccination.md) next. If you're ready to dive into building your ecosystem, check out our [API Reference](../reference/index.md)

[Start Walkthrough](../walkthroughs/vaccination.md){ .md-button .md-button--primary } [Explore API](../reference/index.md){ .md-button } 
<!-- [Ruby SDK Reference](../reference/ruby/index.md){ .md-button } -->