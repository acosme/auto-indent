# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_indent/version'

Gem::Specification.new do |spec|
  spec.name          = "auto_indent"
  spec.version       = AutoIndent::VERSION
  spec.authors       = ["Adriano Cosme"]
  spec.email         = ["adrianocosmedeoliveira@gmail.com"]
  spec.summary       = %q{Auto indentation for all rb files in a directory}
  spec.description   = %q{Auto indentation for all rb files in a directory}
  spec.homepage      = "https://github.com/acosme/auto-indent"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  #  spec.add_dependency "json"
end
