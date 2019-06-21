#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_response'

module Ingenico::Connect::SDK
  module Domain
    module Mandates

      # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandateResponse] mandate
      class GetMandateResponse < Ingenico::Connect::SDK::DataObject

        attr_accessor :mandate

        # @return (Hash)
        def to_h
          hash = super
          hash['mandate'] = @mandate.to_h unless @mandate.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'mandate'
            raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
            @mandate = Ingenico::Connect::SDK::Domain::Mandates::MandateResponse.new_from_hash(hash['mandate'])
          end
        end
      end
    end
  end
end
