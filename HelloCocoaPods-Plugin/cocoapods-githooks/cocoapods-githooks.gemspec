# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-githooks/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-githooks'
  spec.version       = CocoapodsGithooks::VERSION
  spec.authors       = ['wesley4chen']
  spec.email         = ['wesley4chen@gmail.com']
  spec.description   = %q{A short description of cocoapods-githooks.}
  spec.summary       = %q{A longer description of cocoapods-githooks.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-githooks'
  spec.license       = 'MIT'

  spec.files = Dir['lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
