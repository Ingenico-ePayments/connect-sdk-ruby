#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/payment/customer_account_authentication'
require 'ingenico/connect/sdk/domain/payment/customer_payment_activity'
require 'ingenico/connect/sdk/domain/payment/payment_account_on_file'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class CustomerAccount < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Payment::CustomerAccountAuthentication}
        attr_accessor :authentication

        # String
        attr_accessor :change_date

        # true/false
        attr_accessor :changed_during_checkout

        # String
        attr_accessor :create_date

        # true/false
        attr_accessor :had_suspicious_activity

        # true/false
        attr_accessor :has_forgotten_password

        # true/false
        attr_accessor :has_password

        # String
        attr_accessor :password_change_date

        # true/false
        attr_accessor :password_changed_during_checkout

        # {Ingenico::Connect::SDK::Domain::Payment::PaymentAccountOnFile}
        attr_accessor :payment_account_on_file

        # String
        attr_accessor :payment_account_on_file_type

        # {Ingenico::Connect::SDK::Domain::Payment::CustomerPaymentActivity}
        attr_accessor :payment_activity

        def to_h
          hash = super
          add_to_hash(hash, 'authentication', @authentication)
          add_to_hash(hash, 'changeDate', @change_date)
          add_to_hash(hash, 'changedDuringCheckout', @changed_during_checkout)
          add_to_hash(hash, 'createDate', @create_date)
          add_to_hash(hash, 'hadSuspiciousActivity', @had_suspicious_activity)
          add_to_hash(hash, 'hasForgottenPassword', @has_forgotten_password)
          add_to_hash(hash, 'hasPassword', @has_password)
          add_to_hash(hash, 'passwordChangeDate', @password_change_date)
          add_to_hash(hash, 'passwordChangedDuringCheckout', @password_changed_during_checkout)
          add_to_hash(hash, 'paymentAccountOnFile', @payment_account_on_file)
          add_to_hash(hash, 'paymentAccountOnFileType', @payment_account_on_file_type)
          add_to_hash(hash, 'paymentActivity', @payment_activity)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('authentication')
            if !(hash['authentication'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['authentication']]
            end
            @authentication = Ingenico::Connect::SDK::Domain::Payment::CustomerAccountAuthentication.new_from_hash(hash['authentication'])
          end
          if hash.has_key?('changeDate')
            @change_date = hash['changeDate']
          end
          if hash.has_key?('changedDuringCheckout')
            @changed_during_checkout = hash['changedDuringCheckout']
          end
          if hash.has_key?('createDate')
            @create_date = hash['createDate']
          end
          if hash.has_key?('hadSuspiciousActivity')
            @had_suspicious_activity = hash['hadSuspiciousActivity']
          end
          if hash.has_key?('hasForgottenPassword')
            @has_forgotten_password = hash['hasForgottenPassword']
          end
          if hash.has_key?('hasPassword')
            @has_password = hash['hasPassword']
          end
          if hash.has_key?('passwordChangeDate')
            @password_change_date = hash['passwordChangeDate']
          end
          if hash.has_key?('passwordChangedDuringCheckout')
            @password_changed_during_checkout = hash['passwordChangedDuringCheckout']
          end
          if hash.has_key?('paymentAccountOnFile')
            if !(hash['paymentAccountOnFile'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentAccountOnFile']]
            end
            @payment_account_on_file = Ingenico::Connect::SDK::Domain::Payment::PaymentAccountOnFile.new_from_hash(hash['paymentAccountOnFile'])
          end
          if hash.has_key?('paymentAccountOnFileType')
            @payment_account_on_file_type = hash['paymentAccountOnFileType']
          end
          if hash.has_key?('paymentActivity')
            if !(hash['paymentActivity'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['paymentActivity']]
            end
            @payment_activity = Ingenico::Connect::SDK::Domain::Payment::CustomerPaymentActivity.new_from_hash(hash['paymentActivity'])
          end
        end
      end
    end
  end
end
