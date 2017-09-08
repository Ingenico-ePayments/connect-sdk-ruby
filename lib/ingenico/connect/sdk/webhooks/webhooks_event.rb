module Ingenico::Connect::SDK
  module Webhooks

    class WebhooksEvent < Ingenico::Connect::SDK::DataObject

      # String
      attr_accessor :api_version

      # String
      attr_accessor :id

      # String
      attr_accessor :created

      # String
      attr_accessor :merchant_id

      # String
      attr_accessor :type

      # {Ingenico::Connect::SDK::Domain::Payment::PaymentResponse}
      attr_accessor :payment

      # {Ingenico::Connect::SDK::Domain::Payout::PayoutResponse}
      attr_accessor :refund

      # {Ingenico::Connect::SDK::Domain::Refund::RefundResponse}
      attr_accessor :payout

      # {Ingenico::Connect::SDK::Domain::Token::TokenResponse}
      attr_accessor :token

      def to_h
        hash = super
        add_to_hash(hash, 'apiVersion', @api_version)
        add_to_hash(hash, 'id', @id)
        add_to_hash(hash, 'created', @created)
        add_to_hash(hash, 'merchantId', @merchant_id)
        add_to_hash(hash, 'type', @type)
        add_to_hash(hash, 'payment', @payment)
        add_to_hash(hash, 'refund', @refund)
        add_to_hash(hash, 'payout', @payout)
        add_to_hash(hash, 'token', @token)
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
