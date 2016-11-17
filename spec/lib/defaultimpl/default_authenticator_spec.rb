require 'uri'
require 'spec_helper'

describe 'DefaultAuthenticator' do
  RequestHeader ||= Ingenico::Connect::SDK::RequestHeader

  let(:authenticator) {Ingenico::Connect::SDK::DefaultImpl::DefaultAuthenticator.new(
      Ingenico::Connect::SDK::DefaultImpl::AuthorizationType.get_authorization('v1HMAC'), 'apiKeyId', 'secretApiKey')}

  it 'should canonicalize headers' do
    expect(authenticator.send(:to_canonical_header_value, "aap\nnoot  ")).to eq('aap noot')
    expect(authenticator.send(:to_canonical_header_value, " aap\r\n  noot")).to eq('aap noot')
  end

  # Tests if a request can be converted to a canonical format to sign
  it 'converts a request properly to signable data' do
    http_headers = [RequestHeader.new('X-GCS-ServerMetaInfo',
                                       '{"platformIdentifier":"Windows 7/6.1 Java/1.7 (Oracle Corporation; '+
                                       'Java HotSpot(TM) 64-Bit Server VM; 1.7.0_45)","sdkIdentifier":"1.0"}'),
                    RequestHeader.new('Content-Type', 'application/json'),
                    RequestHeader.new('X-GCS-ClientMetaInfo', '{"aap","noot"}'),
                    RequestHeader.new('User-Agent', 'Apache-HttpClient/4.3.4 (java 1.5)'),
                    RequestHeader.new('Date', 'Mon, 07 Jul 2014 12:12:40 GMT')]

    expected_start = "POST\n"+
                     "application/json\n"
    expected_end = %Q(x-gcs-clientmetainfo:{"aap","noot"}\n) +
                   %Q(x-gcs-servermetainfo:{"platformIdentifier":"Windows 7/6.1 Java/1.7 )+
                    %Q((Oracle Corporation; Java HotSpot(TM) 64-Bit Server VM; 1.7.0_45)",)+
                    %Q("sdkIdentifier":"1.0"}\n)+
                   %Q(/v1/9991/services%20bla/convert/amount?aap=noot&mies=geen%20noot\n)

    data_to_sign = authenticator.send(:to_data_to_sign, 'POST',
                           URI('http://localhost:8080/v1/9991/services%20bla/convert/amount?aap=noot&mies=geen%20noot'),
                           http_headers)

    # NOTE: Ruby has two types of range about end point:
    # 1) inclusive: 0..1 => 0, 1
    # 2) exclusive: 0...1 => 0
    actual_start = data_to_sign[0...22]
    actual_end = data_to_sign[52..-1]
    expect(actual_start).to eq(expected_start)
    expect(actual_end).to eq(expected_end)
  end

  context 'create_authentication_signature' do
    it 'creates authentication signatures' do
      data_to_sign = "DELETE\n"+
          "application/json\n"+
          "Fri, 06 Jun 2014 13:39:43 GMT\n"+
          "x-gcs-clientmetainfo:processed header value\n"+
          "x-gcs-customerheader:processed header value\n"+
          "x-gcs-servermetainfo:processed header value\n"+
          "/v1/9991/tokens/123456789\n"

      authentication_signature = authenticator.send(:create_auth_signature, data_to_sign)

      expect(authentication_signature).to eq('VfnXpPBQQoHZivTcAg0JvOWkhnzlPnaCPKpTQn/uMJM=')
    end

    it 'creates authentication signatures for more than one key' do
      authenticator = Ingenico::Connect::SDK::DefaultImpl::DefaultAuthenticator.new(
        Ingenico::Connect::SDK::DefaultImpl::AuthorizationType.get_authorization('v1HMAC'), 'apiKeyId', '6Kj5HT0MQKC6D8eb7W3lTg71kVKVDSt1')
      data_to_sign = "GET\n"+
                     "\n"+
                     "Fri, 06 Jun 2014 13:39:43 GMT\n"+
                     "/v1/9991/tokens/123456789\n"

      authentication_signature = authenticator.send(:create_auth_signature, data_to_sign)

      expect(authentication_signature).to eq('9ond5EIN05dBXJGCLRK5om9pxHsyrh/12pZJ7bvmwNM=')
    end
  end
end
