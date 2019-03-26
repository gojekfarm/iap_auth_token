require 'spec_helper'
require 'openssl'

RSpec.describe IapAuthenticator::JWS do
	it 'should create a valid assertion' do
		private_key = OpenSSL::PKey::RSA.generate(2048)
		public_key = private_key.public_key
		refresh_time_seconds = 3600.to_i
		client_id = "76739892392-235s452dfgfdhe2723v8823.apps.exampleusercontent.com"
		client_email = "test-iap@test.iam.exampleaccount.com"
		jws = IapAuthenticator::JWS.new(private_key, refresh_time_seconds, client_email, client_id)
		assertion = jws.assertion
		decoded_token = JWT.decode assertion, public_key, true, { algorithm: IapAuthenticator::JWS::ALGORITHM }
		expect(decoded_token[0]["iss"]).to eq(client_email)
		expect(decoded_token[0]["target_audience"]).to eq(client_id)
		expect(decoded_token[0]["aud"]).to eq(IapAuthenticator::Token::TokenURI)
		expect(decoded_token[1]["alg"]).to eq(IapAuthenticator::JWS::ALGORITHM)
	end

	it 'should handle JWS encoding failure' do
                jws = IapAuthenticator::JWS.new( "", 3600, "", "")
		expect { jws.assertion }.to raise_error('Unable to create JWT')
	end
end
