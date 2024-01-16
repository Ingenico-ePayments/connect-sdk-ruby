#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [String] daily_room_rate
          # @attr [String] daily_room_rate_currency_code
          # @attr [String] daily_room_tax_amount
          # @attr [String] daily_room_tax_amount_currency_code
          # @attr [Integer] number_of_nights_at_room_rate
          # @attr [String] room_location
          # @attr [String] room_number
          # @attr [String] type_of_bed
          # @attr [String] type_of_room
          class LodgingRoom < Ingenico::Connect::SDK::DataObject

            attr_accessor :daily_room_rate

            attr_accessor :daily_room_rate_currency_code

            attr_accessor :daily_room_tax_amount

            attr_accessor :daily_room_tax_amount_currency_code

            attr_accessor :number_of_nights_at_room_rate

            attr_accessor :room_location

            attr_accessor :room_number

            attr_accessor :type_of_bed

            attr_accessor :type_of_room

            # @return (Hash)
            def to_h
              hash = super
              hash['dailyRoomRate'] = @daily_room_rate unless @daily_room_rate.nil?
              hash['dailyRoomRateCurrencyCode'] = @daily_room_rate_currency_code unless @daily_room_rate_currency_code.nil?
              hash['dailyRoomTaxAmount'] = @daily_room_tax_amount unless @daily_room_tax_amount.nil?
              hash['dailyRoomTaxAmountCurrencyCode'] = @daily_room_tax_amount_currency_code unless @daily_room_tax_amount_currency_code.nil?
              hash['numberOfNightsAtRoomRate'] = @number_of_nights_at_room_rate unless @number_of_nights_at_room_rate.nil?
              hash['roomLocation'] = @room_location unless @room_location.nil?
              hash['roomNumber'] = @room_number unless @room_number.nil?
              hash['typeOfBed'] = @type_of_bed unless @type_of_bed.nil?
              hash['typeOfRoom'] = @type_of_room unless @type_of_room.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dailyRoomRate'
                @daily_room_rate = hash['dailyRoomRate']
              end
              if hash.has_key? 'dailyRoomRateCurrencyCode'
                @daily_room_rate_currency_code = hash['dailyRoomRateCurrencyCode']
              end
              if hash.has_key? 'dailyRoomTaxAmount'
                @daily_room_tax_amount = hash['dailyRoomTaxAmount']
              end
              if hash.has_key? 'dailyRoomTaxAmountCurrencyCode'
                @daily_room_tax_amount_currency_code = hash['dailyRoomTaxAmountCurrencyCode']
              end
              if hash.has_key? 'numberOfNightsAtRoomRate'
                @number_of_nights_at_room_rate = hash['numberOfNightsAtRoomRate']
              end
              if hash.has_key? 'roomLocation'
                @room_location = hash['roomLocation']
              end
              if hash.has_key? 'roomNumber'
                @room_number = hash['roomNumber']
              end
              if hash.has_key? 'typeOfBed'
                @type_of_bed = hash['typeOfBed']
              end
              if hash.has_key? 'typeOfRoom'
                @type_of_room = hash['typeOfRoom']
              end
            end
          end
        end
      end
    end
  end
end
