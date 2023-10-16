#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/hostedcheckout/frequency'
require 'ingenico/connect/sdk/domain/hostedcheckout/trial_period'

module Ingenico::Connect::SDK
  module Domain
    module Hostedcheckout

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney] amount_of_money_after_trial
      # @attr [String] end_date
      # @attr [true/false] is_recurring
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::TrialPeriod] trial_period
      # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::Frequency] trial_period_recurring
      class TrialInformation < Ingenico::Connect::SDK::DataObject

        attr_accessor :amount_of_money_after_trial

        attr_accessor :end_date

        attr_accessor :is_recurring

        attr_accessor :trial_period

        attr_accessor :trial_period_recurring

        # @return (Hash)
        def to_h
          hash = super
          hash['amountOfMoneyAfterTrial'] = @amount_of_money_after_trial.to_h unless @amount_of_money_after_trial.nil?
          hash['endDate'] = @end_date unless @end_date.nil?
          hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
          hash['trialPeriod'] = @trial_period.to_h unless @trial_period.nil?
          hash['trialPeriodRecurring'] = @trial_period_recurring.to_h unless @trial_period_recurring.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'amountOfMoneyAfterTrial'
            raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoneyAfterTrial']] unless hash['amountOfMoneyAfterTrial'].is_a? Hash
            @amount_of_money_after_trial = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new_from_hash(hash['amountOfMoneyAfterTrial'])
          end
          if hash.has_key? 'endDate'
            @end_date = hash['endDate']
          end
          if hash.has_key? 'isRecurring'
            @is_recurring = hash['isRecurring']
          end
          if hash.has_key? 'trialPeriod'
            raise TypeError, "value '%s' is not a Hash" % [hash['trialPeriod']] unless hash['trialPeriod'].is_a? Hash
            @trial_period = Ingenico::Connect::SDK::Domain::Hostedcheckout::TrialPeriod.new_from_hash(hash['trialPeriod'])
          end
          if hash.has_key? 'trialPeriodRecurring'
            raise TypeError, "value '%s' is not a Hash" % [hash['trialPeriodRecurring']] unless hash['trialPeriodRecurring'].is_a? Hash
            @trial_period_recurring = Ingenico::Connect::SDK::Domain::Hostedcheckout::Frequency.new_from_hash(hash['trialPeriodRecurring'])
          end
        end
      end
    end
  end
end
