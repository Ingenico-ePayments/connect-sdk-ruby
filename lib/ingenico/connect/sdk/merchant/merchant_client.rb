#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/merchant/captures/captures_client'
require 'ingenico/connect/sdk/merchant/disputes/disputes_client'
require 'ingenico/connect/sdk/merchant/hostedcheckouts/hostedcheckouts_client'
require 'ingenico/connect/sdk/merchant/hostedmandatemanagements/hostedmandatemanagements_client'
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

      # Resource /{{merchantId}}/hostedcheckouts
      # Returns:: {Ingenico::Connect::SDK::Merchant::Hostedcheckouts::HostedcheckoutsClient}
      def hostedcheckouts
        Ingenico::Connect::SDK::Merchant::Hostedcheckouts::HostedcheckoutsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/hostedmandatemanagements
      # Returns:: {Ingenico::Connect::SDK::Merchant::Hostedmandatemanagements::HostedmandatemanagementsClient}
      def hostedmandatemanagements
        Ingenico::Connect::SDK::Merchant::Hostedmandatemanagements::HostedmandatemanagementsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/payments
      # Returns:: {Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient}
      def payments
        Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/captures
      # Returns:: {Ingenico::Connect::SDK::Merchant::Captures::CapturesClient}
      def captures
        Ingenico::Connect::SDK::Merchant::Captures::CapturesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/refunds
      # Returns:: {Ingenico::Connect::SDK::Merchant::Refunds::RefundsClient}
      def refunds
        Ingenico::Connect::SDK::Merchant::Refunds::RefundsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/disputes
      # Returns:: {Ingenico::Connect::SDK::Merchant::Disputes::DisputesClient}
      def disputes
        Ingenico::Connect::SDK::Merchant::Disputes::DisputesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/payouts
      # Returns:: {Ingenico::Connect::SDK::Merchant::Payouts::PayoutsClient}
      def payouts
        Ingenico::Connect::SDK::Merchant::Payouts::PayoutsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/productgroups
      # Returns:: {Ingenico::Connect::SDK::Merchant::Productgroups::ProductgroupsClient}
      def productgroups
        Ingenico::Connect::SDK::Merchant::Productgroups::ProductgroupsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/products
      # Returns:: {Ingenico::Connect::SDK::Merchant::Products::ProductsClient}
      def products
        Ingenico::Connect::SDK::Merchant::Products::ProductsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/riskassessments
      # Returns:: {Ingenico::Connect::SDK::Merchant::Riskassessments::RiskassessmentsClient}
      def riskassessments
        Ingenico::Connect::SDK::Merchant::Riskassessments::RiskassessmentsClient.new(self, nil)
      end

      # Resource /{{merchantId}}/services
      # Returns:: {Ingenico::Connect::SDK::Merchant::Services::ServicesClient}
      def services
        Ingenico::Connect::SDK::Merchant::Services::ServicesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/tokens
      # Returns:: {Ingenico::Connect::SDK::Merchant::Tokens::TokensClient}
      def tokens
        Ingenico::Connect::SDK::Merchant::Tokens::TokensClient.new(self, nil)
      end

      # Resource /{{merchantId}}/mandates
      # Returns:: {Ingenico::Connect::SDK::Merchant::Mandates::MandatesClient}
      def mandates
        Ingenico::Connect::SDK::Merchant::Mandates::MandatesClient.new(self, nil)
      end

      # Resource /{{merchantId}}/sessions
      # Returns:: {Ingenico::Connect::SDK::Merchant::Sessions::SessionsClient}
      def sessions
        Ingenico::Connect::SDK::Merchant::Sessions::SessionsClient.new(self, nil)
      end
    end
  end
end
