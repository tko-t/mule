
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mule/version"

Gem::Specification.new do |spec|
  spec.name          = "mule"
  spec.version       = Mule::VERSION
  spec.authors       = ["tko-t"]
  spec.email         = ["tkot.bom@gmail.com"]

  spec.summary       = %q{guest to host clipboard}
  spec.description   = %q{guest to host clipboard}
  spec.homepage      = "https://github.com/tko-t/mule"
  spec.license       = "MIT"

  spec.files         = ['lib/mule.rb']
  spec.bindir        = "exe"
  spec.executables   = ['mule']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
