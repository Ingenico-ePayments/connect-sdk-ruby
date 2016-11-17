#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_OrderInvoiceData OrderInvoiceData}
      class OrderInvoiceData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :additional_data

        # String
        attr_accessor :invoice_date

        # String
        attr_accessor :invoice_number

        # Array of String
        attr_accessor :text_qualifiers

        def to_h
          hash = super
          add_to_hash(hash, 'additionalData', @additional_data)
          add_to_hash(hash, 'invoiceDate', @invoice_date)
          add_to_hash(hash, 'invoiceNumber', @invoice_number)
          add_to_hash(hash, 'textQualifiers', @text_qualifiers)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('additionalData')
            @additional_data = hash['additionalData']
          end
          if hash.has_key?('invoiceDate')
            @invoice_date = hash['invoiceDate']
          end
          if hash.has_key?('invoiceNumber')
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key?('textQualifiers')
            if !(hash['textQualifiers'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['textQualifiers']]
            end
            @text_qualifiers = []
            hash['textQualifiers'].each do |e|
              @text_qualifiers << e
            end
          end
        end
      end
    end
  end
end
