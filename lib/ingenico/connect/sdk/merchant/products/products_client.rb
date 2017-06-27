#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/response_exception'
require 'ingenico/connect/sdk/domain/errors/error_response'
require 'ingenico/connect/sdk/domain/product/directory'
require 'ingenico/connect/sdk/domain/product/payment_product_networks_response'
require 'ingenico/connect/sdk/domain/product/payment_product_response'
require 'ingenico/connect/sdk/domain/product/payment_products'
require 'ingenico/connect/sdk/domain/publickey/public_key'

module Ingenico::Connect::SDK
  module Merchant
    module Products

      # Products client. Thread-safe.
      class ProductsClient < Ingenico::Connect::SDK::ApiResource

        # parent::       {Ingenico::Connect::SDK::ApiResource}
        # path_context:: Hash of String to String
        def initialize(parent, path_context)
          super(parent, path_context)
        end

        # Resource /{{merchantId}}/products
        #
        # {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/find.html Get payment products}
        # query::   {Ingenico::Connect::SDK::Merchant::Products::FindProductsParams}
        # context:: {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Product::PaymentProducts}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def find(query, context=nil)
          uri = instantiate_uri('/{apiVersion}/{merchantId}/products', nil)
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

        # Resource /{{merchantId}}/products/{{paymentProductId}}
        #
        # {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/get.html Get payment product}
        # payment_product_id:: Integer
        # query::              {Ingenico::Connect::SDK::Merchant::Products::GetProductParams}
        # context::            {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Product::PaymentProductResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def get(payment_product_id, query, context=nil)
          path_context = {
            'paymentProductId' => payment_product_id.to_s,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/products/{paymentProductId}', path_context)
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

        # Resource /{{merchantId}}/products/{{paymentProductId}}/directory
        #
        # {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/directory.html Get payment product directory}
        # payment_product_id:: Integer
        # query::              {Ingenico::Connect::SDK::Merchant::Products::DirectoryParams}
        # context::            {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Product::Directory}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def directory(payment_product_id, query, context=nil)
          path_context = {
            'paymentProductId' => payment_product_id.to_s,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/products/{paymentProductId}/directory', path_context)
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

        # Resource /{{merchantId}}/products/{{paymentProductId}}/networks
        #
        # {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/networks.html Get payment product networks}
        # payment_product_id:: Integer
        # query::              {Ingenico::Connect::SDK::Merchant::Products::NetworksParams}
        # context::            {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Product::PaymentProductNetworksResponse}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def networks(payment_product_id, query, context=nil)
          path_context = {
            'paymentProductId' => payment_product_id.to_s,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/products/{paymentProductId}/networks', path_context)
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

        # Resource /{{merchantId}}/products/{{paymentProductId}}/publicKey
        #
        # {https://epayments-api.developer-ingenico.com/s2sapi/v1/en_US/ruby/products/publicKey.html Get payment product specific public key}
        # payment_product_id:: Integer
        # context::            {Ingenico::Connect::SDK::CallContext}
        # Returns:: {Ingenico::Connect::SDK::Domain::Publickey::PublicKey}
        # Raises:: {Ingenico::Connect::SDK::ValidationException} if the request was not correct and couldn't be processed (HTTP status code 400)
        # Raises:: {Ingenico::Connect::SDK::AuthorizationException} if the request was not allowed (HTTP status code 403)
        # Raises:: {Ingenico::Connect::SDK::IdempotenceException} if an idempotent request caused a conflict (HTTP status code 409)
        # Raises:: {Ingenico::Connect::SDK::ReferenceException} if an object was attempted to be referenced that doesn't exist or has been removed,  
        #          or there was a conflict (HTTP status code 404, 409 or 410)
        # Raises:: {Ingenico::Connect::SDK::GlobalCollectException} if something went wrong at the GlobalCollect platform,  
        #          the GlobalCollect platform was unable to process a message from a downstream partner/acquirer,  
        #          or the service that you're trying to reach is temporary unavailable (HTTP status code 500, 502 or 503)
        # Raises:: {Ingenico::Connect::SDK::ApiException} if the GlobalCollect platform returned any other error
        def public_key(payment_product_id, context=nil)
          path_context = {
            'paymentProductId' => payment_product_id.to_s,
          }
          uri = instantiate_uri('/{apiVersion}/{merchantId}/products/{paymentProductId}/publicKey', path_context)
          return @communicator.get(
            uri,
            client_headers,
            nil,
            Ingenico::Connect::SDK::Domain::Publickey::PublicKey,
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
