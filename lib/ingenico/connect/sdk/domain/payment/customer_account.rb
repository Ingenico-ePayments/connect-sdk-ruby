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

      # @attr [Ingenico::Connect::SDK::Domain::Payment::CustomerAccountAuthentication] authentication
      # @attr [String] change_date
      # @attr [true/false] changed_during_checkout
      # @attr [String] create_date
      # @attr [true/false] had_suspicious_activity
      # @attr [true/false] has_forgotten_password
      # @attr [true/false] has_password
      # @attr [String] password_change_date
      # @attr [true/false] password_changed_during_checkout
      # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentAccountOnFile] payment_account_on_file
      # @attr [String] payment_account_on_file_type
      # @attr [Ingenico::Connect::SDK::Domain::Payment::CustomerPaymentActivity] payment_activity
      class CustomerAccount < Ingenico::Connect::SDK::DataObject

        attr_accessor :authentication

        attr_accessor :change_date

        attr_accessor :changed_during_checkout

        attr_accessor :create_date

        attr_accessor :had_suspicious_activity

        attr_accessor :has_forgotten_password

        attr_accessor :has_password

        attr_accessor :password_change_date

        attr_accessor :password_changed_during_checkout

        attr_accessor :payment_account_on_file

        attr_accessor :payment_account_on_file_type

        attr_accessor :payment_activity

        # @return (Hash)
        def to_h
          hash = super
          hash['authentication'] = @authentication.to_h unless @authentication.nil?
          hash['changeDate'] = @change_date unless @change_date.nil?
          hash['changedDuringCheckout'] = @changed_during_checkout unless @changed_during_checkout.nil?
          hash['createDate'] = @create_date unless @create_date.nil?
          hash['hadSuspiciousActivity'] = @had_suspicious_activity unless @had_suspicious_activity.nil?
          hash['hasForgottenPassword'] = @has_forgotten_password unless @has_forgotten_password.nil?
          hash['hasPassword'] = @has_password unless @has_password.nil?
          hash['passwordChangeDate'] = @password_change_date unless @password_change_date.nil?
          hash['passwordChangedDuringCheckout'] = @password_changed_during_checkout unless @password_changed_during_checkout.nil?
          hash['paymentAccountOnFile'] = @payment_account_on_file.to_h unless @payment_account_on_file.nil?
          hash['paymentAccountOnFileType'] = @payment_account_on_file_type unless @payment_account_on_file_type.nil?
          hash['paymentActivity'] = @payment_activity.to_h unless @payment_activity.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'authentication'
            raise TypeError, "value '%s' is not a Hash" % [hash['authentication']] unless hash['authentication'].is_a? Hash
            @authentication = Ingenico::Connect::SDK::Domain::Payment::CustomerAccountAuthentication.new_from_hash(hash['authentication'])
          end
          if hash.has_key? 'changeDate'
            @change_date = hash['changeDate']
          end
          if hash.has_key? 'changedDuringCheckout'
            @changed_during_checkout = hash['changedDuringCheckout']
          end
          if hash.has_key? 'createDate'
            @create_date = hash['createDate']
          end
          if hash.has_key? 'hadSuspiciousActivity'
            @had_suspicious_activity = hash['hadSuspiciousActivity']
          end
          if hash.has_key? 'hasForgottenPassword'
            @has_forgotten_password = hash['hasForgottenPassword']
          end
          if hash.has_key? 'hasPassword'
            @has_password = hash['hasPassword']
          end
          if hash.has_key? 'passwordChangeDate'
            @password_change_date = hash['passwordChangeDate']
          end
          if hash.has_key? 'passwordChangedDuringCheckout'
            @password_changed_during_checkout = hash['passwordChangedDuringCheckout']
          end
          if hash.has_key? 'paymentAccountOnFile'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentAccountOnFile']] unless hash['paymentAccountOnFile'].is_a? Hash
            @payment_account_on_file = Ingenico::Connect::SDK::Domain::Payment::PaymentAccountOnFile.new_from_hash(hash['paymentAccountOnFile'])
          end
          if hash.has_key? 'paymentAccountOnFileType'
            @payment_account_on_file_type = hash['paymentAccountOnFileType']
          end
          if hash.has_key? 'paymentActivity'
            raise TypeError, "value '%s' is not a Hash" % [hash['paymentActivity']] unless hash['paymentActivity'].is_a? Hash
            @payment_activity = Ingenico::Connect::SDK::Domain::Payment::CustomerPaymentActivity.new_from_hash(hash['paymentActivity'])
          end
        end
      end
    end
  end
end
