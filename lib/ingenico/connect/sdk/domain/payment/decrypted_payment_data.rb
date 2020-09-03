#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # @attr [String] auth_method
      # @attr [String] cardholder_name
      # @attr [String] cryptogram
      # @attr [String] dpan
      # @attr [Integer] eci
      # @attr [String] expiry_date
      # @attr [String] pan
      # @attr [String] payment_method
      class DecryptedPaymentData < Ingenico::Connect::SDK::DataObject

        attr_accessor :auth_method

        attr_accessor :cardholder_name

        attr_accessor :cryptogram

        attr_accessor :dpan

        attr_accessor :eci

        attr_accessor :expiry_date

        attr_accessor :pan

        attr_accessor :payment_method

        # @return (Hash)
        def to_h
          hash = super
          hash['authMethod'] = @auth_method unless @auth_method.nil?
          hash['cardholderName'] = @cardholder_name unless @cardholder_name.nil?
          hash['cryptogram'] = @cryptogram unless @cryptogram.nil?
          hash['dpan'] = @dpan unless @dpan.nil?
          hash['eci'] = @eci unless @eci.nil?
          hash['expiryDate'] = @expiry_date unless @expiry_date.nil?
          hash['pan'] = @pan unless @pan.nil?
          hash['paymentMethod'] = @payment_method unless @payment_method.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'authMethod'
            @auth_method = hash['authMethod']
          end
          if hash.has_key? 'cardholderName'
            @cardholder_name = hash['cardholderName']
          end
          if hash.has_key? 'cryptogram'
            @cryptogram = hash['cryptogram']
          end
          if hash.has_key? 'dpan'
            @dpan = hash['dpan']
          end
          if hash.has_key? 'eci'
            @eci = hash['eci']
          end
          if hash.has_key? 'expiryDate'
            @expiry_date = hash['expiryDate']
          end
          if hash.has_key? 'pan'
            @pan = hash['pan']
          end
          if hash.has_key? 'paymentMethod'
            @payment_method = hash['paymentMethod']
          end
        end
      end
    end
  end
end
