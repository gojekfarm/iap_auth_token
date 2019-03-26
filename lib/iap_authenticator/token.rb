module IapAuthenticator
	class Token
		TokenURI = "https://www.googleapis.com/oauth2/v4/token"
		JWTBearerType = "urn:ietf:params:oauth:grant-type:jwt-bearer"

		def self.generate_bearer_token( assertion )
			uri = URI(TokenURI)
			begin
				res = Net::HTTP.post_form(uri, 'grant_type' => JWTBearerType, 'assertion' => assertion)
			rescue => e
				raise e
			end
			if res.code.to_i != 200
				error_description = JSON.parse(res.body)["error_description"]
				error = JSON.parse(res.body)["error"]
			 	raise("Request failed with error: #{error} and description: #{error_description}")
			end

			response_jwt = JSON.parse(res.body)["id_token"]
			return response_jwt
		end
	end
end
