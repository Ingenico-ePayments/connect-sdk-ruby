#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/mandates/create_mandate_base'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Mandates
          # @attr [String] return_url
          class CreateMandateWithReturnUrl < Ingenico::Connect::SDK::Domain::Mandates::CreateMandateBase

            attr_accessor :return_url

            # @return (Hash)
            def to_h
              hash = super
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
              end
            end
          end
        end
      end
    end
  end
end
