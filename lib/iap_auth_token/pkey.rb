module IapAuthToken
	class Pkey
		def self.parse( private_key_string )
			begin
				rsa_private_key = OpenSSL::PKey::RSA.new(private_key_string)
			rescue
				raise "Invalid Private Key"
			end
			return rsa_private_key
		end
	end
end
