#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] issuer_id
      class RedirectPaymentProduct882SpecificInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :issuer_id

        # @return (Hash)
        def to_h
          hash = super
          hash['issuerId'] = @issuer_id unless @issuer_id.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'issuerId'
            @issuer_id = hash['issuerId']
          end
        end
      end
    end
  end
end
