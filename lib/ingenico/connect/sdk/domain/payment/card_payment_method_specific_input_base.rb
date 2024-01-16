#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/payment/abstract_card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/three_d_secure_base'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureBase] three_d_secure
          class CardPaymentMethodSpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractCardPaymentMethodSpecificInput

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'threeDSecure'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
                @three_d_secure = Ingenico::Connect::SDK::Domain::Payment::ThreeDSecureBase.new_from_hash(hash['threeDSecure'])
              end
            end
          end
        end
      end
    end
  end
end
