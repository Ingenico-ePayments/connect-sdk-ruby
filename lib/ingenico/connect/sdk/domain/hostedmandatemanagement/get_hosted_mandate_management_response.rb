#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/mandates/mandate_response'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedmandatemanagement
          # @attr [Ingenico::Connect::SDK::Domain::Mandates::MandateResponse] mandate
          # @attr [String] status
          class GetHostedMandateManagementResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :mandate

            attr_accessor :status

            # @return (Hash)
            def to_h
              hash = super
              hash['mandate'] = @mandate.to_h unless @mandate.nil?
              hash['status'] = @status unless @status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Ingenico::Connect::SDK::Domain::Mandates::MandateResponse.new_from_hash(hash['mandate'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
            end
          end
        end
      end
    end
  end
end
