require_relative 'lib/trinsic/version'

Gem::Specification.new do |spec|
  spec.name          = "trinsic"
  spec.version       = Trinsic::VERSION
  spec.authors       = ["Scott Phillips"]
  spec.email         = ["polygonguru@gmail.com"]

  spec.summary       = %q{Trinsic Services Ruby SDK}
  spec.homepage      = "https://github.com/trinsic-id/sdk"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/trinsic-id/sdk/ruby"
  spec.metadata["changelog_uri"] = "https://github.com/trinsic-id/sdk" # TODO Changelog.md?

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake"
  spec.add_dependency "google-protobuf"
  spec.add_dependency "grpc"
end
