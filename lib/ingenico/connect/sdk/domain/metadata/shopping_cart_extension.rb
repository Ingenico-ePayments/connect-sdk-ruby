require 'ingenico/connect/sdk/data_object'

module Ingenico::Connect::SDK::Domain::Metadata

  # Represents metadata part of shopping carts.
  class ShoppingCartExtension < Ingenico::Connect::SDK::DataObject
    def initialize(creator, name, version)
      raise ArgumentError.new if creator.nil? or creator.strip.empty?
      raise ArgumentError.new if name.nil? or name.strip.empty?
      raise ArgumentError.new if version.nil? or version.to_s.strip.empty?

      @creator = creator
      @name = name
      @version = version.to_s
    end

    # Constructs a new ShoppingCartExtension from parameter hash
    # the hash should contain a _creator_, _name_ and _version_
    #--
    # Overridden so ShoppingCartExtension can retain mandatory default arguments
    #++
    def self.new_from_hash(hash)
      creator = hash['creator'] if hash.has_key?('creator')
      name = hash['name'] if hash.has_key?('name')
      version = hash['version'] if hash.has_key?('version')
      self.new(creator, name, version)
    end

    # Converts the shopping cart metadata to a hash
    def to_h
      hash = super
      add_to_hash(hash, 'creator', @creator)
      add_to_hash(hash, 'name', @name)
      add_to_hash(hash, 'version', @version)
      hash
    end

    # loads shopping cart metadata from a parameter hash
    def from_hash(hash)
      super
      @creator = hash['creator'] if hash.has_key?('creator')
      @name = hash['name'] if hash.has_key?('name')
      @version = hash['version'] if hash.has_key?('version')
    end

    attr_reader :creator, :name, :version
  end
end
