module Ingenico
  module Connect
    module SDK
      # Raised when an error occurred while marshalling/unmarshalling data to/from JSON
      class MarshallerSyntaxException < RuntimeError
      end
    end
  end
end
