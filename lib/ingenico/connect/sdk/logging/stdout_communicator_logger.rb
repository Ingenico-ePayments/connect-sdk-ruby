require 'English'

module Ingenico::Connect::SDK
  module Logging

    # {Ingenico::Connect::SDK::Logging::CommunicatorLogger} that logs the messages to $stdout.
    class StdoutCommunicatorLogger < CommunicatorLogger

      def initialize
        # implement the interface
      end

      # singleton
      @@INSTANCE = StdoutCommunicatorLogger.new

      private_class_method :new

      # Returns the StdoutCommunicatorLogger instance
      def self.INSTANCE
        @@INSTANCE
      end

      # Logs a single error or non-error message to $stdout.
      def log(msg, thrown=false)
        $stdout.puts (get_date_prefix + msg)
        $stdout.puts thrown.backtrace.join($RS) if thrown
      end

      private

      def get_date_prefix
        Time.now.strftime("%Y-%m-%dT%H:%M:%S ")
      end
    end
  end
end
