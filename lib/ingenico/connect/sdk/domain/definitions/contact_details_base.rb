#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      class ContactDetailsBase < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :email_address

        # String
        attr_accessor :email_message_type

        def to_h
          hash = super
          add_to_hash(hash, 'emailAddress', @email_address)
          add_to_hash(hash, 'emailMessageType', @email_message_type)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('emailAddress')
            @email_address = hash['emailAddress']
          end
          if hash.has_key?('emailMessageType')
            @email_message_type = hash['emailMessageType']
          end
        end
      end
    end
  end
end
