module Ingenico::Connect::SDK
  module Webhooks

    # @attr [String] api_version
    # @attr [String] id
    # @attr [String] created
    # @attr [String] merchant_id
    # @attr [String] type
    # @attr [Ingenico::Connect::SDK::Domain::Payment::PaymentResponse] payment
    # @attr [Ingenico::Connect::SDK::Domain::Payout::PayoutResponse] refund
    # @attr [Ingenico::Connect::SDK::Domain::Refund::RefundResponse] payout
    # @attr [Ingenico::Connect::SDK::Domain::Token::TokenResponse] token
    class WebhooksEvent < Ingenico::Connect::SDK::DataObject

      attr_accessor :api_version
      attr_accessor :id
      attr_accessor :created
      attr_accessor :merchant_id
      attr_accessor :type

      attr_accessor :payment
      attr_accessor :refund
      attr_accessor :payout
      attr_accessor :token

      # @return [Hash]
      def to_h
        hash = super
        hash['apiVersion'] = @api_version unless @api_version.nil?
        hash['id'] = @id unless @id.nil?
        hash['created'] = @created unless @created.nil?
        hash['merchantId'] = @merchant_id unless @merchant_id.nil?
        hash['type'] = @type unless @type.nil?
        hash['payment'] = @payment.to_h unless @payment.nil?
        hash['refund'] = @refund.to_h unless @refund.nil?
        hash['payout'] = @payout.to_h unless @payout.nil?
        hash['token'] = @token.to_h unless @token.nil?
        hash
      end

      def from_hash(hash)
        super
        @api_version = hash['apiVersion'] if hash.has_key? 'apiVersion'
        @id = hash['id'] if hash.has_key? 'id'
        @created = hash['created'] if hash.has_key? 'created'
        @merchant_id = hash['merchantId'] if hash.has_key? 'merchantId'
        @type = hash['type'] if hash.has_key? 'type'
        @payment = Ingenico::Connect::SDK::Domain::Payment::PaymentResponse.new_from_hash(hash['payment']) if hash.has_key? 'payment'
        @refund = Ingenico::Connect::SDK::Domain::Refund::RefundResponse.new_from_hash(hash['refund']) if hash.has_key? 'refund'
        @payout = Ingenico::Connect::SDK::Domain::Payout::PayoutResponse.new_from_hash(hash['payout']) if hash.has_key? 'payout'
        @token = Ingenico::Connect::SDK::Domain::Token::TokenResponse.new_from_hash(hash['token']) if hash.has_key? 'token'
      end
    end
  end
end
