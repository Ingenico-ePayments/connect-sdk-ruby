#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/address_personal'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      class ShippingRiskAssessment < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::AddressPersonal}
        attr_accessor :address

        # String
        attr_accessor :comments

        # String
        attr_accessor :tracking_number

        def to_h
          hash = super
          add_to_hash(hash, 'address', @address)
          add_to_hash(hash, 'comments', @comments)
          add_to_hash(hash, 'trackingNumber', @tracking_number)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('address')
            if !(hash['address'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['address']]
            end
            @address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['address'])
          end
          if hash.has_key?('comments')
            @comments = hash['comments']
          end
          if hash.has_key?('trackingNumber')
            @tracking_number = hash['trackingNumber']
          end
        end
      end
    end
  end
end
