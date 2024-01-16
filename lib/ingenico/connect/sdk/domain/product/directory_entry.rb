#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Product
          # @attr [Array<String>] country_names
          # @attr [String] issuer_id
          # @attr [String] issuer_list
          # @attr [String] issuer_name
          class DirectoryEntry < Ingenico::Connect::SDK::DataObject

            attr_accessor :country_names

            attr_accessor :issuer_id

            attr_accessor :issuer_list

            attr_accessor :issuer_name

            # @return (Hash)
            def to_h
              hash = super
              hash['countryNames'] = @country_names unless @country_names.nil?
              hash['issuerId'] = @issuer_id unless @issuer_id.nil?
              hash['issuerList'] = @issuer_list unless @issuer_list.nil?
              hash['issuerName'] = @issuer_name unless @issuer_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'countryNames'
                raise TypeError, "value '%s' is not an Array" % [hash['countryNames']] unless hash['countryNames'].is_a? Array
                @country_names = []
                hash['countryNames'].each do |e|
                  @country_names << e
                end
              end
              if hash.has_key? 'issuerId'
                @issuer_id = hash['issuerId']
              end
              if hash.has_key? 'issuerList'
                @issuer_list = hash['issuerList']
              end
              if hash.has_key? 'issuerName'
                @issuer_name = hash['issuerName']
              end
            end
          end
        end
      end
    end
  end
end
