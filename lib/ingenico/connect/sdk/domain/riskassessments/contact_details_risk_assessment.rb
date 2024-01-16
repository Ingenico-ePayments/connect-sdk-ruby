#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Riskassessments
          # @attr [String] email_address
          class ContactDetailsRiskAssessment < Ingenico::Connect::SDK::DataObject

            attr_accessor :email_address

            # @return (Hash)
            def to_h
              hash = super
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
            end
          end
        end
      end
    end
  end
end
