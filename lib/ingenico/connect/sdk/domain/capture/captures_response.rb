#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/capture/capture'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Capture
          # @attr [Array<Ingenico::Connect::SDK::Domain::Capture::Capture>] captures
          class CapturesResponse < Ingenico::Connect::SDK::DataObject

            attr_accessor :captures

            # @return (Hash)
            def to_h
              hash = super
              hash['captures'] = @captures.collect{|val| val.to_h} unless @captures.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'captures'
                raise TypeError, "value '%s' is not an Array" % [hash['captures']] unless hash['captures'].is_a? Array
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
  end
end
