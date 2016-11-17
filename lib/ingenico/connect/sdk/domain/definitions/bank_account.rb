#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_BankAccount BankAccount}
      class BankAccount < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :account_holder_name

        def to_h
          hash = super
          add_to_hash(hash, 'accountHolderName', @account_holder_name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('accountHolderName')
            @account_holder_name = hash['accountHolderName']
          end
        end
      end
    end
  end
end
