require 'spec_helper'

RSpec.describe IapAuthenticator::Configuration do
  let(:client_id) { '456789-jhskasbjsnjan.apps.googleusercontent.com' }
  let(:configuration) {
      IapAuthenticator.configure do |config|
	    config.client_id = client_id
	  end
  }

  it 'should be able to config client id while booting up' do
    actual_client_id = configuration.client_id
    expect(actual_client_id.to_s).to eq client_id
  end
end
