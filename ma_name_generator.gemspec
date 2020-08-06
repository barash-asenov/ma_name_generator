# frozen_string_literal: true

require_relative 'lib/ma_name_generator/version'

Gem::Specification.new do |spec|
  spec.name          = 'ma_name_generator'
  spec.version       = MaNameGenerator::VERSION
  spec.authors       = ['Barash Asenov']
  spec.email         = ['asenov@carlfinance.de']

  spec.summary       = 'Fake name generator tool for MA.'
  spec.description   = 'Fake name generator tool for MA.'
  spec.homepage      = "https://github.com/barash-asenov/ma_name_generator"
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org/'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec', '~> 3.9'
end
