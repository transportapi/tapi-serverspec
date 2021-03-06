# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))
require 'tapi/serverspec/version'

Gem::Specification.new do |spec|
  spec.name = 'tapi-serverspec'
  spec.version = TAPI::Serverspec::VERSION
  spec.authors = %w(TransportAPI)
  spec.email = %w(support@transportapi.com)
  spec.summary = 'Extensions to Serverspec by TransportAPI'
  spec.homepage = 'https://github.com/transportapi/tapi-serverspec'
  spec.license = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'
  spec.files = `git ls-files -z`.split("\x0")
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.14.3'
  spec.add_development_dependency 'fuubar', '~> 2.2.0'
  spec.add_development_dependency 'rspec', '~> 3.6.0'

  spec.add_dependency 'serverspec', '~> 2.39.1'
end
