module Ingenico::Connect::SDK

  # Raised when a resource is not found on the Ingenico ePayments platform.
  # This error corresponds to a 404 HTTP response.
  class NotFoundException < RuntimeError

    def initialize(cause, message=false)
      if message
        super(message)
      else
        super
      end
      @cause = cause
    end

    # The error that is the cause of this error.
    attr_accessor :cause
  end
end
