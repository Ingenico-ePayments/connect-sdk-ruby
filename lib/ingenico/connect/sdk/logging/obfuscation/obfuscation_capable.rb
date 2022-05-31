module Ingenico::Connect::SDK
  module Logging
    module Obfuscation
      # Abstract mixin module that allows specifying body and header obfuscators for an object.
      module ObfuscationCapable
        # Sets the current body obfuscator to use.
        def set_body_obfuscator(body_obfuscator)
          raise NotImplementedError
        end

        # Sets the current header obfuscator to use.
        def set_header_obfuscator(header_obfuscator)
          raise NotImplementedError
        end
      end
    end
  end
end
