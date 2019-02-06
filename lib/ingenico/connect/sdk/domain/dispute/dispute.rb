#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/dispute/dispute_output'
require 'ingenico/connect/sdk/domain/dispute/dispute_status_output'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      class Dispute < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Dispute::DisputeOutput}
        attr_accessor :dispute_output

        # String
        attr_accessor :id

        # String
        attr_accessor :payment_id

        # String
        attr_accessor :status

        # {Ingenico::Connect::SDK::Domain::Dispute::DisputeStatusOutput}
        attr_accessor :status_output

        def to_h
          hash = super
          add_to_hash(hash, 'disputeOutput', @dispute_output)
          add_to_hash(hash, 'id', @id)
          add_to_hash(hash, 'paymentId', @payment_id)
          add_to_hash(hash, 'status', @status)
          add_to_hash(hash, 'statusOutput', @status_output)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('disputeOutput')
            if !(hash['disputeOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['disputeOutput']]
            end
            @dispute_output = Ingenico::Connect::SDK::Domain::Dispute::DisputeOutput.new_from_hash(hash['disputeOutput'])
          end
          if hash.has_key?('id')
            @id = hash['id']
          end
          if hash.has_key?('paymentId')
            @payment_id = hash['paymentId']
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
          if hash.has_key?('statusOutput')
            if !(hash['statusOutput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']]
            end
            @status_output = Ingenico::Connect::SDK::Domain::Dispute::DisputeStatusOutput.new_from_hash(hash['statusOutput'])
          end
        end
      end
    end
  end
end
