# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'regeoip/version'

Gem::Specification.new do |spec|
  spec.name          = "regeoip"
  spec.version       = Regeoip::VERSION
  spec.authors       = ["Phuong Nguyen"]
  spec.email         = ["phuongnd08@gmail.com"]

  spec.summary       = %q{Resolve ipv4 and ipv6 to country code without need for extra http request}
  spec.description   = %q{Resolve ipv4 and ipv6 to country code without need for extra http request}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "geoip", "~> 1.6.2"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
