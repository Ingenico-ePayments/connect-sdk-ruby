#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/seller'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class Merchant < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :contact_website_url

        # {Ingenico::Connect::SDK::Domain::Payment::Seller}
        attr_accessor :seller

        # String
        attr_accessor :website_url

        def to_h
          hash = super
          add_to_hash(hash, 'contactWebsiteUrl', @contact_website_url)
          add_to_hash(hash, 'seller', @seller)
          add_to_hash(hash, 'websiteUrl', @website_url)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('contactWebsiteUrl')
            @contact_website_url = hash['contactWebsiteUrl']
          end
          if hash.has_key?('seller')
            if !(hash['seller'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['seller']]
            end
            @seller = Ingenico::Connect::SDK::Domain::Payment::Seller.new_from_hash(hash['seller'])
          end
          if hash.has_key?('websiteUrl')
            @website_url = hash['websiteUrl']
          end
        end
      end
    end
  end
end
