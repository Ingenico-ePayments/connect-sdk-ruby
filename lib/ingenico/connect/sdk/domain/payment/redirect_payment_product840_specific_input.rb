#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_redirect_payment_product840_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class RedirectPaymentProduct840SpecificInput < Ingenico::Connect::SDK::Domain::Payment::AbstractRedirectPaymentProduct840SpecificInput

        # String
        #
        # Deprecated; Use Order.references.descriptor instead
        attr_accessor :custom

        # true/false
        attr_accessor :is_shortcut

        def to_h
          hash = super
          add_to_hash(hash, 'custom', @custom)
          add_to_hash(hash, 'isShortcut', @is_shortcut)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('custom')
            @custom = hash['custom']
          end
          if hash.has_key?('isShortcut')
            @is_shortcut = hash['isShortcut']
          end
        end
      end
    end
  end
end
