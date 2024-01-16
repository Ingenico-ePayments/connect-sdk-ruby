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
          # @attr [String] email_address
          # @attr [String] email_message_type
          class ContactDetailsBase < Ingenico::Connect::SDK::DataObject

            attr_accessor :email_address

            attr_accessor :email_message_type

            # @return (Hash)
            def to_h
              hash = super
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['emailMessageType'] = @email_message_type unless @email_message_type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'emailMessageType'
                @email_message_type = hash['emailMessageType']
              end
            end
          end
        end
      end
    end
  end
end
