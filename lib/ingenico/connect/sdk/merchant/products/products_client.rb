#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/product/device_fingerprint_response'
require 'ingenico/connect/sdk/domain/product/directory'
require 'ingenico/connect/sdk/domain/product/get_customer_details_response'
require 'ingenico/connect/sdk/domain/product/payment_product_networks_response'
require 'ingenico/connect/sdk/domain/product/payment_product_response'
require 'ingenico/connect/sdk/domain/product/payment_products'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Products client. Thread-safe.
      class ProductsClient < Ingenico::Connect::SDK::ApiResource

        # @param parent        [Ingenico::Connect::SDK::ApiResource]
        # @param path_context  [Hash]
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /!{merchantId}/products - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/find.html Get payment products}
        # @param query   [Ingenico::Connect::SDK::Merchant::Products::FindProductsParams]
        # @param context [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Product::PaymentProducts]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def find(query, context=nil)
          uri = instantiate_uri('/v1/{merchantId}/products', nil)
          return @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Connect::SDK::Domain::Product::PaymentProducts,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/products/!{paymentProductId} - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/get.html Get payment product}
        # @param payment_product_id [Integer]
        # @param query              [Ingenico::Connect::SDK::Merchant::Products::GetProductParams]
        # @param context            [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Product::PaymentProductResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def get(payment_product_id, query, context=nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}', path_context)
          return @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Connect::SDK::Domain::Product::PaymentProductResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/products/!{paymentProductId}/directory - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/directory.html Get payment product directory}
        # @param payment_product_id [Integer]
        # @param query              [Ingenico::Connect::SDK::Merchant::Products::DirectoryParams]
        # @param context            [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Product::Directory]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def directory(payment_product_id, query, context=nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/directory', path_context)
          return @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Connect::SDK::Domain::Product::Directory,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/products/!{paymentProductId}/customerDetails - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/customerDetails.html Get customer details}
        # @param payment_product_id [Integer]
        # @param body               [Ingenico::Connect::SDK::Domain::Product::GetCustomerDetailsRequest]
        # @param context            [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Product::GetCustomerDetailsResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def customer_details(payment_product_id, body, context=nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/customerDetails', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Product::GetCustomerDetailsResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/products/!{paymentProductId}/deviceFingerprint - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/deviceFingerprint.html Get device fingerprint}
        # @param payment_product_id [Integer]
        # @param body               [Ingenico::Connect::SDK::Domain::Product::DeviceFingerprintRequest]
        # @param context            [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Product::DeviceFingerprintResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def device_fingerprint(payment_product_id, body, context=nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/deviceFingerprint', path_context)
          return @communicator.post(
            uri,
            client_headers,
            nil,
            body,
            Ingenico::Connect::SDK::Domain::Product::DeviceFingerprintResponse,
            context)
        rescue ResponseException => e
          error_type = Ingenico::Connect::SDK::Domain::Errors::ErrorResponse
          error_object = @communicator.marshaller.unmarshal(e.body, error_type)
          raise create_exception(e.status_code, e.body, error_object, context)
        end

        # Resource /!{merchantId}/products/!{paymentProductId}/networks - {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/networks.html Get payment product networks}
        # @param payment_product_id [Integer]
        # @param query              [Ingenico::Connect::SDK::Merchant::Products::NetworksParams]
        # @param context            [Ingenico::Connect::SDK::CallContext]
        # @return [Ingenico::Connect::SDK::Domain::Product::PaymentProductNetworksResponse]
        # @raise [Ingenico::Connect::SDK::ValidationException] if the request was not correct and couldn't be processed (HTTP status code 400)
        # @raise [Ingenico::Connect::SDK::AuthorizationException] if the request was not allowed (HTTP status code 403)
        # @raise [Ingenico::Connect::SDK::IdempotenceException] if an idempotent request caused a conflict (HTTP status code 409)
        # @raise [Ingenico::Connect::SDK::ReferenceException] if an object was attempted to be referenced that doesn't exist or has been removed,
        #        or there was a conflict (HTTP status code 404, 409 or 410)
        # @raise [Ingenico::Connect::SDK::GlobalCollectException] if something went wrong at the Ingenico ePayments platform,
        #        the Ingenico ePayments platform was unable to process a message from a downstream partner/acquirer,
        #        or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # @raise [Ingenico::Connect::SDK::ApiException]if the Ingenico ePayments platform returned any other error
        def networks(payment_product_id, query, context=nil)
          path_context = {
            'paymentProductId'.freeze => payment_product_id.to_s,
          }
          uri = instantiate_uri('/v1/{merchantId}/products/{paymentProductId}/networks', path_context)
          return @communicator.get(
            uri,
            client_headers,
            query,
            Ingenico::Connect::SDK::Domain::Product::PaymentProductNetworksResponse,
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
