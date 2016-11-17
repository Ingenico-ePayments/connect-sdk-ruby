require 'spec_helper'
require 'uri'

Communicator ||= Ingenico::Connect::SDK::Communicator
DefaultMarshaller ||= Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller
RequestParam ||= Ingenico::Connect::SDK::RequestParam

describe Communicator do

  let(:session){instance_double('Session', :api_endpoint => URI('https://api-sandbox.globalcollect.com'))}
  let(:communicator){communicator = Communicator.new(session, DefaultMarshaller.INSTANCE)}
  context 'to_absolute_uri()' do
    it 'accepts a uri with or without a leading slash' do
      uri1 = communicator.send(:to_absolute_uri, 'v1/merchant/20000/convertamount', [])
      uri2 = communicator.send(:to_absolute_uri, '/v1/merchant/20000/convertamount', [])
      # Ruby URI library adds port in HTTPS url's by default
      expect(uri1.to_s).to eq('https://api-sandbox.globalcollect.com:443/v1/merchant/20000/convertamount')
      expect(uri2.to_s).to eq('https://api-sandbox.globalcollect.com:443/v1/merchant/20000/convertamount')
    end

    it 'adds request parameters to the uri' do
      request_params = [RequestParam.new('amount', '123'), RequestParam.new('source', 'USD'),
                        RequestParam.new('target', 'EUR'), RequestParam.new('dummy', 'é&%=')]

      uri = communicator.send(:to_absolute_uri, 'v1/merchant/20000/convertamount', request_params)

      expect(uri.to_s).to eq('https://api-sandbox.globalcollect.com:443/v1/merchant/20000/convertamount'\
                             '?amount=123&source=USD&target=EUR&dummy=%C3%A9%26%25%3D')
    end
  end
end
