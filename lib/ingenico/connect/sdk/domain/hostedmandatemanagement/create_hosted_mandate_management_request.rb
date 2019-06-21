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

      # @attr [Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateInfo] create_mandate_info
      # @attr [Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateManagementSpecificInput] hosted_mandate_management_specific_input
      class CreateHostedMandateManagementRequest < Ingenico::Connect::SDK::DataObject

        attr_accessor :create_mandate_info

        attr_accessor :hosted_mandate_management_specific_input

        # @return (Hash)
        def to_h
          hash = super
          hash['createMandateInfo'] = @create_mandate_info.to_h unless @create_mandate_info.nil?
          hash['hostedMandateManagementSpecificInput'] = @hosted_mandate_management_specific_input.to_h unless @hosted_mandate_management_specific_input.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'createMandateInfo'
            raise TypeError, "value '%s' is not a Hash" % [hash['createMandateInfo']] unless hash['createMandateInfo'].is_a? Hash
            @create_mandate_info = Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateInfo.new_from_hash(hash['createMandateInfo'])
          end
          if hash.has_key? 'hostedMandateManagementSpecificInput'
            raise TypeError, "value '%s' is not a Hash" % [hash['hostedMandateManagementSpecificInput']] unless hash['hostedMandateManagementSpecificInput'].is_a? Hash
            @hosted_mandate_management_specific_input = Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::HostedMandateManagementSpecificInput.new_from_hash(hash['hostedMandateManagementSpecificInput'])
          end
        end
      end
    end
  end
end
