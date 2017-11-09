#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/merchant/captures/captures_client'
require 'ingenico/connect/sdk/merchant/hostedcheckouts/hostedcheckouts_client'
require 'ingenico/connect/sdk/merchant/mandates/mandates_client'
require 'ingenico/connect/sdk/merchant/payments/payments_client'
require 'ingenico/connect/sdk/merchant/payouts/payouts_client'
require 'ingenico/connect/sdk/merchant/productgroups/productgroups_client'
require 'ingenico/connect/sdk/merchant/products/products_client'
require 'ingenico/connect/sdk/merchant/refunds/refunds_client'
require 'ingenico/connect/sdk/merchant/riskassessments/riskassessments_client'
require 'ingenico/connect/sdk/merchant/services/services_client'
require 'ingenico/connect/sdk/merchant/sessions/sessions_client'
require 'ingenico/connect/sdk/merchant/tokens/tokens_client'

module Ingenico::Connect::SDK
  module Merchant

    # Merchant client. Thread-safe.
    class MerchantClient < Ingenico::Connect::SDK::ApiResource

      # parent::       {Ingenico::Connect::SDK::ApiResource}
      # path_context:: Hash of String to String
      def initialize(parent, path_context)
        super(parent, path_context)
      end

      # Resource /{{merchantId}}/payments
      #
      # Create, cancel and approve payments
      # Returns:: {Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient}
      def payments
        Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/captures
      #
      # Get capture
      # Returns:: {Ingenico::Connect::SDK::Merchant::Captures::CapturesClient}
      def captures
        Ingenico::Connect::SDK::Merchant::Captures::CapturesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/payouts
      #
      # Create, cancel and approve payouts
      # Returns:: {Ingenico::Connect::SDK::Merchant::Payouts::PayoutsClient}
      def payouts
        Ingenico::Connect::SDK::Merchant::Payouts::PayoutsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/products
      #
      # Get information about payment products
      # Returns:: {Ingenico::Connect::SDK::Merchant::Products::ProductsClient}
      def products
        Ingenico::Connect::SDK::Merchant::Products::ProductsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/productgroups
      #
      # Get information about payment product groups
      # Returns:: {Ingenico::Connect::SDK::Merchant::Productgroups::ProductgroupsClient}
      def productgroups
        Ingenico::Connect::SDK::Merchant::Productgroups::ProductgroupsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/mandates
      #
      # Create, get and update mandates
      # Returns:: {Ingenico::Connect::SDK::Merchant::Mandates::MandatesClient}
      def mandates
        Ingenico::Connect::SDK::Merchant::Mandates::MandatesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/refunds
      #
      # Create, cancel and approve refunds
      # Returns:: {Ingenico::Connect::SDK::Merchant::Refunds::RefundsClient}
      def refunds
        Ingenico::Connect::SDK::Merchant::Refunds::RefundsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/riskassessments
      #
      # Perform risk assessments on your customer data
      # Returns:: {Ingenico::Connect::SDK::Merchant::Riskassessments::RiskassessmentsClient}
      def riskassessments
        Ingenico::Connect::SDK::Merchant::Riskassessments::RiskassessmentsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/services
      #
      # Several services to help you
      # Returns:: {Ingenico::Connect::SDK::Merchant::Services::ServicesClient}
      def services
        Ingenico::Connect::SDK::Merchant::Services::ServicesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/sessions
      #
      # Create new Session for Client2Server API calls
      # Returns:: {Ingenico::Connect::SDK::Merchant::Sessions::SessionsClient}
      def sessions
        Ingenico::Connect::SDK::Merchant::Sessions::SessionsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/tokens
      #
      # Create, delete and update tokens
      # Returns:: {Ingenico::Connect::SDK::Merchant::Tokens::TokensClient}
      def tokens
        Ingenico::Connect::SDK::Merchant::Tokens::TokensClient.new(self, nil)
      end

      # Resource /{{merchantId}}/hostedcheckouts
      #
      # Create new hosted checkout
      # Returns:: {Ingenico::Connect::SDK::Merchant::Hostedcheckouts::HostedcheckoutsClient}
      def hostedcheckouts
        Ingenico::Connect::SDK::Merchant::Hostedcheckouts::HostedcheckoutsClient.new(self, nil)
      end
    end
  end
end
