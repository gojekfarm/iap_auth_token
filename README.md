# IAP Auth Token

This gem can be used for service to service authentication using oauth2.0.
It uses google service account to generate authentication token. It is named IAP because it is majorly used to communicate with applciation running behind IAP.
For more information refer to this link: https://developers.google.com/identity/protocols/OAuth2ServiceAccount#jwt-auth

## prerequisite

You need a google `service account and client ID`

## Installing

### Using Rubygems:
```
sudo gem install iap_auth_token
```

### Using Bundler:

Add the following to your Gemfile
```
gem 'jwt'
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
gem build iap-auth-token.gemspec
gem install iap-auth-token-<version>.gem
```

# Usage

```
source .env
ruby example/snippet.rb
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/gojekfarm/iap_auth_token
