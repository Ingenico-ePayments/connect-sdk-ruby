module Ingenico::Connect::SDK

  # Base class for many exceptions raised by the SDK.
  # It is raised when an error response is received from the Ingenico ePayments platform.
  # It contains data about the returned response.
  class ApiException < RuntimeError

    # Creates a new ApiException that reports an error response from the Ingenico ePayments platform.
    # It reports the following:
    # status_code::   HTTP status code the response
    # response_body:: HTTP response body
    # error_id::      Error id of the error, may be _nil_
    # errors::        A list of errors that occurred, may be empty
    # message::       Error message to include
    def initialize(status_code, response_body, error_id, errors,
                   message='the Ingenico ePayments platform returned an error response')
      super(message)
      @status_code = status_code
      @response_body = response_body
      @error_id = error_id
      if errors.nil?
        @errors = [].freeze
      else
        @errors = errors
      end
    end

    # HTTP status code of the returned response.
    attr_reader :status_code

    # Message body of the returned response.
    attr_reader :response_body

    # An error id corresponding to the error that occurred, if available.
    attr_reader :error_id

    # A list of errors received from the Ingenico ePayments platform;
    # may be empty but never _nil_
    attr_reader :errors

    def to_s
      str = super.to_s
      if @status_code > 0
        str += '; status_code=' + @status_code.to_s
      end
      if !@response_body.nil? && @response_body.length > 0
        str += "; response_body='" + @response_body + "'"
      end
      str.to_s
    end
  end
end
