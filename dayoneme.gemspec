# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dayoneme/version'

Gem::Specification.new do |spec|
  spec.name          = "dayoneme"
  spec.version       = Dayoneme::VERSION
  spec.authors       = ["TJ Stankus"]
  spec.email         = ["tjstankus@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "1.6.0.rc2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '3.0.0.beta2'
end
