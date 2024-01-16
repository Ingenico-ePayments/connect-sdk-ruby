#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/installments/installment_display_hints'
require 'ingenico/connect/sdk/domain/payment/installments'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Installments
          # @attr [Ingenico::Connect::SDK::Domain::Installments::InstallmentDisplayHints] display_hints
          # @attr [String] id
          # @attr [Array<Ingenico::Connect::SDK::Domain::Payment::Installments>] installment_plans
          class InstallmentOptions < Ingenico::Connect::SDK::DataObject

            attr_accessor :display_hints

            attr_accessor :id

            attr_accessor :installment_plans

            # @return (Hash)
            def to_h
              hash = super
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['id'] = @id unless @id.nil?
              hash['installmentPlans'] = @installment_plans.collect{|val| val.to_h} unless @installment_plans.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Ingenico::Connect::SDK::Domain::Installments::InstallmentDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'installmentPlans'
                raise TypeError, "value '%s' is not an Array" % [hash['installmentPlans']] unless hash['installmentPlans'].is_a? Array
                @installment_plans = []
                hash['installmentPlans'].each do |e|
                  @installment_plans << Ingenico::Connect::SDK::Domain::Payment::Installments.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
