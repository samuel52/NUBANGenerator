
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nuban/version"

Gem::Specification.new do |spec|
  spec.name          = "nuban"
  spec.version       = Nuban::VERSION
  spec.authors       = ["samuel52"]
  spec.email         = ["samuelsadiq52@gmail.com"]

  spec.summary       = %q{Nigerian Uniform Bank Account Number Generator}
  spec.description   = %q{Used for geanrating NUBAN via ruby API}
  spec.homepage      = "https://github.com/samuel52/NUBANGenerator.git"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/**/*.rb", "ext/**/*.{c,h,rb}", "*.md", "BSDL", "LICENSE.txt"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
