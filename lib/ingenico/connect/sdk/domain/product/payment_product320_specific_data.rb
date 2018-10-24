#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      class PaymentProduct320SpecificData < Ingenico::Connect::SDK::DataObject

        # Array of String
        attr_accessor :networks

        def to_h
          hash = super
          add_to_hash(hash, 'networks', @networks)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('networks')
            if !(hash['networks'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['networks']]
            end
            @networks = []
            hash['networks'].each do |e|
              @networks << e
            end
          end
        end
      end
    end
  end
end
