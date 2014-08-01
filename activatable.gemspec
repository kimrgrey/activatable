# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activatable/version'

Gem::Specification.new do |spec|
  spec.name          = "activatable"
  spec.version       = Activatable::VERSION
  spec.authors       = ["Sergey Tsvetkov"]
  spec.email         = ["sergey.a.tsvetkov@gmail.com"]
  spec.summary       = %q{Do you want to make your model activatable? No problem.}
  spec.description   = %q{Do you want to make your model activatable? No problem.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
