module Ingenico::Connect::SDK

  # Represents a URL request parameter.
  # Each parameter is immutable and has a #name and #value attribute.
  class RequestParam

    def initialize(name, value)
      if name.nil? || name.strip.empty?
        raise ArgumentError.new('name is required')
      end
      @name = name
      @value = value
    end

    # parameter name
    attr_reader :name
    # parameter value
    attr_reader :value

    def to_s
      name + '=' + value
    end
  end
end
