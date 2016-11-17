#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Payment

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_ThreeDSecureResults ThreeDSecureResults}
      class ThreeDSecureResults < Ingenico::Connect::SDK::DataObject

        # String
        attr_accessor :cavv

        # String
        attr_accessor :eci

        # String
        attr_accessor :xid

        def to_h
          hash = super
          add_to_hash(hash, 'cavv', @cavv)
          add_to_hash(hash, 'eci', @eci)
          add_to_hash(hash, 'xid', @xid)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('cavv')
            @cavv = hash['cavv']
          end
          if hash.has_key?('eci')
            @eci = hash['eci']
          end
          if hash.has_key?('xid')
            @xid = hash['xid']
          end
        end
      end
    end
  end
end
