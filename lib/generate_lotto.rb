require "generate_lotto/version"
require "generate_lotto/drawing"
require "generate_lotto/core_ext"
require "generate_lotto/configuration"
require "generate_lotto/helper"
require "generate_lotto/railstie" if defined?(Rails)

begin
    require "pry"
rescue LoadError
end

module GenerateLotto
  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def reset
      @configuration  = Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
