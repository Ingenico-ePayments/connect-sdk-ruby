module Ingenico
  module Connect
    module SDK
      module Logging
        module Obfuscation

          # Returns an obfuscation rule (callable) that will replace all characters with *
          def self.obfuscate_all
            ->(value) do
              return value if value.nil? or value.empty?
              '*' * (value || '').length
            end
          end

          # Returns an obfuscation rule (function) that will replace values with a fixed length string containing only *
          def self.obfuscate_with_fixed_length(fixed_length)
            ->(value) { '*' * fixed_length }
          end

          # Returns an obfuscation rule (function) that will keep a fixed number of characters at the start,
          # then replaces all other characters with *
          def self.obfuscate_all_but_first(count)
            ->(value) do
              return value if value.nil? or value.empty?
              return value if value.length < count
              # range describes the range of characters to replace with asterisks
              range = count...value.length
              value[range] = '*' * range.size
              value
            end
          end

          # Returns an obfuscation rule that will keep a fixed number of characters at the end,
          # then replaces all other characters with *
          def self.obfuscate_all_but_last(count)
            ->(value) do
              return value if value.nil? or value.empty?
              return value if value.length < count
              # range describes the range of characters to replace with asterisks
              range = 0...(value.length - count)
              value[range] = '*' * range.size
              value
            end
          end
        end
      end
    end
  end
end
