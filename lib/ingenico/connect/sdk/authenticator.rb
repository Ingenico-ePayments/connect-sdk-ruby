module Ingenico::Connect::SDK

  # Abstract class that is responsible for authenticating requests sent to the GlobalCollect platform.
  class Authenticator

    # Creates a signature to authenticate a request.
    # Uses the following parameters:
    # http_method::     'GET', 'PUT', 'POST' or 'DELETE' indicating which HTTP method will be used with the request
    # resource_uri::    URI object that includes #path and #query of the url that will be used, #query may be *nil*
    # request_headers:: {Ingenico::Connect::SDK::RequestHeader} list that contains all headers used by the request
    def create_simple_authentication_signature(http_method, resource_uri, request_headers)
      raise NotImplementedError
    end
  end
end
