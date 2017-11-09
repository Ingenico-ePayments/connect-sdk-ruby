#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_customer'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      class MandateResponse < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Mandates::MandateCustomer}
        attr_accessor :customer

        # String
        attr_accessor :customer_reference

        # String
        attr_accessor :recurrence_type

        # String
        attr_accessor :status

        # String
        attr_accessor :unique_mandate_reference

        def to_h
          hash = super
          add_to_hash(hash, 'customer', @customer)
          add_to_hash(hash, 'customerReference', @customer_reference)
          add_to_hash(hash, 'recurrenceType', @recurrence_type)
          add_to_hash(hash, 'status', @status)
          add_to_hash(hash, 'uniqueMandateReference', @unique_mandate_reference)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('customer')
            if !(hash['customer'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['customer']]
            end
            @customer = Ingenico::Connect::SDK::Domain::Mandates::MandateCustomer.new_from_hash(hash['customer'])
          end
          if hash.has_key?('customerReference')
            @customer_reference = hash['customerReference']
          end
          if hash.has_key?('recurrenceType')
            @recurrence_type = hash['recurrenceType']
          end
          if hash.has_key?('status')
            @status = hash['status']
          end
          if hash.has_key?('uniqueMandateReference')
            @unique_mandate_reference = hash['uniqueMandateReference']
          end
        end
      end
    end
  end
end
