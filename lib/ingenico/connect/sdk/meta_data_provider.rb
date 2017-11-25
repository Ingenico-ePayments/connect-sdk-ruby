require 'ingenico/connect/sdk/domain/metadata/shopping_cart_extension'
require 'base64'

module Ingenico::Connect::SDK

  # Manages metadata about the server using the SDK
  class MetaDataProvider
    @@SDK_VERSION = '1.14.0'
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
        add_to_hash(hash, 'platformIdentifier', platform_identifier)
        add_to_hash(hash, 'sdkIdentifier', sdk_identifier)
        add_to_hash(hash, 'sdkCreator', sdk_creator)
        add_to_hash(hash, 'integrator', integrator)
        add_to_hash(hash, 'shoppingCartExtension', shopping_cart_extension)
        hash
      end

      # Initializes the ServerMetaInfo object with properties stored in the parameter hash
      def from_hash(hash)
        super
        @platform_identifier = hash['platformIdentifier'] if hash.has_key?('platformIdentifier')
        @sdk_identifier = hash['sdkIdentifier'] if hash.has_key?('sdkIdentifier')
        @sdk_creator = hash['sdkCreator'] if hash.has_key?('sdkCreator')
        @integrator = hash['integrator'] if hash.has_key?('integrator')
        if hash.has_key?('shoppingCartExtension')
          @shopping_cart_extension = Domain::Metadata::ShoppingCartExtension.new_from_hash(hash['shoppingCartExtension'])
        end
      end
    end

    # Create a new MetaDataProvider instance that can be used to access platform-related information
    #
    # integrator::                  String
    # shopping_cart_extension::     String
    # additional_request_headers::  {Ingenico::Connect::SDK::RequestHeader} list of additional headers to include in all requests made.
    #                               The following headers are not allowed due to conflicts with already added headers:
    #                               'X-GCS-Idempotence-Key', 'Date', 'Content-Type', 'Authorization'
    #                               and 'X-GCS-ServerMetaInfo'
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

    # A {Ingenico::Connect::SDK::RequestHeader} list of headers that should be used in all requests.
    attr_reader :meta_data_headers
  end
end
