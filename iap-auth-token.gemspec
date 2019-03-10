Gem::Specification.new do |spec|
  spec.name        = 'iap_auth_token'
  spec.version     = '0.0.1'
  spec.date        = '2019-03-05'
  spec.summary     = "Auth!"
  spec.description = "Gem to authenticate with iap"
  spec.authors     = ["Sankalp Singh"]
  spec.email       = 'sankalps@go-jek.com'
  spec.homepage    =
    'http://rubygems.org/gems/iap_auth_token'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
	  `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler",   ">= 1.14"
  spec.add_development_dependency "rake",      "~> 10.0"
  spec.add_development_dependency "rspec",     "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'simplecov', '~>0.16'

end
