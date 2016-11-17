module Ingenico::Connect::SDK

  # This exception is used when an error occurs during network communication with the GlobalCollect platform.
  # A common cause is a timeout while connecting or when receiving or sending data.
  class CommunicationException < RuntimeError

    def initialize(cause)
      super()
      @cause = cause
    end

    # The error that is the cause of this error.
    attr_accessor :cause
  end
end
