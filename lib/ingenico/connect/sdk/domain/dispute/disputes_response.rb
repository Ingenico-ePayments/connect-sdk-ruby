#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/dispute/dispute'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Dispute
          # @attr [Array<Ingenico::Connect::SDK::Domain::Dispute::Dispute>] disputes
          class DisputesResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :disputes

            # @return (Hash)
            def to_h
              hash = super
              hash['disputes'] = @disputes.collect{|val| val.to_h} unless @disputes.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'disputes'
                raise TypeError, "value '%s' is not an Array" % [hash['disputes']] unless hash['disputes'].is_a? Array
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
  end
end
