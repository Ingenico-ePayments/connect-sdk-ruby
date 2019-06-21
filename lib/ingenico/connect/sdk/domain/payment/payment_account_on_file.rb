#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] create_date
      # @attr [Integer] number_of_card_on_file_creation_attempts_last24_hours
      class PaymentAccountOnFile < Ingenico::Connect::SDK::DataObject

        attr_accessor :create_date

        attr_accessor :number_of_card_on_file_creation_attempts_last24_hours

        # @return (Hash)
        def to_h
          hash = super
          hash['createDate'] = @create_date unless @create_date.nil?
          hash['numberOfCardOnFileCreationAttemptsLast24Hours'] = @number_of_card_on_file_creation_attempts_last24_hours unless @number_of_card_on_file_creation_attempts_last24_hours.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'createDate'
            @create_date = hash['createDate']
          end
          if hash.has_key? 'numberOfCardOnFileCreationAttemptsLast24Hours'
            @number_of_card_on_file_creation_attempts_last24_hours = hash['numberOfCardOnFileCreationAttemptsLast24Hours']
          end
        end
      end
    end
  end
end
