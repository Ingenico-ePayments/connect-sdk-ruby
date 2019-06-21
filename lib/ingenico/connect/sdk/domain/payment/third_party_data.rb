#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/payment_product863_third_party_data'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentProduct863ThirdPartyData] payment_product863
      class ThirdPartyData < Ingenico::Connect::SDK::DataObject

        attr_accessor :payment_product863

        # @return (Hash)
        def to_h
          hash = super
          hash['paymentProduct863'] = @payment_product863.to_h unless @payment_product863.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'paymentProduct863'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct863']] unless hash['paymentProduct863'].is_a? Hash
            @payment_product863 = Ingenico::Connect::SDK::Domain::Payment::PaymentProduct863ThirdPartyData.new_from_hash(hash['paymentProduct863'])
          end
        end
      end
    end
  end
end
