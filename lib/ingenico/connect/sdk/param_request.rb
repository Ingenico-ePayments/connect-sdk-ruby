module Ingenico::Connect::SDK

  # Class that represents the URL request parameters.
  # Contains a method to add a name and value pair to a parameter array as a {Ingenico::Connect::SDK::RequestParam}.
  class ParamRequest

    protected

    # Adds a {Ingenico::Connect::SDK::RequestParam} object to the _request_parameters_ array
    # where RequestParam.name = name and RequestParam.value = value.
    # Allows Strings, Integers, booleans and arrays of these to be converted to RequestParams.
    # If _value_ is an array, one RequestParam instance will be added for each element in the array.
    # An array containing another array is explicitly disallowed and will raise an error.
    def add_parameter(request_parameters, name, value)
      add_param(request_parameters, name, value)
    end

    private

    def add_param(request_parameters, name, value, allow_collection = true)
      if value.is_a?(String) || value.is_a?(Integer) || value.class == TrueClass ||
          value.class == FalseClass
        request_parameters.push(RequestParam.new(name, value.to_s))
      elsif allow_collection && value.class == Array
        value.each { |element|
          add_param(request_parameters, name, element, false)
        }
      elsif !value.nil?
        raise ArgumentError.new("Unsupported request parameter type: #{value.class}")
      end
    end
  end
end
