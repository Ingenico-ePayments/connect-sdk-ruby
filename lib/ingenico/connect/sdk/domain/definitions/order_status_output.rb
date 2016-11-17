#
# This class was auto-generated from the API references found at
# https://developer.globalcollect.com/documentation/api/server/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/errors/api_error'

module Ingenico::Connect::SDK
  module Domain
    module Definitions

      # Class {https://developer.globalcollect.com/documentation/api/server/#schema_OrderStatusOutput OrderStatusOutput}
      class OrderStatusOutput < Ingenico::Connect::SDK::DataObject

        # Array of {Ingenico::Connect::SDK::Domain::Errors::APIError}
        attr_accessor :errors

        # true/false
        attr_accessor :is_cancellable

        # String
        attr_accessor :status_category

        # Integer
        attr_accessor :status_code

        # String
        attr_accessor :status_code_change_date_time

        def to_h
          hash = super
          add_to_hash(hash, 'errors', @errors)
          add_to_hash(hash, 'isCancellable', @is_cancellable)
          add_to_hash(hash, 'statusCategory', @status_category)
          add_to_hash(hash, 'statusCode', @status_code)
          add_to_hash(hash, 'statusCodeChangeDateTime', @status_code_change_date_time)
          hash
        end

        def from_hash(hash)
          super
          if hash.has_key?('errors')
            if !(hash['errors'].is_a? Array)
              raise TypeError, "value '%s' is not an Array" % [hash['errors']]
            end
            @errors = []
            hash['errors'].each do |e|
              @errors << Ingenico::Connect::SDK::Domain::Errors::APIError.new_from_hash(e)
            end
          end
          if hash.has_key?('isCancellable')
            @is_cancellable = hash['isCancellable']
          end
          if hash.has_key?('statusCategory')
            @status_category = hash['statusCategory']
          end
          if hash.has_key?('statusCode')
            @status_code = hash['statusCode']
          end
          if hash.has_key?('statusCodeChangeDateTime')
            @status_code_change_date_time = hash['statusCodeChangeDateTime']
          end
        end
      end
    end
  end
end
