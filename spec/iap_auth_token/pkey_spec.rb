require 'spec_helper'
require 'openssl'

RSpec.describe IapAuthToken::Pkey do
	it 'should be able to handle invalid key' do
		expect { IapAuthToken::Pkey.parse("") }.to raise_error('Invalid Private Key')
	end
end
