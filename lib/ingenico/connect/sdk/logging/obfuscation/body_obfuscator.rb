require 'ingenico/connect/sdk/logging/obfuscation/obfuscation_rule'

module Ingenico::Connect::SDK
  module Logging
    module Obfuscation
      # A class that can be used to obfuscate properties in JSON bodies.
      class BodyObfuscator

        # Creates a new body obfuscator.
        # This will contain some pre-defined obfuscation rules, as well as any provided custom rules
        #
        # @param additional_rules [Hash] An optional hash where the keys are property names and the values are
        #        functions that obfuscate a single value
        def initialize(additional_rules=nil)
          @obfuscation_rules = {
            "cardNumber" => Obfuscation.obfuscate_all_but_last(4),
            "expiryDate" => Obfuscation.obfuscate_all_but_last(2),
            "cvv" => Obfuscation.obfuscate_all,
            "iban" => Obfuscation.obfuscate_all_but_last(4),
            "accountNumber" => Obfuscation.obfuscate_all_but_last(4),
            "reformattedAccountNumber" => Obfuscation.obfuscate_all_but_last(4),
            "bin" => Obfuscation.obfuscate_all_but_first(6),
            "value" => Obfuscation.obfuscate_all,
            "keyId" => Obfuscation.obfuscate_with_fixed_length(8),
            "secretKey" => Obfuscation.obfuscate_with_fixed_length(8),
            "publicKey" => Obfuscation.obfuscate_with_fixed_length(8),
            "userAuthenticationToken" => Obfuscation.obfuscate_with_fixed_length(8),
            "encryptedPayload" => Obfuscation.obfuscate_with_fixed_length(8),
            "decryptedPayload" => Obfuscation.obfuscate_with_fixed_length(8),
            "encryptedCustomerInput" => Obfuscation.obfuscate_with_fixed_length(8),
          }
          if additional_rules
            additional_rules.each do |name, rule|
              @obfuscation_rules[name] = rule
            end
          end

          @property_pattern = build_property_pattern(@obfuscation_rules.keys)
        end

        private

        def build_property_pattern(pn)
          return /$^/ if pn.empty? # no possible match
          # Regex to create:
          # (["'])(X|Y|Z)\1\s*:\s*(?:(["'])(.*?)(?<!\\)\3|([^"'\s\[\{]\S*))
          # Groups:
          # 1: opening " or ' for the property name
          # 2: property name
          # 3: opening " or ' for the value
          # 4: quoted value
          # 5: non-quoted-value
          # The negative lookbehind is to allow escaped quotes to be part of
          # the value. What this does not allow currently is having values end
          # with a \ (which would be escaped to \\).
          regex = pn.inject("([\"'])(") { |r, p| "#{r}#{Regexp.quote(p)}|"}.chop <<
            ")\\1\\s*:\\s*(?:([\"'])(.*?)(?<!\\\\)\\3|([^\"'\\s\\[\\{]((?!,)\\S)*))"
          /#{regex}/m # dotall mode
        end

        def obfuscate_value(property_name, value)
          obfuscation_rule = @obfuscation_rules[property_name]
          return obfuscation_rule.call(value) if obfuscation_rule
          value
        end

        public

        # Obfuscates the given body as necessary.
        #
        # @return (String)
        def obfuscate_body(body)
          return nil if body.nil?
          return '' if body.empty?

          body.gsub(@property_pattern) do
            m = Regexp.last_match
            property_name = m[2]
            value = m[4] || m[5]
            # copy value 'cause it's part of m[0]
            m[0].sub(value, obfuscate_value(property_name, value.dup))
          end
        end

        private

        @@default_obfuscator = BodyObfuscator.new

        public

        # @return [BodyObfuscator]
        def self.default_obfuscator
          @@default_obfuscator
        end
      end
    end
  end
end
