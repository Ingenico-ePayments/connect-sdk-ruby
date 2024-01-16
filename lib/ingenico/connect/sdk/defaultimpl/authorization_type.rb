module Ingenico
  module Connect
    module SDK
      module DefaultImpl
        # Contains all authentication schemes supported by the GlobalCollect platform.
        class AuthorizationType
          V1HMAC = 'v1HMAC'

          # @return [String] the authorization string that belongs to the parameter _authorization_, or _nil_ if not found.
          def self.get_authorization(authorization)
            authorization if authorization == 'v1HMAC'
          end

          # @return [String]
          def self.get_signature_string
            V1HMAC
          end
        end
      end
    end
  end
end
