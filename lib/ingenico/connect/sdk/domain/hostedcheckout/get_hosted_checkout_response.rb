#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedcheckout/created_payment_output'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Hostedcheckout
          # @attr [Ingenico::Connect::SDK::Domain::Hostedcheckout::CreatedPaymentOutput] created_payment_output
          # @attr [String] status
          class GetHostedCheckoutResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :created_payment_output

            attr_accessor :status

            # @return (Hash)
            def to_h
              hash = super
              hash['createdPaymentOutput'] = @created_payment_output.to_h unless @created_payment_output.nil?
              hash['status'] = @status unless @status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'createdPaymentOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['createdPaymentOutput']] unless hash['createdPaymentOutput'].is_a? Hash
                @created_payment_output = Ingenico::Connect::SDK::Domain::Hostedcheckout::CreatedPaymentOutput.new_from_hash(hash['createdPaymentOutput'])
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
