#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/frequency'
require 'ingenico/connect/sdk/domain/hostedcheckout/trial_information'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedcheckout
          # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::Frequency] recurring_interval
          # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::TrialInformation] trial_information
          class RecurringPaymentsData < Ingenico::Connect::SDK::DataObject

            attr_accessor :recurring_interval

            attr_accessor :trial_information

            # @return (Hash)
            def to_h
              hash = super
              hash['recurringInterval'] = @recurring_interval.to_h unless @recurring_interval.nil?
              hash['trialInformation'] = @trial_information.to_h unless @trial_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'recurringInterval'
                raise TypeError, "value '%s' is not a Hash" % [hash['recurringInterval']] unless hash['recurringInterval'].is_a? Hash
                @recurring_interval = Ingenico::Connect::SDK::Domain::Hostedcheckout::Frequency.new_from_hash(hash['recurringInterval'])
              end
              if hash.has_key? 'trialInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['trialInformation']] unless hash['trialInformation'].is_a? Hash
                @trial_information = Ingenico::Connect::SDK::Domain::Hostedcheckout::TrialInformation.new_from_hash(hash['trialInformation'])
              end
            end
          end
        end
      end
    end
  end
end
