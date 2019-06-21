#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK
  module Domain
    module Product

      # @attr [String] image
      # @attr [String] label
      class PaymentProductFieldTooltip < Ingenico::Connect::SDK::DataObject

        attr_accessor :image

        attr_accessor :label

        # @return (Hash)
        def to_h
          hash = super
          hash['image'] = @image unless @image.nil?
          hash['label'] = @label unless @label.nil?
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key? 'image'
            @image = hash['image']
          end
          if hash.has_key? 'label'
            @label = hash['label']
          end
        end
      end
    end
  end
end
