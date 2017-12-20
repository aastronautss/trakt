# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trakt/version'

Gem::Specification.new do |s|
  s.name          = 'trakt'
  s.version       = Trakt::VERSION
  s.authors       = ['Daniel Bretoi']
  s.email         = ['daniel@bretoi.com']
  s.description   = %q{API for trakt.tv service}
  s.summary       = %q{API for trakt.tv service}
  s.homepage      = ""

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'excon'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'vcr'
end
