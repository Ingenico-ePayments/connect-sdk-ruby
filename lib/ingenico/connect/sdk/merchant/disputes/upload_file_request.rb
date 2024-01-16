#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/multipart_form_data_object'
require 'ingenico/connect/sdk/multipart_form_data_request'

module Ingenico
  module Connect
    module SDK
      module Merchant
        module Disputes
          # Multipart/form-data parameters for {https://epayments-api.developer-ingenico.com/fileserviceapi/v1/en_US/ruby/disputes/uploadFile.html Upload File}
          # @attr [Ingenico::Connect::SDK::UploadableFile] file
          class UploadFileRequest < Ingenico::Connect::SDK::MultipartFormDataRequest

            attr_accessor :file

            # @return [Ingenico::Connect::SDK::MultipartFormDataObject] representing the attributes of this class
            def to_multipart_form_data_object
              result = MultipartFormDataObject.new
              result.add_file('file', @file) unless @file.nil?
              result
            end
          end
        end
      end
    end
  end
end
