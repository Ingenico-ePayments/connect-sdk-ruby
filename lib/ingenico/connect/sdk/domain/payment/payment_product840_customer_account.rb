#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class PaymentProduct840CustomerAccount < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :account_id

        # String
        attr_accessor :billing_agreement_id

        # String
        attr_accessor :company_name

        # String
        attr_accessor :country_code

        # String
        attr_accessor :customer_account_status

        # String
        attr_accessor :customer_address_status

        # String
        attr_accessor :first_name

        # String
        attr_accessor :payer_id

        # String
        attr_accessor :surname

        def to_h
          hash = super
          add_to_hash(hash, 'accountId', @account_id)
          add_to_hash(hash, 'billingAgreementId', @billing_agreement_id)
          add_to_hash(hash, 'companyName', @company_name)
          add_to_hash(hash, 'countryCode', @country_code)
          add_to_hash(hash, 'customerAccountStatus', @customer_account_status)
          add_to_hash(hash, 'customerAddressStatus', @customer_address_status)
          add_to_hash(hash, 'firstName', @first_name)
          add_to_hash(hash, 'payerId', @payer_id)
          add_to_hash(hash, 'surname', @surname)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('accountId')
            @account_id = hash['accountId']
          end
          if hash.has_key?('billingAgreementId')
            @billing_agreement_id = hash['billingAgreementId']
          end
          if hash.has_key?('companyName')
            @company_name = hash['companyName']
          end
          if hash.has_key?('countryCode')
            @country_code = hash['countryCode']
          end
          if hash.has_key?('customerAccountStatus')
            @customer_account_status = hash['customerAccountStatus']
          end
          if hash.has_key?('customerAddressStatus')
            @customer_address_status = hash['customerAddressStatus']
          end
          if hash.has_key?('firstName')
            @first_name = hash['firstName']
          end
          if hash.has_key?('payerId')
            @payer_id = hash['payerId']
          end
          if hash.has_key?('surname')
            @surname = hash['surname']
          end
        end
      end
    end
  end
end
