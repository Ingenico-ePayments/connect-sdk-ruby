#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/installments/installment_options'

module Ingenico::Connect::SDK
  module Domain
    module Installments

      # @attr [Array<Ingenico::Connect::SDK::Domain::Installments::InstallmentOptions>] installment_options
      class InstallmentOptionsResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :installment_options

        # @return (Hash)
        def to_h
          hash = super
          hash['installmentOptions'] = @installment_options.collect{|val| val.to_h} unless @installment_options.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'installmentOptions'
            raise TypeError, "value '%s' is not an Array" % [hash['installmentOptions']] unless hash['installmentOptions'].is_a? Array
            @installment_options = []
            hash['installmentOptions'].each do |e|
              @installment_options << Ingenico::Connect::SDK::Domain::Installments::InstallmentOptions.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
