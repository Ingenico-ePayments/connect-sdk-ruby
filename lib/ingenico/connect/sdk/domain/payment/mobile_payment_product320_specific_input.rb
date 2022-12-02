#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/g_pay_three_d_secure'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] cardholder_name
      # @attr [Ingenico::Connect::SDK::Domain::Payment::GPayThreeDSecure] three_d_secure
      class MobilePaymentProduct320SpecificInput < Ingenico::Connect::SDK::DataObject

        attr_accessor :cardholder_name

        attr_accessor :three_d_secure

        # @return (Hash)
        def to_h
          hash = super
          hash['cardholderName'] = @cardholder_name unless @cardholder_name.nil?
          hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'cardholderName'
            @cardholder_name = hash['cardholderName']
          end
          if hash.has_key? 'threeDSecure'
            raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
            @three_d_secure = Ingenico::Connect::SDK::Domain::Payment::GPayThreeDSecure.new_from_hash(hash['threeDSecure'])
          end
        end
      end
    end
  end
end
