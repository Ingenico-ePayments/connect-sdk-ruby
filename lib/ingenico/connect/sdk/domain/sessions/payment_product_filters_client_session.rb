#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/payment_product_filter'

module Ingenico::Connect::SDK
  module Domain
    module Sessions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProductFiltersClientSession PaymentProductFiltersClientSession}
      class PaymentProductFiltersClientSession < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter}
        attr_accessor :exclude

        # {Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter}
        attr_accessor :restrict_to

        def to_h
          hash = super
          add_to_hash(hash, 'exclude', @exclude)
          add_to_hash(hash, 'restrictTo', @restrict_to)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('exclude')
            if !(hash['exclude'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['exclude']]
            end
            @exclude = Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter.new_from_hash(hash['exclude'])
          end
          if hash.has_key?('restrictTo')
            if !(hash['restrictTo'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['restrictTo']]
            end
            @restrict_to = Ingenico::Connect::SDK::Domain::Definitions::PaymentProductFilter.new_from_hash(hash['restrictTo'])
          end
        end
      end
    end
  end
end
