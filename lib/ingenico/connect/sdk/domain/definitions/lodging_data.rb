#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/data_object'
require 'ingenico/connect/sdk/domain/definitions/lodging_charge'
require 'ingenico/connect/sdk/domain/definitions/lodging_room'

module Ingenico
  module Connect
    module SDK
      module Domain
        module Definitions
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::LodgingCharge>] charges
          # @attr [String] check_in_date
          # @attr [String] check_out_date
          # @attr [String] folio_number
          # @attr [true/false] is_confirmed_reservation
          # @attr [true/false] is_facility_fire_safety_conform
          # @attr [true/false] is_no_show
          # @attr [true/false] is_preference_smoking_room
          # @attr [Integer] number_of_adults
          # @attr [Integer] number_of_nights
          # @attr [Integer] number_of_rooms
          # @attr [String] program_code
          # @attr [String] property_customer_service_phone_number
          # @attr [String] property_phone_number
          # @attr [String] renter_name
          # @attr [Array<Ingenico::Connect::SDK::Domain::Definitions::LodgingRoom>] rooms
          class LodgingData < Ingenico::Connect::SDK::DataObject

            attr_accessor :charges

            attr_accessor :check_in_date

            attr_accessor :check_out_date

            attr_accessor :folio_number

            attr_accessor :is_confirmed_reservation

            attr_accessor :is_facility_fire_safety_conform

            attr_accessor :is_no_show

            attr_accessor :is_preference_smoking_room

            attr_accessor :number_of_adults

            attr_accessor :number_of_nights

            attr_accessor :number_of_rooms

            attr_accessor :program_code

            attr_accessor :property_customer_service_phone_number

            attr_accessor :property_phone_number

            attr_accessor :renter_name

            attr_accessor :rooms

            # @return (Hash)
            def to_h
              hash = super
              hash['charges'] = @charges.collect{|val| val.to_h} unless @charges.nil?
              hash['checkInDate'] = @check_in_date unless @check_in_date.nil?
              hash['checkOutDate'] = @check_out_date unless @check_out_date.nil?
              hash['folioNumber'] = @folio_number unless @folio_number.nil?
              hash['isConfirmedReservation'] = @is_confirmed_reservation unless @is_confirmed_reservation.nil?
              hash['isFacilityFireSafetyConform'] = @is_facility_fire_safety_conform unless @is_facility_fire_safety_conform.nil?
              hash['isNoShow'] = @is_no_show unless @is_no_show.nil?
              hash['isPreferenceSmokingRoom'] = @is_preference_smoking_room unless @is_preference_smoking_room.nil?
              hash['numberOfAdults'] = @number_of_adults unless @number_of_adults.nil?
              hash['numberOfNights'] = @number_of_nights unless @number_of_nights.nil?
              hash['numberOfRooms'] = @number_of_rooms unless @number_of_rooms.nil?
              hash['programCode'] = @program_code unless @program_code.nil?
              hash['propertyCustomerServicePhoneNumber'] = @property_customer_service_phone_number unless @property_customer_service_phone_number.nil?
              hash['propertyPhoneNumber'] = @property_phone_number unless @property_phone_number.nil?
              hash['renterName'] = @renter_name unless @renter_name.nil?
              hash['rooms'] = @rooms.collect{|val| val.to_h} unless @rooms.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'charges'
                raise TypeError, "value '%s' is not an Array" % [hash['charges']] unless hash['charges'].is_a? Array
                @charges = []
                hash['charges'].each do |e|
                  @charges << Ingenico::Connect::SDK::Domain::Definitions::LodgingCharge.new_from_hash(e)
                end
              end
              if hash.has_key? 'checkInDate'
                @check_in_date = hash['checkInDate']
              end
              if hash.has_key? 'checkOutDate'
                @check_out_date = hash['checkOutDate']
              end
              if hash.has_key? 'folioNumber'
                @folio_number = hash['folioNumber']
              end
              if hash.has_key? 'isConfirmedReservation'
                @is_confirmed_reservation = hash['isConfirmedReservation']
              end
              if hash.has_key? 'isFacilityFireSafetyConform'
                @is_facility_fire_safety_conform = hash['isFacilityFireSafetyConform']
              end
              if hash.has_key? 'isNoShow'
                @is_no_show = hash['isNoShow']
              end
              if hash.has_key? 'isPreferenceSmokingRoom'
                @is_preference_smoking_room = hash['isPreferenceSmokingRoom']
              end
              if hash.has_key? 'numberOfAdults'
                @number_of_adults = hash['numberOfAdults']
              end
              if hash.has_key? 'numberOfNights'
                @number_of_nights = hash['numberOfNights']
              end
              if hash.has_key? 'numberOfRooms'
                @number_of_rooms = hash['numberOfRooms']
              end
              if hash.has_key? 'programCode'
                @program_code = hash['programCode']
              end
              if hash.has_key? 'propertyCustomerServicePhoneNumber'
                @property_customer_service_phone_number = hash['propertyCustomerServicePhoneNumber']
              end
              if hash.has_key? 'propertyPhoneNumber'
                @property_phone_number = hash['propertyPhoneNumber']
              end
              if hash.has_key? 'renterName'
                @renter_name = hash['renterName']
              end
              if hash.has_key? 'rooms'
                raise TypeError, "value '%s' is not an Array" % [hash['rooms']] unless hash['rooms'].is_a? Array
                @rooms = []
                hash['rooms'].each do |e|
                  @rooms << Ingenico::Connect::SDK::Domain::Definitions::LodgingRoom.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
