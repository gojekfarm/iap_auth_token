# IAP Authenticator

[![Build Status](https://travis-ci.org/gojekfarm/iap_authenticator.svg?branch=master)](https://travis-ci.org/gojekfarm/iap_authenticator)

This gem can be used to generate signed JWT bearer tokens from Google service account for making authorized service calls.
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

## References
Similar proxy implementation can be found here: https://github.com/gojekfarm/iap_auth
