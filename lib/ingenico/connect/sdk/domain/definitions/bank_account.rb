#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [String] account_holder_name
          class BankAccount < Ingenico::Connect::SDK::DataObject

            attr_accessor :account_holder_name

            # @return (Hash)
            def to_h
              hash = super
              hash['accountHolderName'] = @account_holder_name unless @account_holder_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountHolderName'
                @account_holder_name = hash['accountHolderName']
              end
            end
          end
        end
      end
    end
  end
end
