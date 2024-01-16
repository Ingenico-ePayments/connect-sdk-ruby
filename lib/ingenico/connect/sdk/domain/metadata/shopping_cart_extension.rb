require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Metadata
          # Represents metadata part of shopping carts.
          class ShoppingCartExtension < Ingenico::Connect::SDK::DataObject
            def initialize(creator, name, version, extension_id=nil)
              raise ArgumentError.new if creator.nil? or creator.strip.empty?
              raise ArgumentError.new if name.nil? or name.strip.empty?
              raise ArgumentError.new if version.nil? or version.to_s.strip.empty?

              @creator = creator
              @name = name
              @version = version.to_s
              @extension_id = extension_id
            end

            # Constructs a new ShoppingCartExtension from parameter hash
            # the hash should contain a _creator_, _name_, _version_ and _extensionId_
            #--
            # Overridden so ShoppingCartExtension can retain mandatory default arguments
            #++
            def self.new_from_hash(hash)
              creator = hash['creator'] if hash.has_key?('creator')
              name = hash['name'] if hash.has_key?('name')
              version = hash['version'] if hash.has_key?('version')
              extension_id = hash['extensionId'] if hash.has_key?('extensionId')
              self.new(creator, name, version, extension_id)
            end

            # Converts the shopping cart metadata to a hash
            def to_h
              hash = super
              hash['creator'] = @creator unless @creator.nil?
              hash['name'] = @name unless @name.nil?
              hash['version'] = @version unless @version.nil?
              hash['extensionId'] = @extension_id unless @extension_id.nil?
              hash
            end

            # loads shopping cart metadata from a parameter hash
            def from_hash(hash)
              super
              @creator = hash['creator'] if hash.has_key? 'creator'
              @name = hash['name'] if hash.has_key? 'name'
              @version = hash['version'] if hash.has_key? 'version'
              @extension_id = hash['extensionId'] if hash.has_key? 'extensionId'
            end

            attr_reader :creator, :name, :version, :extension_id
          end
        end
      end
    end
  end
end
