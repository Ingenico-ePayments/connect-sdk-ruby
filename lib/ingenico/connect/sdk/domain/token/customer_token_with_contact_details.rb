#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/token/contact_details_token'
require 'ingenico/connect/sdk/domain/token/customer_token'

module Ingenico::Connect::SDK
  module Domain
    module Token

      class CustomerTokenWithContactDetails < Ingenico::Connect::SDK::Domain::Token::CustomerToken

        # {Ingenico::Connect::SDK::Domain::Token::ContactDetailsToken}
        attr_accessor :contact_details

        def to_h
          hash = super
          add_to_hash(hash, 'contactDetails', @contact_details)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('contactDetails')
            if !(hash['contactDetails'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']]
            end
            @contact_details = Ingenico::Connect::SDK::Domain::Token::ContactDetailsToken.new_from_hash(hash['contactDetails'])
          end
        end
      end
    end
  end
end
