#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/address_personal'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # @attr [Ingenico::Connect::SDK::Domain::Payment::AddressPersonal] address
      # @attr [String] comments
      # @attr [String] tracking_number
      class ShippingRiskAssessment < Ingenico::Connect::SDK::DataObject

        attr_accessor :address

        attr_accessor :comments

        attr_accessor :tracking_number

        # @return (Hash)
        def to_h
          hash = super
          hash['address'] = @address.to_h unless @address.nil?
          hash['comments'] = @comments unless @comments.nil?
          hash['trackingNumber'] = @tracking_number unless @tracking_number.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'address'
            raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
            @address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['address'])
          end
          if hash.has_key? 'comments'
            @comments = hash['comments']
          end
          if hash.has_key? 'trackingNumber'
            @tracking_number = hash['trackingNumber']
          end
        end
      end
    end
  end
end
