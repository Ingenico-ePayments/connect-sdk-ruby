require 'English'
require 'ingenico/connect/sdk/logging/communicator_logger'

module Ingenico
  module Connect
    module SDK
      module Logging
        # Logging class that Logs messages and errors to a logger.
        # Errors can be logged at a separate level compared to regular messages.
        class RubyCommunicatorLogger < CommunicatorLogger

          # Creates a new RubyCommunicatorLogger instance.
          #
          # @param logger      [Logger] the logger to log messages to. Messages to log will be provided using logger#log(message level, message)
          # @param log_level   [String] log level to use for non-error messages.
          # @param error_level [String] error logging level to use.
          def initialize(logger, log_level, error_level = false)
            # implement the interface
            error_level ||= log_level
            raise ArgumentError unless logger
            raise ArgumentError unless log_level
            raise ArgumentError unless error_level

            @logger = logger
            @log_level = log_level
            @error_level = error_level
          end

          # Logs a single error or non-error message to the logger.
          def log(msg, thrown = false)
            # use Ruby Logger
            if thrown
              @logger.log(@error_level) { msg + $RS + thrown.to_s + $RS + thrown.backtrace.join($RS) }
            else
              @logger.log(@log_level, msg)
            end
          end

          # Opens or creates a new file in write-only mode with _filename_.
          def self.create_logfile(filename)
            logdev = begin
                       open(filename, (File::WRONLY | File::APPEND | File::CREAT | File::EXCL))
                     rescue Errno::EEXIST
                       # file is created by another process
                       open_logfile(filename)
                     end
            logdev.sync = true
            logdev
          end

          # Opens or creates a new file in write-only mode with _filename_.
          def self.open_logfile(filename)
            begin
              open(filename, (File::WRONLY | File::APPEND))
            rescue Errno::ENOENT
              create_logfile(filename)
            end
          end
        end
      end
    end
  end
end
