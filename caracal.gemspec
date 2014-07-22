# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caracal/version'

Gem::Specification.new do |spec|
  spec.name          = 'caracal'
  spec.version       = Caracal::VERSION
  spec.authors       = ['John Dugan']
  spec.email         = ['plia@plia.com']
  spec.summary       = %q{ Fast, professional MSWord writer for Ruby. }
  spec.description   = %q{ Caracal is a pure Ruby MSWord generation library that produces professional quality Word documents using a simple, HTML-style DSL. }
  spec.homepage      = 'https://github.com/ibpinc/caracal'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri', '~> 1.6'
  spec.add_dependency 'rubyzip',  '~> 1.1'
  spec.add_dependency 'tilt'
  
  spec.add_development_dependency 'appraisal',        '~> 1.0'
  spec.add_development_dependency 'bundler',          '~> 1.6'
  spec.add_development_dependency 'rake',             '~> 0'
  spec.add_development_dependency 'rspec-rails',      '~> 2.14'
  spec.add_development_dependency 'rspec-pride',      '~> 2.3'
  spec.add_development_dependency 'shoulda-matchers', '~> 2.6'
  spec.add_development_dependency 'shoulda-context',  '~> 1.2'
end