# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/blueapron/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-blueapron'
  spec.version       = RuboCop::Blueapron::VERSION
  spec.authors       = ['Blue Apron Engineering']
  spec.email         = ['engineering@blueapron.com']
  spec.license       = 'MIT'

  spec.summary       = %q{Blue Apron Style Guide RuboCop extension.}
  spec.description   = %q{Blue Apron Style Guide RuboCop extension.}
  spec.homepage      = 'https://github.com/blueapron/rubocop-blueapron'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host'
  spec.metadata['allowed_push_host'] = 'https://push.fury.io'

  spec.files = Dir[
    'config/*.yml',
    'lib/**/*.rb'
  ]
  spec.test_files = Dir['spec/**/*.rb']
  spec.extra_rdoc_files = ['MIT-LICENSE.md', 'README.md']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'fury'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'

  if ENV['CIRCLECI']
    spec.add_development_dependency 'codeclimate-test-reporter'
    spec.add_development_dependency 'rspec_junit_formatter'
  end
end
