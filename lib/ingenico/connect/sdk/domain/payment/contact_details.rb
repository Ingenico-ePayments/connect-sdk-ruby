#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/domain/definitions/contact_details_base'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      class ContactDetails < Ingenico::Connect::SDK::Domain::Definitions::ContactDetailsBase

        # String
        attr_accessor :fax_number

        # String
        attr_accessor :mobile_phone_number

        # String
        attr_accessor :phone_number

        # String
        attr_accessor :work_phone_number

        def to_h
          hash = super
          add_to_hash(hash, 'faxNumber', @fax_number)
          add_to_hash(hash, 'mobilePhoneNumber', @mobile_phone_number)
          add_to_hash(hash, 'phoneNumber', @phone_number)
          add_to_hash(hash, 'workPhoneNumber', @work_phone_number)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('faxNumber')
            @fax_number = hash['faxNumber']
          end
          if hash.has_key?('mobilePhoneNumber')
            @mobile_phone_number = hash['mobilePhoneNumber']
          end
          if hash.has_key?('phoneNumber')
            @phone_number = hash['phoneNumber']
          end
          if hash.has_key?('workPhoneNumber')
            @work_phone_number = hash['workPhoneNumber']
          end
        end
      end
    end
  end
end
