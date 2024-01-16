module Ingenico
  module Connect
    module SDK
      # Class that represents the URL request parameters.
      # Contains a method to add a name and value pair to a parameter array as a {Ingenico::Connect::SDK::RequestParam}.
      class ParamRequest
        # @return [Array<Ingenico::Connect::SDK::RequestParam>]
        def to_request_parameters
          raise NotImplementedError
        end
      end
    end
  end
end
