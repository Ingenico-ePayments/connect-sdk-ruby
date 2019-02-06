#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      class DisputeCreationDetail < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :dispute_creation_date

        # String
        attr_accessor :dispute_originator

        # String
        attr_accessor :user_name

        def to_h
          hash = super
          add_to_hash(hash, 'disputeCreationDate', @dispute_creation_date)
          add_to_hash(hash, 'disputeOriginator', @dispute_originator)
          add_to_hash(hash, 'userName', @user_name)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('disputeCreationDate')
            @dispute_creation_date = hash['disputeCreationDate']
          end
          if hash.has_key?('disputeOriginator')
            @dispute_originator = hash['disputeOriginator']
          end
          if hash.has_key?('userName')
            @user_name = hash['userName']
          end
        end
      end
    end
  end
end
