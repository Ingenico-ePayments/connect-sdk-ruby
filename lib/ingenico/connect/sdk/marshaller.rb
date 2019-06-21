module Ingenico::Connect::SDK

  # Class responsible for marshalling and unmarshalling objects to and from JSON
  class Marshaller

    # Marshals _request_object_ to JSON format by calling #to_h on it.
    #
    # @param request_object [Ingenico::Connect::SDK::DataObject] the object to format
    # @return [String] _request_object_ converted to JSON
    def marshal(request_object)
      raise NotImplementedError
    end

    # Unmarshals a JSON string into an object of type _type_.
    # The new object is initialized by calling .new_from_hash with contents of the JSON as a Hash object.
    #
    # @param response_json [String] The JSON to unmarshal
    # @param type          [Type] The class of the object that will be instantiated using _type.new_from_hash_
    # @return The JSON unmarshalled to the given type
    def unmarshal(response_json, type)
      raise NotImplementedError
    end
  end
end
