#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money_per_installment
      # @attr [String] frequency_of_installments
      # @attr [Integer] installment_plan_code
      # @attr [String] interest_rate
      # @attr [Integer] number_of_installments
      class Installments < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money_per_installment

        attr_accessor :frequency_of_installments

        attr_accessor :installment_plan_code

        attr_accessor :interest_rate

        attr_accessor :number_of_installments

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoneyPerInstallment'] = @amount_of_money_per_installment.to_h unless @amount_of_money_per_installment.nil?
          hash['frequencyOfInstallments'] = @frequency_of_installments unless @frequency_of_installments.nil?
          hash['installmentPlanCode'] = @installment_plan_code unless @installment_plan_code.nil?
          hash['interestRate'] = @interest_rate unless @interest_rate.nil?
          hash['numberOfInstallments'] = @number_of_installments unless @number_of_installments.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoneyPerInstallment'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoneyPerInstallment']] unless hash['amountOfMoneyPerInstallment'].is_a? Hash
            @amount_of_money_per_installment = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoneyPerInstallment'])
          end
          if hash.has_key? 'frequencyOfInstallments'
            @frequency_of_installments = hash['frequencyOfInstallments']
          end
          if hash.has_key? 'installmentPlanCode'
            @installment_plan_code = hash['installmentPlanCode']
          end
          if hash.has_key? 'interestRate'
            @interest_rate = hash['interestRate']
          end
          if hash.has_key? 'numberOfInstallments'
            @number_of_installments = hash['numberOfInstallments']
          end
        end
      end
    end
  end
end
