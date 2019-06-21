#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] additional_data
      # @attr [String] invoice_date
      # @attr [String] invoice_number
      # @attr [Array<String>] text_qualifiers
      class OrderInvoiceData < Ingenico::Connect::SDK::DataObject

        attr_accessor :additional_data

        attr_accessor :invoice_date

        attr_accessor :invoice_number

        attr_accessor :text_qualifiers

        # @return (Hash)
        def to_h
          hash = super
          hash['additionalData'] = @additional_data unless @additional_data.nil?
          hash['invoiceDate'] = @invoice_date unless @invoice_date.nil?
          hash['invoiceNumber'] = @invoice_number unless @invoice_number.nil?
          hash['textQualifiers'] = @text_qualifiers unless @text_qualifiers.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'additionalData'
            @additional_data = hash['additionalData']
          end
          if hash.has_key? 'invoiceDate'
            @invoice_date = hash['invoiceDate']
          end
          if hash.has_key? 'invoiceNumber'
            @invoice_number = hash['invoiceNumber']
          end
          if hash.has_key? 'textQualifiers'
            raise TypeError, "value '%s' is not an Array" % [hash['textQualifiers']] unless hash['textQualifiers'].is_a? Array
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
