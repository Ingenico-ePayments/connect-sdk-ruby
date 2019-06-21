#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money
      # @attr [String] contact_person
      # @attr [String] email_address
      # @attr [String] reply_to
      # @attr [String] request_message
      class CreateDisputeRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money

        attr_accessor :contact_person

        attr_accessor :email_address

        attr_accessor :reply_to

        attr_accessor :request_message

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
          hash['contactPerson'] = @contact_person unless @contact_person.nil?
          hash['emailAddress'] = @email_address unless @email_address.nil?
          hash['replyTo'] = @reply_to unless @reply_to.nil?
          hash['requestMessage'] = @request_message unless @request_message.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoney'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
            @amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
          end
          if hash.has_key? 'contactPerson'
            @contact_person = hash['contactPerson']
          end
          if hash.has_key? 'emailAddress'
            @email_address = hash['emailAddress']
          end
          if hash.has_key? 'replyTo'
            @reply_to = hash['replyTo']
          end
          if hash.has_key? 'requestMessage'
            @request_message = hash['requestMessage']
          end
        end
      end
    end
  end
end
