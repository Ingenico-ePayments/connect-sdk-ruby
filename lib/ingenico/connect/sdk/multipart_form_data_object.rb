require 'securerandom'

module Ingenico
  module Connect
    module SDK
      # A representation of a multipart/form-data object
      class MultipartFormDataObject
        def initialize
          @boundary = SecureRandom.uuid
          @content_type = 'multipart/form-data; boundary=' + @boundary
          @values = {}
          @files = {}
        end

        attr_reader :boundary
        attr_reader :content_type
        attr_reader :values
        attr_reader :files

        def add_value(parameter_name, value)
          if parameter_name.nil? || parameter_name.strip.empty?
            raise ArgumentError, 'parameter_name is required'
          end
          raise ArgumentError, 'value is required' if value.nil?
          if @values.include?(parameter_name) || @files.include?(parameter_name)
            raise ArgumentError, 'duplicate parameterName: ' + parameter_name
          end

          @values[parameter_name] = value
        end

        # Adds a file to the multipart Form Data Object
        def add_file(parameter_name, uploadable_file)
          if parameter_name.nil? || parameter_name.strip.empty?
            raise ArgumentError, 'parameter_name is required'
          end
          raise ArgumentError, 'uploadable_file is required' if uploadable_file.nil?
          if @values.include?(parameter_name) || @files.include?(parameter_name)
            raise ArgumentError, 'duplicate parameterName: ' + parameter_name
          end

          @files[parameter_name] = uploadable_file
        end
      end
    end
  end
end
