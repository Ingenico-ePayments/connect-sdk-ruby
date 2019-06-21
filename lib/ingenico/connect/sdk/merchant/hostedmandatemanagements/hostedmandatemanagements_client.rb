#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/create_hosted_mandate_management_response'
require 'ingenico/connect/sdk/domain/hostedmandatemanagement/get_hosted_mandate_management_response'

module Ingenico::Connect::SDK
  module Merchant
    module Hostedmandatemanagements

      # Hostedmandatemanagements client. Thread-safe.
      class HostedmandatemanagementsClient < Ingenico::Connect::SDK::ApiResource

        # @param parent        [Ingenico::Connect::SDK::ApiResource]
        # @param path_context  [Hash]
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /!{merchantId}/hostedmandatemanagements - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/hostedmandatemanagements/create.html Create hosted mandate management}
        # @param body    [Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::CreateHostedMandateManagementRequest]
        # @param context [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::CreateHostedMandateManagementResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def create(body, context=nil)
          uri = instantiate_uri('/v1/{merchantId}/hostedmandatemanagements', nil)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::CreateHostedMandateManagementResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/hostedmandatemanagements/!{hostedMandateManagementId} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/hostedmandatemanagements/get.html Get hosted mandate management status}
        # @param hosted_mandate_management_id [String]
        # @param context                      [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::GetHostedMandateManagementResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get(hosted_mandate_management_id, context=nil)
          path_context = {
            'hostedMandateManagementId'.freeze => hosted_mandate_management_id,
          }
          uri = instantiate_uri('/v1/{merchantId}/hostedmandatemanagements/{hostedMandateManagementId}', path_context)
          return @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Connect::SDK::Domain::Hostedmandatemanagement::GetHostedMandateManagementResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end
      end
    end
  end
end
