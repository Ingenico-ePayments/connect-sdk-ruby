#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] account_type
      class CustomerApprovePayment < Ingenico::Connect::SDK::DataObject

        attr_accessor :account_type

        # @return (Hash)
        def to_h
          hash = super
          hash['accountType'] = @account_type unless @account_type.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'accountType'
            @account_type = hash['accountType']
          end
        end
      end
    end
  end
end
