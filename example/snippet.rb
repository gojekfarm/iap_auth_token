require 'iap_authenticator'
require 'figaro'
require 'net/http'

IapAuthenticator.configure do |config|
	  config.service_account_credentials_path	= Figaro.env.SERVICE_ACCOUNT_CREDENTIALS_PATH
	  config.client_id           			= Figaro.env.CLIENT_ID
end

iap_auth = IapAuthenticator::IapAuth.new
token = iap_auth.token

uri = URI("https://test.example.com/ping")
http = Net::HTTP.new(uri.host, uri.port)
req = Net::HTTP::Get.new(uri.path)
req['Authorization'] = "Bearer #{token}"
http.use_ssl = true
resp = http.request(req)

puts resp.body

