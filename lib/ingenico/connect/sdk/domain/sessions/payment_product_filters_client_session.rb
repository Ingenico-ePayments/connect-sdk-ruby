#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/payment_product_filter'

module Ingenico::Connect::SDK
  module Domain
    module Sessions

      # @attr [Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter] exclude
      # @attr [Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter] restrict_to
      class PaymentProductFiltersClientSession < Ingenico::Connect::SDK::DataObject

        attr_accessor :exclude

        attr_accessor :restrict_to

        # @return (Hash)
        def to_h
          hash = super
          hash['exclude'] = @exclude.to_h unless @exclude.nil?
          hash['restrictTo'] = @restrict_to.to_h unless @restrict_to.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'exclude'
            raise TypeError, "value '%s' is not a Hash" % [hash['exclude']] unless hash['exclude'].is_a? Hash
            @exclude = Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter.new_from_hash(hash['exclude'])
          end
          if hash.has_key? 'restrictTo'
            raise TypeError, "value '%s' is not a Hash" % [hash['restrictTo']] unless hash['restrictTo'].is_a? Hash
            @restrict_to = Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter.new_from_hash(hash['restrictTo'])
          end
        end
      end
    end
  end
end
