# frozen_string_literal: true

require_relative "lib/rhuey/version"

Gem::Specification.new do |spec|
  spec.name = "rhuey"
  spec.version = Rhuey::VERSION
  spec.authors = ["Ernie Brodeur"]
  spec.email = ["ebrodeur@ujami.net"]

  spec.summary = "Ruby and phillips hue."
  spec.homepage = "https://github.com/erniebrodeur/rhuey"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/erniebrodeur/rhuey"
  spec.metadata["changelog_uri"] = "https://github.com/erniebrodeur/rhuey/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'excon'
  spec.add_runtime_dependency 'oj'
end
