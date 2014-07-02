# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'playground/version'

Gem::Specification.new do |spec|
  spec.name          = 'playground'
  spec.version       = Playground::VERSION
  spec.authors       = ['Sam Soffes']
  spec.email         = ['sam@soff.es']
  spec.summary       = 'A simple utility for converting Markdown into Swift playgrounds.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/soffes/playground'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.2'
  spec.add_dependency 'redcarpet'
  spec.add_dependency 'thor'
end
