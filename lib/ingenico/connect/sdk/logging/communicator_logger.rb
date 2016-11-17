module Ingenico::Connect::SDK
  module Logging

    # Base logger class used in this SDK. This class is an interface and cannot be instantiated.
    class CommunicatorLogger
      # interface, no instantiation
      # @see Ingenico::Connect::SDK::Logging::StdoutCommunicatorLogger
      # @see Ingenico::Connect::SDK::Logging::RubyCommunicatorLogger
      def initialize
        raise NotImplementedError("#{self.class.name} is not implemented.")
      end

      # logs a message with or without exception
      def log(message, thrown=false)
        raise NotImplementedError("#{self.class.name}#log() is not implemented.")
      end
    end
  end
end
