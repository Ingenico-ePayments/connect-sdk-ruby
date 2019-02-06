#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/dispute/dispute_creation_detail'
require 'ingenico/connect/sdk/domain/dispute/dispute_reference'
require 'ingenico/connect/sdk/domain/file/hosted_file'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      class DisputeOutput < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney}
        attr_accessor :amount_of_money

        # String
        attr_accessor :contact_person

        # {Ingenico::Connect::SDK::Domain::Dispute::DisputeCreationDetail}
        attr_accessor :creation_details

        # String
        attr_accessor :email_address

        # Array of {Ingenico::Connect::SDK::Domain::File::HostedFile}
        attr_accessor :files

        # {Ingenico::Connect::SDK::Domain::Dispute::DisputeReference}
        attr_accessor :reference

        # String
        attr_accessor :reply_to

        # String
        attr_accessor :request_message

        # String
        attr_accessor :response_message

        def to_h
          hash = super
          add_to_hash(hash, 'amountOfMoney', @amount_of_money)
          add_to_hash(hash, 'contactPerson', @contact_person)
          add_to_hash(hash, 'creationDetails', @creation_details)
          add_to_hash(hash, 'emailAddress', @email_address)
          add_to_hash(hash, 'files', @files)
          add_to_hash(hash, 'reference', @reference)
          add_to_hash(hash, 'replyTo', @reply_to)
          add_to_hash(hash, 'requestMessage', @request_message)
          add_to_hash(hash, 'responseMessage', @response_message)
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
          if hash.has_key?('creationDetails')
            if !(hash['creationDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['creationDetails']]
            end
            @creation_details = Ingenico::Connect::SDK::Domain::Dispute::DisputeCreationDetail.new_from_hash(hash['creationDetails'])
          end
          if hash.has_key?('emailAddress')
            @email_address = hash['emailAddress']
          end
          if hash.has_key?('files')
            if !(hash['files'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['files']]
            end
            @files = []
            hash['files'].each do |e|
              @files << Ingenico::Connect::SDK::Domain::File::HostedFile.new_from_hash(e)
            end
          end
          if hash.has_key?('reference')
            if !(hash['reference'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['reference']]
            end
            @reference = Ingenico::Connect::SDK::Domain::Dispute::DisputeReference.new_from_hash(hash['reference'])
          end
          if hash.has_key?('replyTo')
            @reply_to = hash['replyTo']
          end
          if hash.has_key?('requestMessage')
            @request_message = hash['requestMessage']
          end
          if hash.has_key?('responseMessage')
            @response_message = hash['responseMessage']
          end
        end
      end
    end
  end
end
