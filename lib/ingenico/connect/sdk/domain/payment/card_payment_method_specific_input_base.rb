#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/three_d_secure_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CardPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractCardPaymentMethodSpecificInput

        # {Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureBase}
        attr_accessor :three_d_secure

        def to_h
          hash = super
          add_to_hash(hash, 'threeDSecure', @three_d_secure)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('threeDSecure')
            if !(hash['threeDSecure'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']]
            end
            @three_d_secure = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureBase.new_from_hash(hash['threeDSecure'])
          end
        end
      end
    end
  end
end
