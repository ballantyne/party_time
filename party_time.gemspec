# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'party_time/version'

Gem::Specification.new do |spec|
  spec.name          = "party_time"
  spec.version       = PartyTime::VERSION
  spec.authors       = ["Scott Ballantyne"]
  spec.email         = ["ussballantyne@gmail.com"]
  spec.description   = %q{api wrapper for sunlight party time}
  spec.summary       = %q{api wrapper for sunlight party time}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'hashie'
  spec.add_dependency 'rest-client'
  spec.add_dependency 'json'
end
