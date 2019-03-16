module IapAuthToken
	class Token
		TokenURI = "https://www.googleapis.com/oauth2/v4/token"
		JWTBearerType = "urn:ietf:params:oauth:grant-type:jwt-bearer"

		def self.generate_bearer_token( assertion )
			uri = URI(TokenURI)
			res = Net::HTTP.post_form(uri, 'grant_type' => JWTBearerType, 'assertion' => assertion)
			response_jwt = JSON.parse(res.body)["id_token"]
			return response_jwt
		end
	end
end
