#
# This class was auto-generated from the API references found at
# https://epayments-api.developer-ingenico.com/s2sapi/v1/
#
require 'ingenico/connect/sdk/api_exception'
require 'ingenico/connect/sdk/declined_payment_exception'
require 'ingenico/connect/sdk/factory'
require 'ingenico/connect/sdk/domain/definitions/address'
require 'ingenico/connect/sdk/domain/definitions/amount_of_money'
require 'ingenico/connect/sdk/domain/definitions/card'
require 'ingenico/connect/sdk/domain/definitions/company_information'
require 'ingenico/connect/sdk/domain/payment/address_personal'
require 'ingenico/connect/sdk/domain/payment/browser_data'
require 'ingenico/connect/sdk/domain/payment/card_payment_method_specific_input'
require 'ingenico/connect/sdk/domain/payment/contact_details'
require 'ingenico/connect/sdk/domain/payment/create_payment_request'
require 'ingenico/connect/sdk/domain/payment/customer'
require 'ingenico/connect/sdk/domain/payment/customer_device'
require 'ingenico/connect/sdk/domain/payment/line_item'
require 'ingenico/connect/sdk/domain/payment/line_item_invoice_data'
require 'ingenico/connect/sdk/domain/payment/order'
require 'ingenico/connect/sdk/domain/payment/order_invoice_data'
require 'ingenico/connect/sdk/domain/payment/order_references'
require 'ingenico/connect/sdk/domain/payment/personal_information'
require 'ingenico/connect/sdk/domain/payment/personal_name'
require 'ingenico/connect/sdk/domain/payment/redirection_data'
require 'ingenico/connect/sdk/domain/payment/shipping'
require 'ingenico/connect/sdk/domain/payment/shopping_cart'
require 'ingenico/connect/sdk/domain/payment/three_d_secure'

Definitions = Ingenico::Connect::SDK::Domain::Definitions
Payment = Ingenico::Connect::SDK::Domain::Payment

def example
  get_client do |client|
    card = Definitions::Card.new
    card.card_number = '4567350000427977'
    card.cardholder_name = 'Wile E. Coyote'
    card.cvv = '123'
    card.expiry_date = '1220'

    redirection_data = Payment::RedirectionData.new
    redirection_data.return_url = 'https://hostname.myownwebsite.url'

    three_d_secure = Payment::ThreeDSecure.new
    three_d_secure.authentication_flow = 'browser'
    three_d_secure.challenge_canvas_size = '600x400'
    three_d_secure.challenge_indicator = 'challenge-requested'
    three_d_secure.exemption_request = 'none'
    three_d_secure.redirection_data = redirection_data
    three_d_secure.skip_authentication = false

    card_payment_method_specific_input = Payment::CardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card
    card_payment_method_specific_input.is_recurring = false
    card_payment_method_specific_input.merchant_initiated_reason_indicator = 'delayedCharges'
    card_payment_method_specific_input.payment_product_id = 1
    card_payment_method_specific_input.three_d_secure = three_d_secure
    card_payment_method_specific_input.transaction_channel = 'ECOMMERCE'

    amount_of_money = Definitions::AmountOfMoney.new
    amount_of_money.amount = 2980
    amount_of_money.currency_code = 'EUR'

    billing_address = Definitions::Address.new
    billing_address.additional_info = 'b'
    billing_address.city = 'Monument Valley'
    billing_address.country_code = 'US'
    billing_address.house_number = '13'
    billing_address.state = 'Utah'
    billing_address.street = 'Desertroad'
    billing_address.zip = '84536'

    company_information = Definitions::CompanyInformation.new
    company_information.name = 'Acme Labs'
    company_information.vat_number = '1234AB5678CD'

    contact_details = Payment::ContactDetails.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'
    contact_details.fax_number = '+1234567891'
    contact_details.phone_number = '+1234567890'

    browser_data = Payment::BrowserData.new
    browser_data.color_depth = 24
    browser_data.java_enabled = false
    browser_data.screen_height = '1200'
    browser_data.screen_width = '1920'

    device = Payment::CustomerDevice.new
    device.accept_header = 'texthtml,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    device.browser_data = browser_data
    device.ip_address = '123.123.123.123'
    device.locale = 'en-US'
    device.timezone_offset_utc_minutes = '420'
    device.user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1 Safari/605.1.15'

    name = Payment::PersonalName.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'
    name.title = 'Mr.'

    personal_information = Payment::PersonalInformation.new
    personal_information.date_of_birth = '19490917'
    personal_information.gender = 'male'
    personal_information.name = name

    customer = Payment::Customer.new
    customer.account_type = 'none'
    customer.billing_address = billing_address
    customer.company_information = company_information
    customer.contact_details = contact_details
    customer.device = device
    customer.locale = 'en_US'
    customer.merchant_customer_id = '1234'
    customer.personal_information = personal_information

    invoice_data = Payment::OrderInvoiceData.new
    invoice_data.invoice_date = '20140306191500'
    invoice_data.invoice_number = '000000123'

    references = Payment::OrderReferences.new
    references.descriptor = 'Fast and Furry-ous'
    references.invoice_data = invoice_data
    references.merchant_order_id = 123456
    references.merchant_reference = 'AcmeOrder0001'

    shipping_name = Payment::PersonalName.new
    shipping_name.first_name = 'Road'
    shipping_name.surname = 'Runner'
    shipping_name.title = 'Miss'

    address = Payment::AddressPersonal.new
    address.additional_info = 'Suite II'
    address.city = 'Monument Valley'
    address.country_code = 'US'
    address.house_number = '1'
    address.name = shipping_name
    address.state = 'Utah'
    address.street = 'Desertroad'
    address.zip = '84536'

    shipping = Payment::Shipping.new
    shipping.address = address

    items = []

    item1_amount_of_money = Definitions::AmountOfMoney.new
    item1_amount_of_money.amount = 2500
    item1_amount_of_money.currency_code = 'EUR'

    item1_invoice_data = Payment::LineItemInvoiceData.new
    item1_invoice_data.description = 'ACME Super Outfit'
    item1_invoice_data.nr_of_items = '1'
    item1_invoice_data.price_per_item = 2500

    item1 = Payment::LineItem.new
    item1.amount_of_money = item1_amount_of_money
    item1.invoice_data = item1_invoice_data

    items << item1

    item2_amount_of_money = Definitions::AmountOfMoney.new
    item2_amount_of_money.amount = 480
    item2_amount_of_money.currency_code = 'EUR'

    item2_invoice_data = Payment::LineItemInvoiceData.new
    item2_invoice_data.description = 'Aspirin'
    item2_invoice_data.nr_of_items = '12'
    item2_invoice_data.price_per_item = 40

    item2 = Payment::LineItem.new
    item2.amount_of_money = item2_amount_of_money
    item2.invoice_data = item2_invoice_data

    items << item2

    shopping_cart = Payment::ShoppingCart.new
    shopping_cart.items = items

    order = Payment::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    order.references = references
    order.shipping = shipping
    order.shopping_cart = shopping_cart

    body = Payment::CreatePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input
    body.order = order

    begin
      response = client.merchant('merchantId').payments.create(body)
    rescue Ingenico::Connect::SDK::DeclinedPaymentException => e
      handle_declined_payment(e.payment_result)
    rescue Ingenico::Connect::SDK::ApiException => e
      handle_api_errors(e.errors)
    end
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', 'example_configuration.yml')
  yield client = Ingenico::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end

def handle_declined_payment(create_payment_result)
  # handle the result here
end

def handle_api_errors(errors)
  # handle the errors here
end
