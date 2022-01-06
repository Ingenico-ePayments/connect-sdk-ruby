require 'ingenico/connect/sdk/domain/metadata/shopping_cart_extension'
require 'base64'

module Ingenico::Connect::SDK

  # Manages metadata about the server using the SDK
  #
  # @attr_reader [Array<Ingenico::Connect::SDK::RequestHeader>] meta_data_headers List of headers that should be used in all requests.
  class MetaDataProvider
    @@SDK_VERSION = '2.28.0'
    @@SERVER_META_INFO_HEADER = 'X-GCS-ServerMetaInfo'
    @@PROHIBITED_HEADERS = [@@SERVER_META_INFO_HEADER, 'X-GCS-Idempotence-Key',
                            'Date', 'Content-Type', 'Authorization'].sort!.freeze
    @@CHARSET = 'utf-8'

    # Stores metadata about the server so it can be sent to the Ingenico ePayments platform
    class ServerMetaInfo < DataObject
      @platform_identifier = nil
      @sdk_identifier = nil
      @sdk_creator = nil
      @integrator = nil
      @shopping_cart_extension = nil

      # String containing system information (Operating system and Ruby version).
      attr_accessor :platform_identifier

      # String containing this SDK version.
      attr_accessor :sdk_identifier

      attr_accessor :sdk_creator

      attr_accessor :integrator

      attr_accessor :shopping_cart_extension

      # Returns the values of all attributes as a hash.
      def to_h
        hash = super
        hash['platformIdentifier'] = @platform_identifier unless @platform_identifier.nil?
        hash['sdkIdentifier'] = @sdk_identifier unless @sdk_identifier.nil?
        hash['sdkCreator'] = @sdk_creator unless @sdk_creator.nil?
        hash['integrator'] = @integrator unless @integrator.nil?
        hash['shoppingCartExtension'] = @shopping_cart_extension.to_h unless @shopping_cart_extension.nil?
        hash
      end

      # Initializes the ServerMetaInfo object with properties stored in the parameter hash
      def from_hash(hash)
        super
        @platform_identifier = hash['platformIdentifier'] if hash.has_key? 'platformIdentifier'
        @sdk_identifier = hash['sdkIdentifier'] if hash.has_key? 'sdkIdentifier'
        @sdk_creator = hash['sdkCreator'] if hash.has_key? 'sdkCreator'
        @integrator = hash['integrator'] if hash.has_key? 'integrator'
        @shopping_cart_extension = Domain::Metadata::ShoppingCartExtension.new_from_hash(hash['shoppingCartExtension']) if hash.has_key? 'shoppingCartExtension'
      end
    end

    # Create a new MetaDataProvider instance that can be used to access platform-related information
    #
    # @param integrator                 [String] Name of the integrator
    # @param shopping_cart_extension    [Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension] shopping cart-related metadata.
    # @param additional_request_headers [Array<Ingenico::Connect::SDK::RequestHeader>] list of additional headers to include in all requests made.
    #                                   The following headers are not allowed due to conflicts with already added headers:
    #                                   'X-GCS-Idempotence-Key', 'Date', 'Content-Type', 'Authorization' and 'X-GCS-ServerMetaInfo'
    def initialize(integrator, shopping_cart_extension: nil, additional_request_headers: [].freeze)

      MetaDataProvider.validate_additional_request_headers(additional_request_headers)
      server_meta_info = ServerMetaInfo.new
      server_meta_info.platform_identifier = get_platform_identifier
      server_meta_info.sdk_identifier = get_sdk_identifier
      server_meta_info.sdk_creator = 'Ingenico'
      server_meta_info.integrator = integrator
      server_meta_info.shopping_cart_extension = shopping_cart_extension unless shopping_cart_extension.nil?
      server_meta_info_string = DefaultImpl::DefaultMarshaller.INSTANCE.marshal(server_meta_info)
      server_meta_info_header = RequestHeader.new(
          @@SERVER_META_INFO_HEADER, Base64.strict_encode64(
          server_meta_info_string.force_encoding('iso-8859-1').encode(@@CHARSET)))
      if additional_request_headers.nil? || additional_request_headers.empty?
        @meta_data_headers = [server_meta_info_header].freeze
      else
        request_headers = [server_meta_info_header]
        request_headers += additional_request_headers
        @meta_data_headers = request_headers.freeze
      end
    end

    # Checks that none of the {Ingenico::Connect::SDK::RequestHeaders} in _additional_request_headers_ is equal to any of the forbidden headers.
    # The forbidden headers are:
    #'X-GCS-Idempotence-Key', 'Date', 'Content-Type', 'Authorization' and 'X-GCS-ServerMetaInfo'
    # If a header is found that is equal to one of the forbidden headers an ArgumentError is raised.
    def self.validate_additional_request_headers(additional_request_headers)
      unless additional_request_headers.nil?
        additional_request_headers.each { |additional_request_header|
          validate_additional_request_header(additional_request_header)
        }
      end
    end

    # Checks that the {Ingenico::Connect::SDK::RequestHeaders} _additional_request_header_ is equal to any of the forbidden headers.
    # The forbidden headers are:
    #'X-GCS-Idempotence-Key', 'Date', 'Content-Type', 'Authorization' and 'X-GCS-ServerMetaInfo'
    # If the header is equal to one of the forbidden headers an ArgumentError is raised.
    def self.validate_additional_request_header(additional_request_header)
      if MetaDataProvider.PROHIBITED_HEADERS.include? additional_request_header.name
        raise ArgumentError.new('request header not allowed' + additional_request_header.name)
      end
    end

    protected

    # String containing information of the system using the SDK.
    # It contains data like Operating System version and Ruby version
    def get_platform_identifier
      config = RbConfig::CONFIG['host_os']
      if config.include? 'mingw'
        s = 'Windows'
      elsif config.include? 'linux'
        s = 'Linux'
      else
        s = 'Mac OS X'
      end
      s += '/' + RUBY_DESCRIPTION
      s
    end

    # String describing the version of the SDK being used
    def get_sdk_identifier
      'RubyServerSDK/v' + @@SDK_VERSION
    end

    public

    # Version of this SDK being used
    def self.SDK_VERSION
      @@SDK_VERSION
    end

    # A {Ingenico::Connect::SDK::RequestHeader} that contains serialized and encoded {Ingenico::Connect::SDK::MetaDataProvider::ServerMetaInfo}.
    def self.SERVER_META_INFO_HEADER
      @@SERVER_META_INFO_HEADER
    end

    # A list of header names that should not be used by any added headers.
    # These headers are reserved for specific purposes.
    def self.PROHIBITED_HEADERS
      @@PROHIBITED_HEADERS
    end

    attr_reader :meta_data_headers
  end
end
