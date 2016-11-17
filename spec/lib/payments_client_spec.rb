require 'spec_helper'
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/payment/card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/create_payment_request'
require 'ingenico/connect/sdk/domain/payment/customer'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/merchant/payments/payments_client'

PaymentsClient ||= Ingenico::Connect::SDK::Merchant::Payments::PaymentsClient
Payment ||= Ingenico::Connect::SDK::Domain::Payment
Definitions ||= Ingenico::Connect::SDK::Domain::Definitions
Response ||= Ingenico::Connect::SDK::Response
ResponseHeader ||= Ingenico::Connect::SDK::ResponseHeader

ResponseException ||= Ingenico::Connect::SDK::ResponseException
CommunicationException ||= Ingenico::Connect::SDK::CommunicationException
ApiException ||= Ingenico::Connect::SDK::ApiException
ValidationException ||= Ingenico::Connect::SDK::ValidationException
DeclinedPaymentException ||= Ingenico::Connect::SDK::DeclinedPaymentException
ReferenceException ||= Ingenico::Connect::SDK::ReferenceException
IdempotenceException ||= Ingenico::Connect::SDK::IdempotenceException

describe PaymentsClient do

  resource_prefix = 'spec/fixtures/resources/payment/'
  let(:request_body) {create_resource}

  it 'can create payments' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'pending_approval.json')
    allow(connection).to receive(:post).and_return(Response.new(201, response_body, nil))

    response = client.merchant('merchantId').payments.create(request_body)

    expect(response.payment.id).to eq('000002000020142549460000100001')
    expect(response.payment.status).to eq('PENDING_APPROVAL')
  end

  it 'can deal with rejection' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'rejected.json')
    allow(connection).to receive(:post).and_return(Response.new(400, response_body, nil))

    expect{client.merchant('merchantId').payments.create(request_body)}.to raise_error(DeclinedPaymentException){|error|
      expect(error.message).to include("payment '000002000020142544360000100001'")
      expect(error.message).to include("status 'REJECTED'")
      expect(error.message).to include(response_body)
      expect(error.payment_result).to_not be_nil
      expect(error.payment_result.payment.id).to eq('000002000020142544360000100001')
      expect(error.payment_result.payment.status).to eq('REJECTED')
    }
  end

  it 'can deal with invalid requests' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'invalid_request.json')
    allow(connection).to receive(:post).and_return(Response.new(400, response_body, nil))

    expect{client.merchant('merchantId').payments.create(request_body)}.to raise_error(ValidationException){|error|
      expect(error.message).to include(response_body)
    }
  end

  it 'can deal with not being authorized' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'invalid_authorization.json')
    allow(connection).to receive(:post).and_return(Response.new(401, response_body, nil))

    expect{client.merchant('merchantId').payments.create(request_body)}.to raise_error(ApiException){|error|

      expect(error.message).to include(response_body)
    }
  end

  it 'can handle the payment already existing' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'duplicate_request.json')
    allow(connection).to receive(:post).and_return(Response.new(409, response_body, nil))

    expect{client.merchant('merchantId').payments.create(request_body)}.to raise_error(ReferenceException){|error|
      expect(error.message).to include(response_body)
    }
  end

  it 'can deal with sending a request twice' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'duplicate_request.json')
    context = Ingenico::Connect::SDK::CallContext.new('key')
    allow(connection).to receive(:post).and_return(Response.new(409, response_body, nil))

    expect{client.merchant('merchantId').payments.create(request_body, context)}
        .to raise_error(IdempotenceException){|error|
          expect(error.message).to include(response_body)
          expect(error.idempotence_key).to eq(context.idempotence_key)
    }
  end

  it 'can handle its client not being found' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'not_found.html')
    allow(connection).to receive(:post).and_return(Response.new(404, response_body, [ResponseHeader.new('content-type', 'text/html')]))

    expect{client.merchant('merchantId').payments.create(request_body)}.to raise_error(Ingenico::Connect::SDK::NotFoundException){|error|
      expect(error.cause).to be_a(ResponseException)
      expect(error.cause.message).to include(response_body)
    }
  end

  it 'can handle the server misbehaving' do
    connection = double(Ingenico::Connect::SDK::Connection)
    client = init_client(connection)
    response_body = IO.read(resource_prefix + 'method_not_allowed.html')
    allow(connection).to receive(:post).and_return(Response.new(405, response_body, [ResponseHeader.new('content-type', 'text/html')]))

    expect{client.merchant('merchantId').payments.create(request_body)}.to raise_error(CommunicationException){|error|
      expect(error.cause).to be_a(ResponseException)
      expect(error.cause.message).to include(response_body)
    }
  end

  def init_client(connection)
    session = Ingenico::Connect::SDK::Session.new('http://localhost', connection,
                               Ingenico::Connect::SDK::DefaultImpl::DefaultAuthenticator.new(
                                   Ingenico::Connect::SDK::DefaultImpl::AuthorizationType.get_authorization('v1HMAC'), 'admin', 'admin'),
                               Ingenico::Connect::SDK::MetaDataProvider.new('Ingenico'))
    return Ingenico::Connect::SDK::Factory.create_client_from_session(session)
  end

  def create_resource
    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 2345
    amount_of_money.currency_code = 'CAD'
    customer = Payment::Customer.new
    billing_address = Definitions::Address.new
    billing_address.country_code = 'CA'
    customer.billing_address = billing_address
    order = Payment::Order.new
    order.customer = customer
    card = Definitions::Card.new
    card.cvv = '123'
    card.card_number = '4567350000427977'
    card.expiry_date = '1220'
    card_payment_method_specific_input = Payment::CardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card
    card_payment_method_specific_input.payment_product_id = 1
    body = Payment::CreatePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input
    body
  end
end
