#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/payment/refund_method_specific_output'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] authorisation_code
      class RefundCardMethodSpecificOutput < Ingenico::Connect::SDK::Domain::Payment::RefundMethodSpecificOutput

        attr_accessor :authorisation_code

        # @return (Hash)
        def to_h
          hash = super
          hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'authorisationCode'
            @authorisation_code = hash['authorisationCode']
          end
        end
      end
    end
  end
end
