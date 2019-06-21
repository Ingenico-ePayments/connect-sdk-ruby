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

      # @attr [Ingenico::Connect::SDK::Domain::Capture::CaptureOutput] capture_output
      # @attr [String] status
      # @attr [Ingenico::Connect::SDK::Domain::Capture::CaptureStatusOutput] status_output
      class Capture < Ingenico::Connect::SDK::Domain::Definitions::AbstractOrderStatus

        attr_accessor :capture_output

        attr_accessor :status

        attr_accessor :status_output

        # @return (Hash)
        def to_h
          hash = super
          hash['captureOutput'] = @capture_output.to_h unless @capture_output.nil?
          hash['status'] = @status unless @status.nil?
          hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'captureOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['captureOutput']] unless hash['captureOutput'].is_a? Hash
            @capture_output = Ingenico::Connect::SDK::Domain::Capture::CaptureOutput.new_from_hash(hash['captureOutput'])
          end
          if hash.has_key? 'status'
            @status = hash['status']
          end
          if hash.has_key? 'statusOutput'
            raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
            @status_output = Ingenico::Connect::SDK::Domain::Capture::CaptureStatusOutput.new_from_hash(hash['statusOutput'])
          end
        end
      end
    end
  end
end
