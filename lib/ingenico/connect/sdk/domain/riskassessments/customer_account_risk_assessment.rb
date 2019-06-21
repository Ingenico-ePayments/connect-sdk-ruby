#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # @attr [true/false] has_forgotten_password
      # @attr [true/false] has_password
      class CustomerAccountRiskAssessment < Ingenico::Connect::SDK::DataObject

        attr_accessor :has_forgotten_password

        attr_accessor :has_password

        # @return (Hash)
        def to_h
          hash = super
          hash['hasForgottenPassword'] = @has_forgotten_password unless @has_forgotten_password.nil?
          hash['hasPassword'] = @has_password unless @has_password.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'hasForgottenPassword'
            @has_forgotten_password = hash['hasForgottenPassword']
          end
          if hash.has_key? 'hasPassword'
            @has_password = hash['hasPassword']
          end
        end
      end
    end
  end
end
