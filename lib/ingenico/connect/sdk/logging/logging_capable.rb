module Ingenico
module Connect
module SDK
  module Logging

    # Abstract mixin module that allows loggers to be registered to an object.
    module LoggingCapable
      def enable_logging(communicator_logger)
        raise NotImplementedError
      end

      def disable_logging
        raise NotImplementedError
      end
    end
  end
end
end
end