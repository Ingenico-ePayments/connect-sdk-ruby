module Ingenico
  module Connect
    module SDK
      # This exception is used when an error occurs during network communication with the Ingenico ePayments platform.
      # A common cause is a timeout while connecting or when receiving or sending data.
      #
      # @attr [Exception] cause The error that is the cause of this error.
      class CommunicationException < RuntimeError

        def initialize(cause)
          super()
          @cause = cause
        end

        attr_accessor :cause
      end
    end
  end
end
