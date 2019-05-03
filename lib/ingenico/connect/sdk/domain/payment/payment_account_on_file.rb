#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentAccountOnFile < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :create_date

        # Integer
        attr_accessor :number_of_card_on_file_creation_attempts_last24_hours

        def to_h
          hash = super
          add_to_hash(hash, 'createDate', @create_date)
          add_to_hash(hash, 'numberOfCardOnFileCreationAttemptsLast24Hours', @number_of_card_on_file_creation_attempts_last24_hours)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('createDate')
            @create_date = hash['createDate']
          end
          if hash.has_key?('numberOfCardOnFileCreationAttemptsLast24Hours')
            @number_of_card_on_file_creation_attempts_last24_hours = hash['numberOfCardOnFileCreationAttemptsLast24Hours']
          end
        end
      end
    end
  end
end
