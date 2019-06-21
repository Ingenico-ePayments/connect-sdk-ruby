#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/seller'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] contact_website_url
      # @attr [Ingenico::Connect::SDK::Domain::Payment::Seller] seller
      # @attr [String] website_url
      class Merchant < Ingenico::Connect::SDK::DataObject

        attr_accessor :contact_website_url

        attr_accessor :seller

        attr_accessor :website_url

        # @return (Hash)
        def to_h
          hash = super
          hash['contactWebsiteUrl'] = @contact_website_url unless @contact_website_url.nil?
          hash['seller'] = @seller.to_h unless @seller.nil?
          hash['websiteUrl'] = @website_url unless @website_url.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'contactWebsiteUrl'
            @contact_website_url = hash['contactWebsiteUrl']
          end
          if hash.has_key? 'seller'
            raise TypeError, "value '%s' is not a Hash" % [hash['seller']] unless hash['seller'].is_a? Hash
            @seller = Ingenico::Connect::SDK::Domain::Payment::Seller.new_from_hash(hash['seller'])
          end
          if hash.has_key? 'websiteUrl'
            @website_url = hash['websiteUrl']
          end
        end
      end
    end
  end
end
