#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/bank_account_bban'

module Ingenico::Connect::SDK
  module Domain
    module Refund

      # @attr [String] bank_city
      # @attr [String] patronymic_name
      # @attr [String] swift_code
      class BankAccountBbanRefund < Ingenico::Connect::SDK::Domain::Definitions::BankAccountBban

        attr_accessor :bank_city

        attr_accessor :patronymic_name

        attr_accessor :swift_code

        # @return (Hash)
        def to_h
          hash = super
          hash['bankCity'] = @bank_city unless @bank_city.nil?
          hash['patronymicName'] = @patronymic_name unless @patronymic_name.nil?
          hash['swiftCode'] = @swift_code unless @swift_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'bankCity'
            @bank_city = hash['bankCity']
          end
          if hash.has_key? 'patronymicName'
            @patronymic_name = hash['patronymicName']
          end
          if hash.has_key? 'swiftCode'
            @swift_code = hash['swiftCode']
          end
        end
      end
    end
  end
end
