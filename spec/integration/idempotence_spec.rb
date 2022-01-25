require 'spec_helper'
require 'integration_setup'
require 'securerandom'
require 'webmock/rspec'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/payment/create_payment_request'
require 'ingenico/connect/sdk/domain/payment/customer'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_product809_specific_input'
require 'ingenico/connect/sdk/domain/payment/redirect_payment_method_specific_input'
require 'ingenico/connect/sdk/call_context'
require 'ingenico/connect/sdk/declined_payment_exception'

describe 'Idempotence with the server' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'realises when an idempotent request is sent twice' do
    amount_of_money = Ingenico::Connect::SDK::Domain::Definitions::AmountOfMoney.new
    amount_of_money.currency_code = 'EUR'
    amount_of_money.amount = 100
    billing_address = Ingenico::Connect::SDK::Domain::Definitions::Address.new
    billing_address.country_code = 'NL'
    customer = Ingenico::Connect::SDK::Domain::Payment::Customer.new
    customer.locale = 'en'
    customer.billing_address = billing_address
    order = Ingenico::Connect::SDK::Domain::Payment::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    payment_product_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentProduct809SpecificInput.new
    payment_product_input.issuer_id = 'INGBNL2A'
    payment_method_input = Ingenico::Connect::SDK::Domain::Payment::RedirectPaymentMethodSpecificInput.new
    payment_method_input.return_url = 'http://example.com'
    payment_method_input.payment_product_id = 809
    payment_method_input.payment_product809_specific_input = payment_product_input
    body = Ingenico::Connect::SDK::Domain::Payment::CreatePaymentRequest.new
    body.order = order
    body.redirect_payment_method_specific_input = payment_method_input
    idempotence_key = SecureRandom.uuid
    context = Ingenico::Connect::SDK::CallContext.new(idempotence_key)

    Integration.init_client(false) do |client|
      def do_create_payment(client, body, context)
        # For this test it doesn't matter if the response is successful or declined,
        # as long as idempotence is handled correctly
        begin
          client.merchant(Integration::MERCHANT_ID).payments.create(body, context)
        rescue Ingenico::Connect::SDK::DeclinedPaymentException => ex
          ex.payment_result
        end
      end

      result = do_create_payment(client, body, context)
      payment_id = result.payment.id
      status = result.payment.status

      expect(payment_id).to_not be_nil
      expect(status).to_not be_nil
      expect(context.idempotence_key).to eq(idempotence_key)
      expect(context.idempotence_request_timestamp).to be_nil

      result_2 = do_create_payment(client, body, context)
      payment_id2 = result_2.payment.id
      status2 = result_2.payment.status

      expect(payment_id2).to eq(payment_id)
      expect(status2).to eq(status)
      expect(context.idempotence_key).to eq(idempotence_key)
      expect(context.idempotence_request_timestamp).to_not be_nil
    end
  end
end
