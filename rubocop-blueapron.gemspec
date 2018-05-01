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

  spec.summary       = 'Blue Apron Style Guide RuboCop extension.'
  spec.description   = 'Blue Apron Style Guide RuboCop extension.'
  spec.homepage      = 'https://github.com/blueapron/rubocop-blueapron'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = Dir['config/*.yml', 'lib/**/*.rb']
  spec.test_files = Dir['spec/**/*.rb']
  spec.extra_rdoc_files = ['LICENSE.txt', 'README.md']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop', '~> 0.55'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'simplecov', '~> 0.11'

  if ENV['CIRCLECI']
    spec.add_development_dependency 'codeclimate-test-reporter'
    spec.add_development_dependency 'rspec_junit_formatter'
  end
end
