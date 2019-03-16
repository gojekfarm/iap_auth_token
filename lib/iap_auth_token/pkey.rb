module IapAuthToken
	class Pkey
		def self.parse( private_key_string )
			rsa_private_key = OpenSSL::PKey::RSA.new(private_key_string)
			return rsa_private_key
		end
	end
end
