module IapAuthToken

	class JWS
		ALGORITHM = 'RS256'

		def initialize(private_key, refresh_time_seconds, iss, target_audience)
			@private_key = private_key
			@refresh_time_seconds = refresh_time_seconds
			@iss = iss
			@aud = IapAuthToken::Token::TokenURI
			@target_audience = target_audience
		end

		def assertion
			exp = Time.now.to_i + @refresh_time_seconds
			iat = Time.now.to_i
			payload = {
				iss: @iss,
				aud: @aud,
				exp: exp,
				iat: iat,
				target_audience: @target_audience
	}
			token = JWT.encode payload, @private_key, ALGORITHM
			return token
		end
        end

end
