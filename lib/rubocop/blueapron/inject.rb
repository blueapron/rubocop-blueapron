require 'yaml'

module RuboCop
  module Blueapron
    # Because RuboCop doesn't yet support plugins, we have to monkey patch in a
    # bit of our configuration.
    module Inject
      DEFAULT_FILE = File.expand_path(
        '../../../../config/default.yml', __FILE__
      )

      def self.defaults!
        puts "configuration from #{DEFAULT_FILE}" if ConfigLoader.debug?
        loaded_config = ConfigLoader.load_file(DEFAULT_FILE)
        config = ConfigLoader.merge_with_default(loaded_config, DEFAULT_FILE)

        ConfigLoader.instance_variable_set(:@default_configuration, config)
      end
    end
  end
end
