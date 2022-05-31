require 'ingenico/connect/sdk/logging/obfuscation/obfuscation_rule'

module Ingenico::Connect::SDK
  module Logging
    module Obfuscation
      # A class that can be used to obfuscate headers.
      class HeaderObfuscator

        # Creates a new header obfuscator.
        # This will contain some pre-defined obfuscation rules, as well as any provided custom rules
        #
        # @param additional_rules [Hash] An optional hash where the keys are header names and the values are
        #        functions that obfuscate a single value
        def initialize(additional_rules=nil)
          @obfuscation_rules = {
            "authorization" => Obfuscation.obfuscate_with_fixed_length(8),
            "www-authenticate" => Obfuscation.obfuscate_with_fixed_length(8),
            "proxy-authenticate" => Obfuscation.obfuscate_with_fixed_length(8),
            "proxy-authorization" => Obfuscation.obfuscate_with_fixed_length(8),
            "x-gcs-authentication-token" => Obfuscation.obfuscate_with_fixed_length(8),
            "x-gcs-callerpassword" => Obfuscation.obfuscate_with_fixed_length(8),
          }
          if additional_rules
            additional_rules.each do |name, rule|
              @obfuscation_rules[name.downcase] = rule
            end
          end
        end

        # Obfuscates the value for the given header as necessary.
        #
        # @return (String)
        def obfuscate_header(header_name, value)
          obfuscation_rule = @obfuscation_rules[header_name.downcase]
          return obfuscation_rule.call(value) if obfuscation_rule
          value
        end

        private

        @@default_obfuscator = HeaderObfuscator.new

        public

        # @return [HeaderObfuscator]
        def self.default_obfuscator
          @@default_obfuscator
        end
      end
    end
  end
end
