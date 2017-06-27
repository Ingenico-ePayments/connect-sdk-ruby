#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/capture/capture_output'
require 'ingenico/connect/sdk/domain/capture/capture_status_output'
require 'ingenico/connect/sdk/domain/definitions/abstract_order_status'

module Ingenico::Connect::SDK
  module Domain
    module Capture

      class Capture < Ingenico::Connect::SDK::Domain::Definitions::AbstractOrderStatus

        # {Ingenico::Connect::SDK::Domain::Capture::CaptureOutput}
        attr_accessor :capture_output

        # String
        attr_accessor :status

        # {Ingenico::Connect::SDK::Domain::Capture::CaptureStatusOutput}
        attr_accessor :status_output

        def to_h
          hash = super
          add_to_hash(hash, 'captureOutput', @capture_output)
          add_to_hash(hash, 'status', @status)
          add_to_hash(hash, 'statusOutput', @status_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('captureOutput')
            if !(hash['captureOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['captureOutput']]
            end
            @capture_output = Ingenico::Connect::SDK::Domain::Capture::CaptureOutput.new_from_hash(hash['captureOutput'])
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
          if hash.has_key?('statusOutput')
            if !(hash['statusOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']]
            end
            @status_output = Ingenico::Connect::SDK::Domain::Capture::CaptureStatusOutput.new_from_hash(hash['statusOutput'])
          end
        end
      end
    end
  end
end
