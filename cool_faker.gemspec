# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cool_faker/version'

Gem::Specification.new do |spec|
  spec.name          = "cool_faker"
  spec.version       = CoolFaker::VERSION
  spec.authors       = ["Nicholas Cu & Quentin Devauchelle & Armando Reed & Jamie McKenzie"]
  spec.email         = [""]
  spec.summary       = %q{generate a list of real movie character names}
  spec.description   = %q{Perfect for filling in tables to test how program treats data}
  spec.homepage      = "https://github.com/Qt-dev/cool-faker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|specs|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
