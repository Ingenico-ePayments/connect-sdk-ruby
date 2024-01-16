#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/token/contact_details_token'
require 'ingenico/connect/sdk/domain/token/customer_token'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Token
          # @attr [Ingenico::Connect::SDK::Domain::Token::ContactDetailsToken] contact_details
          class CustomerTokenWithContactDetails < Ingenico::Connect::SDK::Domain::Token::CustomerToken

            attr_accessor :contact_details

            # @return (Hash)
            def to_h
              hash = super
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Ingenico::Connect::SDK::Domain::Token::ContactDetailsToken.new_from_hash(hash['contactDetails'])
              end
            end
          end
        end
      end
    end
  end
end
