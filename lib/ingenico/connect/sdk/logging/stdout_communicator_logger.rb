require 'English'
require 'singleton'

module Ingenico::Connect::SDK
  module Logging

    # {Ingenico::Connect::SDK::Logging::CommunicatorLogger} that logs the messages to $stdout.
    class StdoutCommunicatorLogger < CommunicatorLogger

      include Singleton

      def initialize
        # implement the interface
      end

      # NOTE: this is needed to not break method calls based on old interface
      class << self
        alias_method :INSTANCE, :instance
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
