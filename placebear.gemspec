# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'placebear/version'

Gem::Specification.new do |spec|
  spec.name          = "placebear"
  spec.version       = Placebear::VERSION
  spec.authors       = ["dannysperry"]
  spec.email         = ["danny.sperry@gmail.com"]
  spec.summary       = %q{a simple rails helper method for writting placebear image tags in rails}
  spec.description   = %q{A simple ruby wrapper around the http://placebear.com library}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.platform      = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 4.7.3"

end
