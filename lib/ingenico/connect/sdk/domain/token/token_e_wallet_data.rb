#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class TokenEWalletData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :billing_agreement_id

        def to_h
          hash = super
          add_to_hash(hash, 'billingAgreementId', @billing_agreement_id)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('billingAgreementId')
            @billing_agreement_id = hash['billingAgreementId']
          end
        end
      end
    end
  end
end
