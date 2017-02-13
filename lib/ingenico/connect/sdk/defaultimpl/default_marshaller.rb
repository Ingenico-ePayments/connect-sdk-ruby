require 'json'
require 'singleton'

module Ingenico::Connect::SDK
  module DefaultImpl
    # marshals objects to and from JSON format.
    # Currently supports marshalling and unmarshalling of classes that support class.new_from_hash and class#to_h
    class DefaultMarshaller < Ingenico::Connect::SDK::Marshaller
      include Singleton

      # NOTE: this alias is needed to not break existing method calls depending on old interface
      class << self
        alias_method :INSTANCE, :instance
      end

      # marshals the _request_object_ to a JSON string using request_object#to_h
      def marshal(request_object)
          JSON.pretty_generate(request_object.to_h)
      end

      # unmarshals a JSON string into an object of type _klass_ using klass.new_from_hash
      def unmarshal(json_string, klass)
        if json_string.nil?
          return nil
        elsif json_string.length == 0
          return ''
        end
        if klass.respond_to?(:new_from_hash)
          klass.new_from_hash(JSON.load(json_string))
        else
          raise NotImplementedError
        end
      end
    end
  end
end
