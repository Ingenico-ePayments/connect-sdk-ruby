require 'spec_helper'

include Ingenico::Connect::SDK
describe Webhooks::WebhooksHelper do

  # define constants for the testbench
  SIGNATURE_HEADER = "X-GCS-Signature"
  SIGNATURE = "2S7doBj/GnJnacIjSJzr5fxGM5xmfQyFAwxv1I53ZEk="
  KEY_ID_HEADER = "X-GCS-KeyId"
  KEY_ID = "dummy-key-id"
  SECRET_KEY = "hello+world"

  def create_helper(marshaller = DefaultImpl::DefaultMarshaller.INSTANCE)
    Webhooks::WebhooksHelper.new(marshaller, Webhooks::InMemorySecretKeyStore.instance)
  end

  def read_resource(resource_name)
    prefix = 'spec/fixtures/resources/webhooks/'
    IO.read(prefix + resource_name)
  end

  before do
    Webhooks::InMemorySecretKeyStore.instance.clear
  end

  after do
    Webhooks::InMemorySecretKeyStore.instance.clear
  end

  context 'unmarshal' do
    let(:helper) { create_helper }
    let(:body) { read_resource('valid-body') }
    let(:sig_header) { RequestHeader.new(SIGNATURE_HEADER, SIGNATURE) }
    let(:key_header) { RequestHeader.new(KEY_ID_HEADER, KEY_ID) }
    let(:request_headers) { [sig_header, key_header] }

    it 'should raise ApiVersionMismatchException when API version does not match' do
      # mock marshaller once to return an event with a wrong API version number
      expect(DefaultImpl::DefaultMarshaller.INSTANCE).to receive(:unmarshal) do |body, klass|
        event = klass.new_from_hash(JSON.load(body))
        event.api_version = 'v0' # wrong version
        event
      end
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, SECRET_KEY)
      expect{helper.unmarshal(body, request_headers)}.to raise_error(Webhooks::ApiVersionMismatchException)
    end

    it 'should raise SecretKeyNotAvailableException when no secret key exists' do
      expect{helper.unmarshal(body, request_headers)}.to raise_error(Webhooks::SecretKeyNotAvailableException)
    end

    it 'should raise SignatureValidationException when the signature is missing' do
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, SECRET_KEY)
      expect{helper.unmarshal(body, [])}.to raise_error(Webhooks::SignatureValidationException)
    end

    it 'should raise SignatureValidationException when there are duplicate headers' do
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, SECRET_KEY)
      request_headers = [sig_header, key_header, sig_header]
      expect{helper.unmarshal(body, request_headers)}.to raise_error(Webhooks::SignatureValidationException)
    end

    it 'should work when everything is correct' do
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, SECRET_KEY)
      event = helper.unmarshal(body, request_headers)
      expect(event.api_version).to eq('v1')
      expect(event.id).to eq("8ee793f6-4553-4749-85dc-f2ef095c5ab0")
      expect(event.created).to eq("2017-02-02T11:24:14.040+0100")
      expect(event.merchant_id).to eq('20000')
      expect(event.type).to eq('payment.paid')

      expect(event.refund).to be_nil
      expect(event.payout).to be_nil
      expect(event.token).to be_nil

      expect(event.payment).not_to be_nil
      expect(event.payment.id).to eq("00000200000143570012")
      expect(event.payment.payment_output).not_to be_nil
      expect(event.payment.payment_output.amount_of_money).not_to be_nil
      expect(event.payment.payment_output.amount_of_money.amount).to eq(1000)
      expect(event.payment.payment_output.amount_of_money.currency_code).to eq('EUR')
      expect(event.payment.payment_output.references).not_to be_nil
      expect(event.payment.payment_output.references.payment_reference).to eq("200001681810")
      expect(event.payment.payment_output.payment_method).to eq("bankTransfer")

      expect(event.payment.payment_output.card_payment_method_specific_output).to be_nil
      expect(event.payment.payment_output.cash_payment_method_specific_output).to be_nil
      expect(event.payment.payment_output.direct_debit_payment_method_specific_output).to be_nil
      expect(event.payment.payment_output.invoice_payment_method_specific_output).to be_nil
      expect(event.payment.payment_output.redirect_payment_method_specific_output).to be_nil
      expect(event.payment.payment_output.sepa_direct_debit_payment_method_specific_output).to be_nil
      expect(event.payment.payment_output.bank_transfer_payment_method_specific_output).not_to be_nil
      expect(event.payment.payment_output.bank_transfer_payment_method_specific_output.payment_product_id).to eq(11)

      expect(event.payment.status).to eq('PAID')
      expect(event.payment.status_output).not_to be_nil
      expect(event.payment.status_output.is_cancellable).to be false
      expect(event.payment.status_output.status_category).to eq('COMPLETED')
      expect(event.payment.status_output.status_code).to eq(1000)
      expect(event.payment.status_output.status_code_change_date_time).to eq("20170202112414")
      expect(event.payment.status_output.is_authorized).to be true
    end

    it 'should raise SignatureValidationException when the body is invalid' do
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, SECRET_KEY)
      body = read_resource('invalid-body')
      expect{helper.unmarshal(body, request_headers)}.to raise_error(Webhooks::SignatureValidationException)
    end

    it 'should raise SignatureValidationException when the secret key is invalid' do
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, '1'+SECRET_KEY) # wrong key
      expect{helper.unmarshal(body, request_headers)}.to raise_error(Webhooks::SignatureValidationException)
    end

    it 'should raise SignatureValidationException when the signature is invalid' do
      Webhooks::InMemorySecretKeyStore.instance.store_secret_key(KEY_ID, SECRET_KEY)
      request_headers = [RequestHeader.new(SIGNATURE_HEADER, '1'+SIGNATURE), key_header] # wrong signature
      expect{helper.unmarshal(body, request_headers)}.to raise_error(Webhooks::SignatureValidationException)
    end
  end
end
