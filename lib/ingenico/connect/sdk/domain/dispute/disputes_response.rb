#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/dispute/dispute'

module Ingenico::Connect::SDK
  module Domain
    module Dispute

      class DisputesResponse < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Dispute::Dispute}
        attr_accessor :disputes

        def to_h
          hash = super
          add_to_hash(hash, 'disputes', @disputes)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('disputes')
            if !(hash['disputes'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['disputes']]
            end
            @disputes = []
            hash['disputes'].each do |e|
              @disputes << Ingenico::Connect::SDK::Domain::Dispute::Dispute.new_from_hash(e)
            end
          end
        end
      end
    end
  end
end
