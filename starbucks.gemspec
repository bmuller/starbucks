lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'starbucks/version'

Gem::Specification.new do |gem|
  gem.name          = "starbucks"
  gem.version       = Starbucks::VERSION
  gem.authors       = ["Brian Muller"]
  gem.email         = ["bamuller@gmail.com"]
  gem.description   = %q{Find starbuckses.}
  gem.summary       = %q{Find starbuckses from lat/lon.}
  gem.homepage      = "https://github.com/bmuller/starbucks"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency("json")
  gem.add_development_dependency("rake")
end
