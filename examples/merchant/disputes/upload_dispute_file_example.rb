#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/uploadable_file'
require 'ingenico/connect/sdk/merchant/disputes/upload_file_request'

Disputes = Ingenico::Connect::SDK::Merchant::Disputes

def example
  get_client do |client|
    body = Disputes::UploadFileRequest.new
    File.open("file.pdf", mode="rb") do |file_content|
      body.file = UploadableFile.new("file.pdf", file_content, "application/pdf")

      response = client.merchant('merchantId').disputes.upload_file('disputeId', body)
    end
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', 'example_configuration.yml')
  yield client = Ingenico::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end
