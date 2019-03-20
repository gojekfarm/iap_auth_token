require 'spec_helper'
require 'openssl'
require "base64"

RSpec.describe IapAuthToken::Pkey do
	it 'should be able to handle invalid key' do
		expect { IapAuthToken::Pkey.parse("") }.to raise_error('Invalid Private Key in service account credentials.')
	end

	it 'should parse RSA key' do
		key = OpenSSL::PKey::RSA.generate(2048)
		parsed_key = IapAuthToken::Pkey.parse(key)
		expect(parsed_key.to_s).not_to be_empty
	end

	it 'should parse PKCS8 key' do
		base64_encoded_key = "LS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCk1JSUV2UUlCQURBTkJna3Foa2lHOXcwQkFRRUZBQVNDQktjd2dnU2pBZ0VBQW9JQkFRQ3hRM3RjOVYra1pmUEUKMUVhOUo1MGNJWjRGdE1HV1NoSklUeU1FbGNhN1FWdHhISFBtaUZFR05yeWRRN29HWXdySTZBT1lFbHVEWHNoVwp1ZmpIV2Fsci9pUGk1SG82Mkx3c0VIK2FnUGw2dVJuNFU1ZkVwWHRNalh3eVZDUkgrZDhnMk5SR05pbFE5dmd1CnJnZTIvaGtzeHdid1ErTTY0V1lwdnpValpmQzNsMmhCWCt4ZVluSVRnN1JZL2htUExPVlQ3YXk2L3RFd0dMNjEKekR4TzhGL245emt4bDhIUnZJUmwyc2FCSjEra0gweW1FVm9XSmFMWGx2WnE0V2pSSWtOL0lmQmpGa1FHajJYMwo0MjFFRTc1VUhVOWhMNjlYNXk0L1ZYekxkZHRXSU13RFUrTVhNeDdkMlk2WkdQaVhmOFBoQTNRQ3JLdGhlUXljCjdTMWkrL3ZoQWdNQkFBRUNnZ0VBYWRvUkxaWjg4Vy9NSEdwaWY0dkxQc1E0VjlIemsrcFJkb3FETDdhOHdJOHIKcXFUQjlSVEx4WGtrTW9rQjZkUjAyVG5yQTRGYTBsemtKeDNRbUVKTGNHaUhSM01HSm1QTUlrZ0wydGhQb2VBcwp5T1FxQ2N5RGoxZ2hwUEFuNWk4bzliVmxOVFFjZ2ZPb2lqOXo3ZXRZWHl2T1VlVklLSjMyWXRHQ1Nzd1I3WjdtCkVQOTBpNjlIUTEvT0t3cDdKYUFlOEZaZm9jSzQ0QjU0MGtRdTFoczUyUmE1WDRjTFdINlk4V25RQ0ZNQi92cC8KaFRMUmU3T015NGI2Q0Y0cWZFdmwwVVlnN2pGSVo3R0dlRlZUZnphbEJvSm5PUFNWUTAwdUphVUhKVUxDQVYzYQp4SG90RW5rWEVBeGZvR0UyTmY2dkFuak5LeXZQaUlRdnNtcmY3TXR3QVFLQmdRRGxSd3hMcW1ra0pINTJEM2dlCjV6S3pPV01tR3JObVcxemRBZFBsc1Z5bUZsY2xVU05HRHRDeDNhODdiYkJSdzkydGdHa1FZeUdjdGdBa00xbncKN1Q2NXpFNGJmQ1Y1UjlLOFBHYmN3OHQ3YnJEbTVRMHVPOHovUlhrK0dkQmtiMGtmL1RNQXFxbzg4RkgzbHZJTAo0S1pLM0V1bTN3MUFvTWZxQUxzSldyL3hnUUtCZ1FERjdINmZCd25YY2FjcEZsdTlYS3VZcldObTBHeWhkQVhRClNPbWJOc080aU4rK0hkbTA4WDE5eElLV2FWZFFIV3B1T2JzY0dHb25DbkMvQjArUE5zbEY3emYwTWNEOVYrbUgKb2ZhUVU5YXpOSnJqRUIzdjNTMVZma2NuUVFYT0tmcDNFWk9OZXBkYTgxS1JJc01rMkZ5eHdnNGhuYUNyR1ZGRQp5cmNJNkNwNllRS0JnQWpIRUl4eENMZHVnanpvMkxOdUxIMjZDN2F3dlArRkxlZjBJdldmTmFuU0h5SDVtajBiClloZjlJYkZId01GUW0xTUNJSU9WRi90VTZHcDZZTTRkZHhKTDVRMmVVaHp6aC9qVzR5VStoYkxEQ1JpOTJpUlQKKzhRbUY3OHQ0OUdFaFNzcFdXT0VKU0pTSFFFNmtTZXRRUkNLb0liUjhVTHhKTllya3YySHNPT0JBb0dBREJucwpsLzZQTEh3SGMyeXBpVWRzT25hSGVGYlAvWU1oZzkyaFl0c1RWbW9QL0FqSk1kWCtEVDJCbW42d1Z2YWxkajNUClllRmdSQ2pRUWUzSmdJRWlCME9jRVRNbGtKZmFjRytIcXNWbGdDbDhPdHZXYUw4R01ZNzUvTDF1QkcvdW4yOFUKclhiTVlFUTJUU2RwOVF2Qmh5RE5TbUxmMnZZK1VNMXdLWHhBZEtFQ2dZRUFwS3NKVFh2U3gwK0t4anBnRE9JeAorb09BYjhtcTViUEpIc204RHdFbEErYXVLRGx3L1Q4WkVzdllCTW0wRThmNTVQeXU4LzZEcmlGTE9tUUxiem5QClNSY1JvMUc5Y2J3ZFdJVzZyaGo1azEvcWdFZ0JXbGdvZnNtbGVLNmtvMENnS1AyV09PTjI5R3UxaTFTNTJsOGIKc3ZEVEh4WnNqcTFHcEdJbVNVYklwYTA9Ci0tLS0tRU5EIFBSSVZBVEUgS0VZLS0tLS0K"
		key = Base64.decode64(base64_encoded_key)
		parsed_key = IapAuthToken::Pkey.parse(key)
		expect(parsed_key.to_s).not_to be_empty
	end
end
