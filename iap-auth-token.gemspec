Gem::Specification.new do |s|
  s.name        = 'iap_auth_token'
  s.version     = '0.0.13'
  s.date        = '2010-04-28'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Nick Quaranto"]
  s.email       = 'nick@quaran.to'
  s.files       = ["lib/iap_auth_token.rb", "lib/iap_auth_token/configuration.rb", "lib/iap_auth_token/pkey.rb", "lib/iap_auth_token/iap_auth.rb", "lib/iap_auth_token/jws.rb", "lib/iap_auth_token/token.rb", "lib/iap_auth_token/version.rb"]
  s.homepage    =
    'http://rubygems.org/gems/hola'
  s.license       = 'MIT'
  s.add_development_dependency "rake",      "~> 10.0"
  s.add_development_dependency "rspec",     "~> 3.0"
end
