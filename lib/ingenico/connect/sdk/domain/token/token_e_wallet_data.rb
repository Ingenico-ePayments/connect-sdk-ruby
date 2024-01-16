#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [String] billing_agreement_id
          class TokenEWalletData < Ingenico::Connect::SDK::DataObject

            attr_accessor :billing_agreement_id

            # @return (Hash)
            def to_h
              hash = super
              hash['billingAgreementId'] = @billing_agreement_id unless @billing_agreement_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'billingAgreementId'
                @billing_agreement_id = hash['billingAgreementId']
              end
            end
          end
        end
      end
    end
  end
end
