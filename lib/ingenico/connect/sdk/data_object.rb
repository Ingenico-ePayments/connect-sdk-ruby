require 'json'

module Ingenico
  module Connect
    module SDK
      # Base class for all SDK data objects, supports marshalling and unmarshalling the data object to and from JSON.
      class DataObject

        # Returns a hash representation of the DataObject.
        # The hash contains camelCase representations of the variables, and their values.
        # Should be overridden to add all instance variables of the object.
        #
        # @return [Hash]
        def to_h
          {}
        end

        # Create a new instance of this object (DataObject or descendant)
        # from a hash containing attribute values in camelCase.
        # Note that the hash contains Strings as keys instead of more commonly used tokens.
        def self.new_from_hash(hash)
          obj = self.new
          obj.from_hash(hash)
          obj
        end

        # Set attributes from values in parameter hash.
        # Should be overridden by descendants in order to properly restore their attributes from the hash.
        # Note that the hash contains Strings as keys instead of more commonly used tokens.
        def from_hash(hash) end
      end
    end
  end
end
