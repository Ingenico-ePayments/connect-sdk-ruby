require 'ingenico/connect/sdk/logging/obfuscation/body_obfuscator'
require 'ingenico/connect/sdk/logging/obfuscation/header_obfuscator'

module Ingenico
  module Connect
    module SDK
      module Logging
        # Class responsible for obfuscating sensitive data in a message body.
        #
        # @deprecated This class shouldn't have been exposed
        class ValueObfuscator

          class << self

            alias_method :private_new, :new

            def new(*args)
              raise NoMethodError.new('ValueObfuscator should not explicitly instantiated!')
            end

            private :private_new, :new
          end

          # Creates a new ValueObfuscator.
          #
          # @param fixed_length     [Integer] if greater than 0, all values that will be obfuscated will be replaced with that number of asterisks.
          # @param keep_start_count [Integer] the number of characters to not obfuscate at the end of any value.
          #                         This parameter is only used if _fixed_length_ = 0.
          # @param keep_end_count   [Integer] the number of characters to not obfuscate at the start of any value.
          #                         This parameter is only used if _fixed_length_ = 0.
          def initialize(fixed_length, keep_start_count, keep_end_count)
            @mask_character = '*'
            @fixed_length = fixed_length
            @keep_start_count = keep_start_count
            @keep_end_count = keep_end_count
          end

          public

          def self.ALL
            # use lazy instantiation
            @@ALL ||= ValueObfuscator.send(:private_new, 0, 0, 0)
          end

          # Creates a new ValueObfuscator that replaces any sensitive data with a _fixed_length_ line of asterisks.
          def self.fixed_length(fixed_length)
            ValueObfuscator.send(:private_new, fixed_length, 0, 0)
          end

          # Creates a new ValueObfuscator that retains only the first _count_ characters of any value to obfuscate
          # and replaces the rest with asterisks.
          def self.keep_start_count(count)
            ValueObfuscator.send(:private_new, 0, count, 0)
          end

          # Creates a new ValueObfuscator that retains only the last _count_ characters of any value to obfuscate
          # and replaces the rest with asterisks.
          def self.keep_end_count(count)
            ValueObfuscator.send(:private_new, 0, 0, count)
          end

          # Obfuscates the parameter value.
          def obfuscate_value(value)
            return value if value.nil? or value.empty?
            return repeat_mask(@fixed_length) if @fixed_length > 0
            return repeat_mask(value.length) if @keep_start_count == 0 and @keep_end_count == 0
            return value if value.length < (@keep_start_count + @keep_end_count)

            # range describes the range of characters to replace with asterisks
            range = @keep_start_count...(value.length - @keep_end_count)
            value[range] = @mask_character * range.size
            value
          end

          private

          def repeat_mask(count)
            @mask_character * count
          end
        end

        #
        # @deprecated This class shouldn't have been exposed
        class Obfuscator
          def initialize(obfuscators, case_insensitive)
            raise ArgumentError unless obfuscators.is_a? Hash
            @obfuscators = copy(obfuscators, case_insensitive)
          end

          private

          # case insensitive hash
          # @private
          class HashClod < Hash

            def initialize(other)
              other.each { |k, v| self.[]=(k, v) }
            end

            def [](key)
              super _insensitive(key)
            end

            def []=(key, value)
              super _insensitive(key), value
            end

            protected

            def _insensitive(key)
              key.respond_to?(:upcase) ? key.upcase : key
            end
          end

          def copy(obfuscators, case_insensitive)
            cp = case_insensitive ? HashClod.new(obfuscators) : obfuscators
            Marshal.load(Marshal.dump(cp)) # deep copy
          end

          public

          def obfuscate_value(key, value)
            obfuscator = @obfuscators[key]
            obfuscator.nil? ? value : obfuscator.obfuscate_value(value)
          end

          # A convenient wrapper to build obfuscators
          #
          # @deprecated This class shouldn't have been exposed
          class Builder
            attr_accessor :obfuscators

            def initialize
              raise NotImplementedError.new("#{self.class.name} is not implemented.")
            end

            def with_all(key)
              @obfuscators[key] = ValueObfuscator.ALL
              self
            end

            def with_fixed_length(key, fixed_length)
              @obfuscators[key] = ValueObfuscator.fixed_length(fixed_length)
              self
            end

            def with_keep_start_count(key, count)
              @obfuscators[key] = ValueObfuscator.keep_start_count(count)
              self
            end

            def with_keep_end_count(key, count)
              @obfuscators[key] = ValueObfuscator.keep_end_count(count)
              self
            end

            def build
              raise NotImplementedError.new("#{self.class.name}#build() is not implemented.")
            end
          end

          # Builder
        end

        # Obfuscator

        # Class that obfuscates headers of a message
        #
        # @deprecated This class shouldn't have been exposed
        class HeaderObfuscator < Obfuscator
          def initialize(obfuscators)
            # case insensitive
            super(obfuscators, true)
            obfuscation_rules = obfuscators.map { |key, value| [key, ->(v) { value.obfuscate_value(v) }] }
            @obfuscator = Obfuscation::HeaderObfuscator.new(obfuscation_rules)
          end

          def obfuscate_value(key, value)
            @obfuscator.obfuscate_header(key, value)
          end

          def self.builder
            Builder.new
          end

          #
          # @deprecated This class shouldn't have been exposed
          class Builder < Obfuscator::Builder
            def initialize
              @obfuscators = {}
            end

            def with_all(name)
              raise ArgumentError unless name.is_a? String
              super(name)
            end

            def with_fixed_length(name, fixed_length)
              raise ArgumentError unless name.is_a? String
              super(name, fixed_length)
            end

            def build
              HeaderObfuscator.new(obfuscators)
            end
          end
        end

        # Class that obfuscates properties in the JSON body of a message
        #
        # @deprecated This class shouldn't have been exposed
        class PropertyObfuscator < Obfuscator
          def initialize(obfuscators)
            # case sensitive
            super(obfuscators, false)
            @obfuscation_rules = obfuscators.map { |key, value| [key, ->(v) { value.obfuscate_value(v) }] }
            @obfuscator = Obfuscation::BodyObfuscator.new(@obfuscation_rules)
          end

          private

          public

          def obfuscate_value(key, value)
            obfuscation_rule = @obfuscation_rules[property_name]
            return obfuscation_rule.call(value) if obfuscation_rule
            value
          end

          def obfuscate(body)
            @obfuscator.obfuscate_body(body)
          end

          def self.builder
            Builder.new
          end

          #
          # @deprecated This class shouldn't have been exposed
          class Builder < Obfuscator::Builder
            def initialize
              @obfuscators = {}
            end

            def with_all(property)
              raise ArgumentError unless property.is_a? String
              super(property)
            end

            def with_fixed_length(property, fixed_length)
              raise ArgumentError unless property.is_a? String
              super(property, fixed_length)
            end

            def with_keep_start_count(key, count)
              raise ArgumentError unless key.is_a? String
              super(key, count)
            end

            def with_keep_end_count(property, count)
              raise ArgumentError unless property.is_a? String
              super(property, count)
            end

            def build
              PropertyObfuscator.new(obfuscators)
            end
          end
        end

        module LoggingUtil
          #
          # @deprecated This constant shouldn't have been exposed
          @@PROPERTY_OBFUSCATOR = PropertyObfuscator.builder
                                                    .with_keep_end_count("cardNumber", 4)
                                                    .with_keep_end_count("expiryDate", 2)
                                                    .with_all("cvv")
                                                    .with_keep_end_count("iban", 4)
                                                    .with_keep_end_count("accountNumber", 4)
                                                    .with_keep_end_count("reformattedAccountNumber", 4)
                                                    .with_keep_start_count("bin", 6)
                                                    .with_all("value")
                                                    .with_fixed_length("keyId", 8)
                                                    .with_fixed_length("secretKey", 8)
                                                    .with_fixed_length("publicKey", 8)
                                                    .with_fixed_length("userAuthenticationToken", 8)
                                                    .with_fixed_length("encryptedPayload", 8)
                                                    .with_fixed_length("decryptedPayload", 8)
                                                    .with_fixed_length("encryptedCustomerInput", 8)
                                                    .build

          #
          # @deprecated This constant shouldn't have been exposed
          @@HEADER_OBFUSCATOR = HeaderObfuscator.builder
                                                .with_fixed_length("Authorization", 8)
                                                .with_fixed_length("WWW-Authenticate", 8)
                                                .with_fixed_length("Proxy-Authenticate", 8)
                                                .with_fixed_length("Proxy-Authorization", 8)
                                                .with_fixed_length("X-GCS-Authentication-Token", 8)
                                                .with_fixed_length("X-GCS-CallerPassword", 8)
                                                .build

          #
          # @deprecated This doesn't support custom obfuscation. Use BodyObfuscator instead
          # @see Obfuscation::BodyObfuscator
          def self.obfuscate_body(body)
            return Obfuscation::BodyObfuscator.default_obfuscator.obfuscate_body(body)
          end

          #
          # @deprecated This doesn't support custom obfuscation. Use HeaderObfuscator instead
          # @see Obfuscation::HeaderObfuscator
          def self.obfuscate_header(name, value)
            return Obfuscation::HeaderObfuscator.default_obfuscator.obfuscate_header(name, value)
          end
        end
      end
    end
  end
end
