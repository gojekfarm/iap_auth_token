module IapAuthenticator
	class JWS
		ALGORITHM = 'RS256'

		def initialize(private_key, refresh_time_seconds, iss, target_audience)
			@private_key = private_key
			@refresh_time_seconds = refresh_time_seconds
			@iss = iss
			@aud = IapAuthenticator::Token::TokenURI
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

			begin
				token = JWT.encode payload, @private_key, ALGORITHM
			rescue
				raise "Unable to create JWT"
			end
			return token
		end
        end
end
