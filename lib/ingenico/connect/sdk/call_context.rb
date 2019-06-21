module Ingenico::Connect::SDK

  # A CallContext is used to identify requests and manage idempotent requests.
  # A CallContext contains the following:
  #
  # idempotence_key::               A randomly generated key used to identify requests
  # idempotence_request_timestamp:: If a previous request arrived with the same idempotence key,
  #                                 this value will be set to a timestamp of that request.
  #
  # @attr_reader [String] idempotence_key The idempotence key used to identify this request.
  #              If two requests share the same _idempotence_key_, they are considered to be the same request
  #              and only the first request will be processed.
  # @attr        [Integer] idempotence_request_timestamp If two or more requests arrive at the Ingenico ePayments platform with the same _idempotence_key_,
  #              the _idempotence_request_timestamp_ will be set to the arrival time of the first of these requests.
  class CallContext
    @idempotence_request_timestamp = nil
    @idempotence_key = nil

    def initialize(idempotence_key=nil)
      @idempotence_key = idempotence_key
    end

    attr_reader :idempotence_key
    attr_accessor :idempotence_request_timestamp
  end
end
