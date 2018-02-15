# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ougai/version'

Gem::Specification.new do |spec|
  spec.name          = "ougai"
  spec.version       = Ougai::VERSION
  spec.authors       = ["Toshimitsu Takahashi"]
  spec.email         = ["toshi@tilfin.com"]

  spec.summary       = %q{JSON logger compatible with node-bunyan or pino is capable of handling structured data easily.}
  spec.description = <<-EOF
    A structured logging system is capable of handling a message, custom data or an exception easily.
    It has JSON formatters compatible with Bunyan or pino for Node.js and human readable formatter with Awesome Print for console.
  EOF
  spec.homepage      = "https://github.com/tilfin/ougai"
  spec.license       = "MIT"

  spec.files         = Dir['[A-Z]*[^~]'] + Dir['lib/**/*.rb'] + ['README.md', 'LICENSE.txt']
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.2'
  spec.add_dependency "oj", "~> 3.4"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
