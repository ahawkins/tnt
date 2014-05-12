# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tnt/version'

Gem::Specification.new do |spec|
  spec.name          = "tnt"
  spec.version       = Tnt::VERSION
  spec.authors       = ["ahawkins"]
  spec.email         = ["adam@hawkins.io"]
  spec.summary       = %q{Make understanable Error classes easily}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/ahawkins/tnt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
