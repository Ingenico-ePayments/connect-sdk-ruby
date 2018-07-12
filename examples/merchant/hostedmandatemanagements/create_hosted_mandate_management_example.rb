#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/create_hosted_mandate_management_request'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/hosted_mandate_info'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/hosted_mandate_management_specific_input'

Hostedmandatemanagement = Ingenico::Connect::SDK::Domain::Hostedmandatemanagement

def example
  get_client do |client|
    create_mandate_info = Hostedmandatemanagement::HostedMandateInfo.new
    create_mandate_info.customer_reference = 'idonthaveareference'
    create_mandate_info.recurrence_type = 'RECURRING'
    create_mandate_info.signature_type = 'UNSIGNED'

    hosted_mandate_management_specific_input = Hostedmandatemanagement::HostedMandateManagementSpecificInput.new
    hosted_mandate_management_specific_input.locale = 'fr_FR'
    hosted_mandate_management_specific_input.return_url = 'http://www.example.com'
    hosted_mandate_management_specific_input.variant = '101'

    body = Hostedmandatemanagement::CreateHostedMandateManagementRequest.new
    body.create_mandate_info = create_mandate_info
    body.hosted_mandate_management_specific_input = hosted_mandate_management_specific_input

    response = client.merchant('merchantId').hostedmandatemanagements().create(body)
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
