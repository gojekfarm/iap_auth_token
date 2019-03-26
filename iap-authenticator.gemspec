lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iap_authenticator/version"

Gem::Specification.new do |s|
  s.name        = 'iap_authenticator'
  s.version     = IapAuthenticator::VERSION
  s.date        = '2019-03-25'
  s.summary     = "This gem created authentication token for services running behind IAP"
  s.description = "This gem created authentication token for services running behind IAP"
  s.authors     = ["Sankalp Singh"]
  s.email       = 'sankalps@go-jek.com'
  s.files       = ["lib/iap_authenticator.rb", "lib/iap_authenticator/configuration.rb", "lib/iap_authenticator/pkey.rb", "lib/iap_authenticator/iap_auth.rb", "lib/iap_authenticator/jws.rb", "lib/iap_authenticator/token.rb", "lib/iap_authenticator/version.rb"]
  s.homepage    = 'http://rubygems.org/gems/iap_authenticator'
  s.license       = 'MIT'

  s.add_development_dependency "rake",      "~> 10.0"
  s.add_development_dependency "rspec",     "~> 3.0"
end
