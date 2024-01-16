module Ingenico
  module Connect
    module SDK
      # Represents a URL request parameter.
      # Each parameter is immutable and has a #name and #value attribute.
      #
      # @attr_reader [String] name  Parameter name
      # @attr_reader [String] value Parameter value
      class RequestParam

        def initialize(name, value)
          if name.nil? || name.strip.empty?
            raise ArgumentError.new('name is required')
          end
          @name = name
          @value = value
        end

        attr_reader :name
        attr_reader :value

        def to_s
          "#{name}=#{value}"
        end
      end
    end
  end
end
