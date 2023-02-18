lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-teamwork/version"

Gem::Specification.new do |gem|
  gem.add_dependency "oauth2",     [">= 1.4", "< 3"]
  gem.add_dependency "omniauth",   "~> 2.0"

  gem.add_development_dependency "bundler", "~> 2.0"

  gem.authors       = ["Joshua Hoskins"]
  gem.email         = ["jhoskins@crmified.com"]
  gem.description   = "Unofficial OmniAuth OAuth2 strategy for Teamwork"
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/CRMified/omniauth-teamwork-oauth2"
  gem.licenses      = %w[MIT]

  gem.executables   = `git ls-files -- bin/*`.split("\n").collect { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-teamwork"
  gem.require_paths = %w[lib]
  gem.version       = OmniAuth::Teamwork::VERSION
end
