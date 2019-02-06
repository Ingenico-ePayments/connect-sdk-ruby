#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      class CreateDisputeRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # String
        attr_accessor :contact_person

        # String
        attr_accessor :email_address

        # String
        attr_accessor :reply_to

        # String
        attr_accessor :request_message

        def to_h
          hash = super
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'contactPerson', @contact_person)
          add_to_hash(hash, 'emailAddress', @email_address)
          add_to_hash(hash, 'replyTo', @reply_to)
          add_to_hash(hash, 'requestMessage', @request_message)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('amountOfMoney')
            if !(hash['amountOfMoney'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']]
            end
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key?('contactPerson')
            @contact_person = hash['contactPerson']
          end
          if hash.has_key?('emailAddress')
            @email_address = hash['emailAddress']
          end
          if hash.has_key?('replyTo')
            @reply_to = hash['replyTo']
          end
          if hash.has_key?('requestMessage')
            @request_message = hash['requestMessage']
          end
        end
      end
    end
  end
end
