#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/abstract_redirect_payment_product4101_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] display_name
      class RedirectPaymentProduct4101SpecificInputBase < Ingenico::Connect::SDK::Domain::Payment::AbstractRedirectPaymentProduct4101SpecificInput

        attr_accessor :display_name

        # @return (Hash)
        def to_h
          hash = super
          hash['displayName'] = @display_name unless @display_name.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'displayName'
            @display_name = hash['displayName']
          end
        end
      end
    end
  end
end
