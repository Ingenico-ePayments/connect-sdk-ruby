#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/airline_data'
require 'ingenico/connect/sdk/domain/definitions/lodging_data'
require 'ingenico/connect/sdk/domain/payment/account_funding_recipient'
require 'ingenico/connect/sdk/domain/payment/installments'
require 'ingenico/connect/sdk/domain/payment/level3_summary_data'
require 'ingenico/connect/sdk/domain/payment/loan_recipient'
require 'ingenico/connect/sdk/domain/payment/order_type_information'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [Ingenico::Connect::SDK::Domain::Payment::AccountFundingRecipient] account_funding_recipient
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::AirlineData] airline_data
          # @attr [Ingenico::Connect::SDK::Domain::Payment::Installments] installments
          # @attr [Ingenico::Connect::SDK::Domain::Payment::Level3SummaryData] level3_summary_data
          # @attr [Ingenico::Connect::SDK::Domain::Payment::LoanRecipient] loan_recipient
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::LodgingData] lodging_data
          # @attr [Integer] number_of_installments
          # @attr [String] order_date
          # @attr [Ingenico::Connect::SDK::Domain::Payment::OrderTypeInformation] type_information
          class AdditionalOrderInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :account_funding_recipient

            attr_accessor :airline_data

            attr_accessor :installments

            #
            # @deprecated Use Order.shoppingCart.amountBreakdown instead
            attr_accessor :level3_summary_data

            #
            # @deprecated No replacement
            attr_accessor :loan_recipient

            attr_accessor :lodging_data

            #
            # @deprecated Use installments.numberOfInstallments instead
            attr_accessor :number_of_installments

            attr_accessor :order_date

            attr_accessor :type_information

            # @return (Hash)
            def to_h
              hash = super
              hash['accountFundingRecipient'] = @account_funding_recipient.to_h unless @account_funding_recipient.nil?
              hash['airlineData'] = @airline_data.to_h unless @airline_data.nil?
              hash['installments'] = @installments.to_h unless @installments.nil?
              hash['level3SummaryData'] = @level3_summary_data.to_h unless @level3_summary_data.nil?
              hash['loanRecipient'] = @loan_recipient.to_h unless @loan_recipient.nil?
              hash['lodgingData'] = @lodging_data.to_h unless @lodging_data.nil?
              hash['numberOfInstallments'] = @number_of_installments unless @number_of_installments.nil?
              hash['orderDate'] = @order_date unless @order_date.nil?
              hash['typeInformation'] = @type_information.to_h unless @type_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountFundingRecipient'
                raise TypeError, "value '%s' is not a Hash" % [hash['accountFundingRecipient']] unless hash['accountFundingRecipient'].is_a? Hash
                @account_funding_recipient = Ingenico::Connect::SDK::Domain::Payment::AccountFundingRecipient.new_from_hash(hash['accountFundingRecipient'])
              end
              if hash.has_key? 'airlineData'
                raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']] unless hash['airlineData'].is_a? Hash
                @airline_data = Ingenico::Connect::SDK::Domain::Definitions::AirlineData.new_from_hash(hash['airlineData'])
              end
              if hash.has_key? 'installments'
                raise TypeError, "value '%s' is not a Hash" % [hash['installments']] unless hash['installments'].is_a? Hash
                @installments = Ingenico::Connect::SDK::Domain::Payment::Installments.new_from_hash(hash['installments'])
              end
              if hash.has_key? 'level3SummaryData'
                raise TypeError, "value '%s' is not a Hash" % [hash['level3SummaryData']] unless hash['level3SummaryData'].is_a? Hash
                @level3_summary_data = Ingenico::Connect::SDK::Domain::Payment::Level3SummaryData.new_from_hash(hash['level3SummaryData'])
              end
              if hash.has_key? 'loanRecipient'
                raise TypeError, "value '%s' is not a Hash" % [hash['loanRecipient']] unless hash['loanRecipient'].is_a? Hash
                @loan_recipient = Ingenico::Connect::SDK::Domain::Payment::LoanRecipient.new_from_hash(hash['loanRecipient'])
              end
              if hash.has_key? 'lodgingData'
                raise TypeError, "value '%s' is not a Hash" % [hash['lodgingData']] unless hash['lodgingData'].is_a? Hash
                @lodging_data = Ingenico::Connect::SDK::Domain::Definitions::LodgingData.new_from_hash(hash['lodgingData'])
              end
              if hash.has_key? 'numberOfInstallments'
                @number_of_installments = hash['numberOfInstallments']
              end
              if hash.has_key? 'orderDate'
                @order_date = hash['orderDate']
              end
              if hash.has_key? 'typeInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['typeInformation']] unless hash['typeInformation'].is_a? Hash
                @type_information = Ingenico::Connect::SDK::Domain::Payment::OrderTypeInformation.new_from_hash(hash['typeInformation'])
              end
            end
          end
        end
      end
    end
  end
end
