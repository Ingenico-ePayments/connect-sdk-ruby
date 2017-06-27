#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/capture/capture'

module Ingenico::Connect::SDK
  module Domain
    module Capture

      class CapturesResponse < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Capture::Capture}
        attr_accessor :captures

        def to_h
          hash = super
          add_to_hash(hash, 'captures', @captures)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('captures')
            if !(hash['captures'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['captures']]
            end
            @captures = []
            hash['captures'].each do |e|
              @captures << Ingenico::Connect::SDK::Domain::Capture::Capture.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
