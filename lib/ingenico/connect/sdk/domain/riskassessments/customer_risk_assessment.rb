#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/payment/address_personal'
require 'ingenico/connect/sdk/domain/riskassessments/personal_information_risk_assessment'

module Ingenico::Connect::SDK
  module Domain
    module Riskassessments

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_CustomerRiskAssessment CustomerRiskAssessment}
      class CustomerRiskAssessment < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Definitions::Address}
        attr_accessor :billing_address

        # String
        attr_accessor :locale

        # {Ingenico::Connect::SDK::Domain::Riskassessments::PersonalInformationRiskAssessment}
        attr_accessor :personal_information

        # {Ingenico::Connect::SDK::Domain::Payment::AddressPersonal}
        attr_accessor :shipping_address

        def to_h
          hash = super
          add_to_hash(hash, 'billingAddress', @billing_address)
          add_to_hash(hash, 'locale', @locale)
          add_to_hash(hash, 'personalInformation', @personal_information)
          add_to_hash(hash, 'shippingAddress', @shipping_address)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('billingAddress')
            if !(hash['billingAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']]
            end
            @billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new_from_hash(hash['billingAddress'])
          end
          if hash.has_key?('locale')
            @locale = hash['locale']
          end
          if hash.has_key?('personalInformation')
            if !(hash['personalInformation'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']]
            end
            @personal_information = Ingenico::Connect::SDK::Domain::Riskassessments::PersonalInformationRiskAssessment.new_from_hash(hash['personalInformation'])
          end
          if hash.has_key?('shippingAddress')
            if !(hash['shippingAddress'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['shippingAddress']]
            end
            @shipping_address = Ingenico::Connect::SDK::Domain::Payment::AddressPersonal.new_from_hash(hash['shippingAddress'])
          end
        end
      end
    end
  end
end
