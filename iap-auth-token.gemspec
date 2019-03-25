lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iap_auth_token/version"

Gem::Specification.new do |s|
  s.name        = 'iap_auth_token'
  s.version     = IapAuthToken::VERSION
  s.date        = '2019-03-25'
  s.summary     = "This gem created authentication token for services running behind IAP"
  s.description = "This gem created authentication token for services running behind IAP"
  s.authors     = ["Sankalp Singh"]
  s.email       = 'sankalps@go-jek.com'
  s.files       = ["lib/iap_auth_token.rb", "lib/iap_auth_token/configuration.rb", "lib/iap_auth_token/pkey.rb", "lib/iap_auth_token/iap_auth.rb", "lib/iap_auth_token/jws.rb", "lib/iap_auth_token/token.rb", "lib/iap_auth_token/version.rb"]
  s.homepage    = 'http://rubygems.org/gems/iap_auth_token'
  s.license       = 'MIT'

  s.add_development_dependency "rake",      "~> 10.0"
  s.add_development_dependency "rspec",     "~> 3.0"
end
