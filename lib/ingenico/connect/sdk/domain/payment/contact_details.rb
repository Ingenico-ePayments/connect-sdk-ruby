#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Payment
          # @attr [String] fax_number
          # @attr [String] mobile_phone_number
          # @attr [String] phone_number
          # @attr [String] work_phone_number
          class ContactDetails < Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase

            attr_accessor :fax_number

            attr_accessor :mobile_phone_number

            attr_accessor :phone_number

            attr_accessor :work_phone_number

            # @return (Hash)
            def to_h
              hash = super
              hash['faxNumber'] = @fax_number unless @fax_number.nil?
              hash['mobilePhoneNumber'] = @mobile_phone_number unless @mobile_phone_number.nil?
              hash['phoneNumber'] = @phone_number unless @phone_number.nil?
              hash['workPhoneNumber'] = @work_phone_number unless @work_phone_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'faxNumber'
                @fax_number = hash['faxNumber']
              end
              if hash.has_key? 'mobilePhoneNumber'
                @mobile_phone_number = hash['mobilePhoneNumber']
              end
              if hash.has_key? 'phoneNumber'
                @phone_number = hash['phoneNumber']
              end
              if hash.has_key? 'workPhoneNumber'
                @work_phone_number = hash['workPhoneNumber']
              end
            end
          end
        end
      end
    end
  end
end
