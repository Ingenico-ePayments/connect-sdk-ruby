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
          # @attr [String] dpan
          # @attr [String] expiry_date
          class MobilePaymentData < Ingenico::Connect::SDK::DataObject

            attr_accessor :dpan

            attr_accessor :expiry_date

            # @return (Hash)
            def to_h
              hash = super
              hash['dpan'] = @dpan unless @dpan.nil?
              hash['expiryDate'] = @expiry_date unless @expiry_date.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dpan'
                @dpan = hash['dpan']
              end
              if hash.has_key? 'expiryDate'
                @expiry_date = hash['expiryDate']
              end
            end
          end
        end
      end
    end
  end
end
