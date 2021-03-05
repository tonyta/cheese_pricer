Gem::Specification.new do |spec|
  spec.name          = "cheese-pricer"
  spec.summary       = "Cheese Pricer"
  spec.version       = "0.0.1"

  spec.authors       = ["Tony Ta"]
  spec.email         = ["tonyta.tt@gmail.com"]

  spec.files         = Dir["lib/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
