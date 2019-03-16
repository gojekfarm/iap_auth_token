module IapAuthToken
  class Configuration
    def initialize
      @configuration = OpenStruct.new
    end

    def service_account_credentials_path
      @configuration.service_account_credentials_path
    end

    def service_account_credentials_path=(service_account_credentials_path)
      @configuration.service_account_credentials_path = service_account_credentials_path
    end

    def client_id
      @configuration.client_id
    end

    def client_id=(client_id)
      @configuration.client_id = client_id
    end

    def refresh_time_seconds
      @configuration.refresh_time_seconds ||= 3600
    end

    def refresh_time_seconds=(refresh_time_seconds)
      @refresh_time_seconds = refresh_time_seconds.to_i
    end

    def logger=(log_handler)
      @logger = log_handler
    end

    def logger
      @logger ||= Ougai::Logger.new(STDOUT)
    end
  end

  def self.configuration
    @configuration ||= initialize_configuration!
  end

  def self.configure
    configuration = self.initialize_configuration!
    yield(configuration)
    configuration
  end

  def self.initialize_configuration!
    @configuration = Configuration.new
    @configuration
  end
end
