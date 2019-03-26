# IAP Authenticator

This gem can be used for service to service authentication using oauth2.0.
It uses google service account to generate JWT authentication token.
For more information refer to this link: https://developers.google.com/identity/protocols/OAuth2ServiceAccount#jwt-auth

## prerequisite

You need a google `service account and client ID`

## Installing

### Using Rubygems:
```
sudo gem install iap_authenticator
```

### Using Bundler:

Add the following to your Gemfile
```
gem 'iap_authenticator'
```
And run `bundle install`

## Development

### Specs

```
bundle install
bundle exec rake spec
```

### Running locally

```
gem build iap-authenticator.gemspec
gem install iap-authenticator-<version>.gem
```

# Usage

```
source .env
ruby example/snippet.rb
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/gojekfarm/iap_authenticator
