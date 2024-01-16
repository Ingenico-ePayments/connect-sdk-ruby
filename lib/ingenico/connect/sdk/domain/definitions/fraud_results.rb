#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/in_auth'
require 'ingenico/connect/sdk/domain/definitions/microsoft_fraud_results'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [String] fraud_service_result
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::InAuth] in_auth
          # @attr [Ingenico::Connect::SDK::Domain::Definitions::MicrosoftFraudResults] microsoft_fraud_protection
          class FraudResults < Ingenico::Connect::SDK::DataObject

            attr_accessor :fraud_service_result

            attr_accessor :in_auth

            attr_accessor :microsoft_fraud_protection

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudServiceResult'] = @fraud_service_result unless @fraud_service_result.nil?
              hash['inAuth'] = @in_auth.to_h unless @in_auth.nil?
              hash['microsoftFraudProtection'] = @microsoft_fraud_protection.to_h unless @microsoft_fraud_protection.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudServiceResult'
                @fraud_service_result = hash['fraudServiceResult']
              end
              if hash.has_key? 'inAuth'
                raise TypeError, "value '%s' is not a Hash" % [hash['inAuth']] unless hash['inAuth'].is_a? Hash
                @in_auth = Ingenico::Connect::SDK::Domain::Definitions::InAuth.new_from_hash(hash['inAuth'])
              end
              if hash.has_key? 'microsoftFraudProtection'
                raise TypeError, "value '%s' is not a Hash" % [hash['microsoftFraudProtection']] unless hash['microsoftFraudProtection'].is_a? Hash
                @microsoft_fraud_protection = Ingenico::Connect::SDK::Domain::Definitions::MicrosoftFraudResults.new_from_hash(hash['microsoftFraudProtection'])
              end
            end
          end
        end
      end
    end
  end
end
