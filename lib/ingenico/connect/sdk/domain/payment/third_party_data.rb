#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/payment_product863_third_party_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ThirdPartyData < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentProduct863ThirdPartyData}
        attr_accessor :payment_product863

        def to_h
          hash = super
          add_to_hash(hash, 'paymentProduct863', @payment_product863)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('paymentProduct863')
            if !(hash['paymentProduct863'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct863']]
            end
            @payment_product863 = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct863ThirdPartyData.new_from_hash(hash['paymentProduct863'])
          end
        end
      end
    end
  end
end
