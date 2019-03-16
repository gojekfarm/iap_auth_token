module IapAuthToken
  class IapAuth
	  attr_reader :jws
	  def initialize
		  @configuration = IapAuthToken.configuration
		  json_from_file = File.read(@configuration.service_account_credentials_path)
		  service_account = JSON.parse(json_from_file)
		  private_key = IapAuthToken::Pkey.parse(service_account['private_key'])
		  @jws = IapAuthToken::JWS.new(private_key, @configuration.refresh_time_seconds, service_account['client_email'], @configuration.client_id)
	  end

	  def token
		  assertion = self.jws.assertion
		  token = IapAuthToken::Token.generate_bearer_token( assertion)
		  return token
	  end
  end
end
