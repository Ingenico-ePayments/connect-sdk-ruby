require 'ingenico/connect/sdk/request_param'

module Ingenico::Connect::SDK

  # extension of the RequestParam object to support comparison
  class RequestParam

    def ==(other)
      other.instance_variables.each do |var|
        unless instance_variable_get(var).to_s == other.instance_variable_get(var).to_s
          return false
        end
      end
      true
    end
  end

  # extension of the RequestHeader object to support comparison
  class RequestHeader

    def ==(other)
      other.instance_variables.each do |var|
        unless instance_variable_get(var).to_s == other.instance_variable_get(var).to_s
          return false
        end
      end
    end
  end
end
