module Ingenico::Connect::SDK

  # Class responsible for marshalling and unmarshalling objects to and from JSON
  class Marshaller

    # Marshals _request_object_ to JSON format by calling #to_hash on it.
    def marshal(request_object)
      raise NotImplementedError
    end

    # Unmarshals a JSON string into an object of type _type_.
    # The new object is initialized by calling .new_from_hash with contents of the JSON as a Hash object.
    # response_json:: The JSON to unmarshal
    # type::          The class of the object that will be instantiated using _type.new_from_hash_
    def unmarshal(response_json, type)
      raise NotImplementedError
    end
  end
end
