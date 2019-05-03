#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ExternalCardholderAuthenticationData < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :cavv

        # String
        attr_accessor :cavv_algorithm

        # String
        attr_accessor :directory_server_transaction_id

        # Integer
        attr_accessor :eci

        # String
        attr_accessor :three_d_secure_version

        # String
        attr_accessor :three_d_server_transaction_id

        # String
        attr_accessor :validation_result

        # String
        attr_accessor :xid

        def to_h
          hash = super
          add_to_hash(hash, 'cavv', @cavv)
          add_to_hash(hash, 'cavvAlgorithm', @cavv_algorithm)
          add_to_hash(hash, 'directoryServerTransactionId', @directory_server_transaction_id)
          add_to_hash(hash, 'eci', @eci)
          add_to_hash(hash, 'threeDSecureVersion', @three_d_secure_version)
          add_to_hash(hash, 'threeDServerTransactionId', @three_d_server_transaction_id)
          add_to_hash(hash, 'validationResult', @validation_result)
          add_to_hash(hash, 'xid', @xid)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cavv')
            @cavv = hash['cavv']
          end
          if hash.has_key?('cavvAlgorithm')
            @cavv_algorithm = hash['cavvAlgorithm']
          end
          if hash.has_key?('directoryServerTransactionId')
            @directory_server_transaction_id = hash['directoryServerTransactionId']
          end
          if hash.has_key?('eci')
            @eci = hash['eci']
          end
          if hash.has_key?('threeDSecureVersion')
            @three_d_secure_version = hash['threeDSecureVersion']
          end
          if hash.has_key?('threeDServerTransactionId')
            @three_d_server_transaction_id = hash['threeDServerTransactionId']
          end
          if hash.has_key?('validationResult')
            @validation_result = hash['validationResult']
          end
          if hash.has_key?('xid')
            @xid = hash['xid']
          end
        end
      end
    end
  end
end
