# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'madmimi/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "madmimi-rails"
  spec.version       = Madmimi::Rails::VERSION
  spec.authors       = ["Slava Markevich"]
  spec.email         = ["slava.markevich@gmail.com"]
  spec.description   = %q{ActionMailer delivery method for sending emails via madmimi}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "madmimi"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "debugger"
end
