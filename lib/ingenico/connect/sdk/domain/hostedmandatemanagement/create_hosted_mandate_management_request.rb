#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/hosted_mandate_info'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/hosted_mandate_management_specific_input'

module Ingenico::Connect::SDK
  module Domain
    module Hostedmandatemanagement

      class CreateHostedMandateManagementRequest < Ingenico::Connect::SDK::DataObject

        # {Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateInfo}
        attr_accessor :create_mandate_info

        # {Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateManagementSpecificInput}
        attr_accessor :hosted_mandate_management_specific_input

        def to_h
          hash = super
          add_to_hash(hash, 'createMandateInfo', @create_mandate_info)
          add_to_hash(hash, 'hostedMandateManagementSpecificInput', @hosted_mandate_management_specific_input)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('createMandateInfo')
            if !(hash['createMandateInfo'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['createMandateInfo']]
            end
            @create_mandate_info = Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateInfo.new_from_hash(hash['createMandateInfo'])
          end
          if hash.has_key?('hostedMandateManagementSpecificInput')
            if !(hash['hostedMandateManagementSpecificInput'].is_a? Hash)
              raise TypeError, "value '%s' is not a Hash" % [hash['hostedMandateManagementSpecificInput']]
            end
            @hosted_mandate_management_specific_input = Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateManagementSpecificInput.new_from_hash(hash['hostedMandateManagementSpecificInput'])
          end
        end
      end
    end
  end
end
