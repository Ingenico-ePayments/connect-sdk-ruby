module Ingenico
  module Connect
    module SDK
      # Abstract class that is responsible for authenticating requests sent to the Ingenico ePayments platform.
      class Authenticator

        # Creates a signature to authenticate a request.
        #
        # @param http_method     [String] 'GET', 'PUT', 'POST' or 'DELETE' indicating which HTTP method will be used with the request
        # @param resource_uri    [URI::HTTP] URI object that includes #path and #query of the URL that will be used, #query may be *nil*
        # @param request_headers [Array<Ingenico::Connect::SDK::RequestHeader>] all headers used by the request
        # @return [String] the created signature
        def create_simple_authentication_signature(http_method, resource_uri, request_headers)
          raise NotImplementedError
        end
      end
    end
  end
end
