#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class DecryptedPaymentData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :cardholder_name

        # String
        attr_accessor :cryptogram

        # String
        attr_accessor :dpan

        # Integer
        attr_accessor :eci

        # String
        attr_accessor :expiry_date

        # String
        attr_accessor :pan

        # String
        attr_accessor :payment_method

        def to_h
          hash = super
          add_to_hash(hash, 'cardholderName', @cardholder_name)
          add_to_hash(hash, 'cryptogram', @cryptogram)
          add_to_hash(hash, 'dpan', @dpan)
          add_to_hash(hash, 'eci', @eci)
          add_to_hash(hash, 'expiryDate', @expiry_date)
          add_to_hash(hash, 'pan', @pan)
          add_to_hash(hash, 'paymentMethod', @payment_method)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cardholderName')
            @cardholder_name = hash['cardholderName']
          end
          if hash.has_key?('cryptogram')
            @cryptogram = hash['cryptogram']
          end
          if hash.has_key?('dpan')
            @dpan = hash['dpan']
          end
          if hash.has_key?('eci')
            @eci = hash['eci']
          end
          if hash.has_key?('expiryDate')
            @expiry_date = hash['expiryDate']
          end
          if hash.has_key?('pan')
            @pan = hash['pan']
          end
          if hash.has_key?('paymentMethod')
            @payment_method = hash['paymentMethod']
          end
        end
      end
    end
  end
end
