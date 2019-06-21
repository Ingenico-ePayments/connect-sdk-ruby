#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_resource'
require 'ingenico/connect/sdk/merchant/captures/captures_client'
require 'ingenico/connect/sdk/merchant/disputes/disputes_client'
require 'ingenico/connect/sdk/merchant/files/files_client'
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

      # @param parent        [Ingenico::Connect::SDK::ApiResource]
      # @param path_context  [Hash]
      def initialize(parent, path_context)
        super(parent, path_context)
      end

      # Resource /!{merchantId}/hostedcheckouts
      # @return [Ingenico::Connect::SDK::Merchant::Hostedcheckouts::HostedcheckoutsClient]
      def hostedcheckouts
        Ingenico::Connect::SDK::Merchant::Hostedcheckouts::HostedcheckoutsClient.new(self, nil)
      end

      # Resource /!{merchantId}/hostedmandatemanagements
      # @return [Ingenico::Connect::SDK::Merchant::Hostedmandatemanagements::HostedmandatemanagementsClient]
      def hostedmandatemanagements
        Ingenico::Connect::SDK::Merchant::Hostedmandatemanagements::HostedmandatemanagementsClient.new(self, nil)
      end

      # Resource /!{merchantId}/payments
      # @return [Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient]
      def payments
        Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient.new(self, nil)
      end

      # Resource /!{merchantId}/captures
      # @return [Ingenico::Connect::SDK::Merchant::Captures::CapturesClient]
      def captures
        Ingenico::Connect::SDK::Merchant::Captures::CapturesClient.new(self, nil)
      end

      # Resource /!{merchantId}/refunds
      # @return [Ingenico::Connect::SDK::Merchant::Refunds::RefundsClient]
      def refunds
        Ingenico::Connect::SDK::Merchant::Refunds::RefundsClient.new(self, nil)
      end

      # Resource /!{merchantId}/disputes
      # @return [Ingenico::Connect::SDK::Merchant::Disputes::DisputesClient]
      def disputes
        Ingenico::Connect::SDK::Merchant::Disputes::DisputesClient.new(self, nil)
      end

      # Resource /!{merchantId}/payouts
      # @return [Ingenico::Connect::SDK::Merchant::Payouts::PayoutsClient]
      def payouts
        Ingenico::Connect::SDK::Merchant::Payouts::PayoutsClient.new(self, nil)
      end

      # Resource /!{merchantId}/productgroups
      # @return [Ingenico::Connect::SDK::Merchant::Productgroups::ProductgroupsClient]
      def productgroups
        Ingenico::Connect::SDK::Merchant::Productgroups::ProductgroupsClient.new(self, nil)
      end

      # Resource /!{merchantId}/products
      # @return [Ingenico::Connect::SDK::Merchant::Products::ProductsClient]
      def products
        Ingenico::Connect::SDK::Merchant::Products::ProductsClient.new(self, nil)
      end

      # Resource /!{merchantId}/riskassessments
      # @return [Ingenico::Connect::SDK::Merchant::Riskassessments::RiskassessmentsClient]
      def riskassessments
        Ingenico::Connect::SDK::Merchant::Riskassessments::RiskassessmentsClient.new(self, nil)
      end

      # Resource /!{merchantId}/services
      # @return [Ingenico::Connect::SDK::Merchant::Services::ServicesClient]
      def services
        Ingenico::Connect::SDK::Merchant::Services::ServicesClient.new(self, nil)
      end

      # Resource /!{merchantId}/tokens
      # @return [Ingenico::Connect::SDK::Merchant::Tokens::TokensClient]
      def tokens
        Ingenico::Connect::SDK::Merchant::Tokens::TokensClient.new(self, nil)
      end

      # Resource /!{merchantId}/mandates
      # @return [Ingenico::Connect::SDK::Merchant::Mandates::MandatesClient]
      def mandates
        Ingenico::Connect::SDK::Merchant::Mandates::MandatesClient.new(self, nil)
      end

      # Resource /!{merchantId}/sessions
      # @return [Ingenico::Connect::SDK::Merchant::Sessions::SessionsClient]
      def sessions
        Ingenico::Connect::SDK::Merchant::Sessions::SessionsClient.new(self, nil)
      end

      # Resource /!{merchantId}/files
      # @return [Ingenico::Connect::SDK::Merchant::Files::FilesClient]
      def files
        Ingenico::Connect::SDK::Merchant::Files::FilesClient.new(self, nil)
      end
    end
  end
end
