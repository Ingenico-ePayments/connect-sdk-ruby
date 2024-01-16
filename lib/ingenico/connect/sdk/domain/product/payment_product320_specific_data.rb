#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [String] gateway
          # @attr [Array<String>] networks
          class PaymentProduct320SpecificData < Ingenico::Connect::SDK::DataObject

            attr_accessor :gateway

            attr_accessor :networks

            # @return (Hash)
            def to_h
              hash = super
              hash['gateway'] = @gateway unless @gateway.nil?
              hash['networks'] = @networks unless @networks.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'gateway'
                @gateway = hash['gateway']
              end
              if hash.has_key? 'networks'
                raise TypeError, "value '%s' is not an Array" % [hash['networks']] unless hash['networks'].is_a? Array
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
  end
end
