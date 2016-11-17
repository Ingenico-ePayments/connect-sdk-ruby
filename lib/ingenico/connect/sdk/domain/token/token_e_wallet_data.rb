#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Token

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_TokenEWalletData TokenEWalletData}
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
