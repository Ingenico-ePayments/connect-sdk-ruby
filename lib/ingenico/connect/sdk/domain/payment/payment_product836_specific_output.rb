#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_PaymentProduct836SpecificOutput PaymentProduct836SpecificOutput}
      class PaymentProduct836SpecificOutput < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :security_indicator

        def to_h
          hash = super
          add_to_hash(hash, 'securityIndicator', @security_indicator)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('securityIndicator')
            @security_indicator = hash['securityIndicator']
          end
        end
      end
    end
  end
end
