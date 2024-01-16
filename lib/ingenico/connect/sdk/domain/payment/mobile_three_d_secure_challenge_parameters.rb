#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] acs_reference_number
          # @attr [String] acs_signed_content
          # @attr [String] acs_transaction_id
          # @attr [String] three_d_server_transaction_id
          class MobileThreeDSecureChallengeParameters < Ingenico::Connect::SDK::DataObject

            attr_accessor :acs_reference_number

            attr_accessor :acs_signed_content

            attr_accessor :acs_transaction_id

            attr_accessor :three_d_server_transaction_id

            # @return (Hash)
            def to_h
              hash = super
              hash['acsReferenceNumber'] = @acs_reference_number unless @acs_reference_number.nil?
              hash['acsSignedContent'] = @acs_signed_content unless @acs_signed_content.nil?
              hash['acsTransactionId'] = @acs_transaction_id unless @acs_transaction_id.nil?
              hash['threeDServerTransactionId'] = @three_d_server_transaction_id unless @three_d_server_transaction_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'acsReferenceNumber'
                @acs_reference_number = hash['acsReferenceNumber']
              end
              if hash.has_key? 'acsSignedContent'
                @acs_signed_content = hash['acsSignedContent']
              end
              if hash.has_key? 'acsTransactionId'
                @acs_transaction_id = hash['acsTransactionId']
              end
              if hash.has_key? 'threeDServerTransactionId'
                @three_d_server_transaction_id = hash['threeDServerTransactionId']
              end
            end
          end
        end
      end
    end
  end
end
