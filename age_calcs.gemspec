# frozen_string_literal: true

require_relative "lib/age_calcs/version"

Gem::Specification.new do |spec|
  spec.name = "age_calcs"
  spec.version = AgeCalcs::VERSION
  spec.authors = ["your user_name"]
  spec.email = ["your email"]

  spec.summary = "Like this gem created for calculating age by given date of birth. Just call this method  'AgeCalcs.find_age(yyyy,mm,dd)' as integer value."
  # spec.description = "Call   AgeCalcs.find_age(yyyy,mm,dd) as integer value."
  # spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.homepage = "https://github.com/perumaltt/age_calcs"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
