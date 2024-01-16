#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [true/false] mobile_device
          class RedirectPaymentProduct861SpecificInput < Ingenico::Connect::SDK::DataObject

            attr_accessor :mobile_device

            # @return (Hash)
            def to_h
              hash = super
              hash['mobileDevice'] = @mobile_device unless @mobile_device.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mobileDevice'
                @mobile_device = hash['mobileDevice']
              end
            end
          end
        end
      end
    end
  end
end
