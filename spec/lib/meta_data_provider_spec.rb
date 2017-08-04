require 'spec_helper'
require 'ingenico/connect/sdk/domain/metadata/shopping_cart_extension'
require 'base64'

describe 'MetaDataProvider' do

  MetaDataProvider ||= Ingenico::Connect::SDK::MetaDataProvider
  RequestHeader ||= Ingenico::Connect::SDK::RequestHeader

  it 'can give meta_data_headers with a full shopping cart' do
    shopping_cart_extension = Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension.new('Ingenico.creator', 'Extension', '1.0', 'ExtensionId')
    meta_data_provider = MetaDataProvider.new('Ingenico', shopping_cart_extension: shopping_cart_extension)

    request_headers = meta_data_provider.meta_data_headers
    expect(request_headers.length).to eq(1)
    expect(request_headers.length).to eq(1)

    # Server meta info is stored in json format and encoded using utf-8 and base64
    server_meta_info_json = Base64.strict_decode64(request_headers[0].value).force_encoding('utf-8')
    server_meta_info = Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller.INSTANCE.unmarshal(server_meta_info_json, MetaDataProvider::ServerMetaInfo)

    expect(server_meta_info.platform_identifier).to eq(meta_data_provider.send(:get_platform_identifier))
    expect(server_meta_info.sdk_identifier).to eq(meta_data_provider.send(:get_sdk_identifier))
    expect(server_meta_info.sdk_creator).to eq('Ingenico')
    expect(server_meta_info.shopping_cart_extension.creator).to eq(shopping_cart_extension.creator)
    expect(server_meta_info.shopping_cart_extension.name).to eq(shopping_cart_extension.name)
    expect(server_meta_info.shopping_cart_extension.version).to eq(shopping_cart_extension.version)
    expect(server_meta_info.shopping_cart_extension.extension_id).to eq(shopping_cart_extension.extension_id)
  end

  it 'can give meta_data_headers with a full shopping cart without an extension id' do
    shopping_cart_extension = Ingenico::Connect::SDK::Domain::Metadata::ShoppingCartExtension.new('Ingenico.creator', 'Extension', '1.0')
    meta_data_provider = MetaDataProvider.new('Ingenico', shopping_cart_extension: shopping_cart_extension)

    request_headers = meta_data_provider.meta_data_headers
    expect(request_headers.length).to eq(1)
    expect(request_headers.length).to eq(1)

    # Server meta info is stored in json format and encoded using utf-8 and base64
    server_meta_info_json = Base64.strict_decode64(request_headers[0].value).force_encoding('utf-8')
    server_meta_info = Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller.INSTANCE.unmarshal(server_meta_info_json, MetaDataProvider::ServerMetaInfo)

    expect(server_meta_info.platform_identifier).to eq(meta_data_provider.send(:get_platform_identifier))
    expect(server_meta_info.sdk_identifier).to eq(meta_data_provider.send(:get_sdk_identifier))
    expect(server_meta_info.sdk_creator).to eq('Ingenico')
    expect(server_meta_info.shopping_cart_extension.creator).to eq(shopping_cart_extension.creator)
    expect(server_meta_info.shopping_cart_extension.name).to eq(shopping_cart_extension.name)
    expect(server_meta_info.shopping_cart_extension.version).to eq(shopping_cart_extension.version)
    expect(server_meta_info.shopping_cart_extension.extension_id).to eq(shopping_cart_extension.extension_id)
  end

  it 'provides a server_meta_info header when no additional headers are provided' do
    meta_data_provider = MetaDataProvider.new('Ingenico')

    request_headers = meta_data_provider.meta_data_headers
    expect(request_headers.length).to eq(1)
    expect(request_headers[0].name).to eq('X-GCS-ServerMetaInfo')
    expect(request_headers[0].value).to_not be_nil

    # Server meta info is stored in json format and encoded using utf-8 and base64
    server_meta_info_json = Base64.strict_decode64(request_headers[0].value).force_encoding('utf-8')
    server_meta_info = Ingenico::Connect::SDK::DefaultImpl::DefaultMarshaller.INSTANCE.unmarshal(server_meta_info_json, MetaDataProvider::ServerMetaInfo)

    expect(server_meta_info.platform_identifier).to eq(meta_data_provider.send(:get_platform_identifier))
    expect(server_meta_info.sdk_identifier).to eq(meta_data_provider.send(:get_sdk_identifier))
    expect(server_meta_info.sdk_creator).to eq('Ingenico')
  end

  it 'provides a server_meta_info header and any additional headers provided' do
    additional_headers = [RequestHeader.new('Header1', '&=$%'), RequestHeader.new('Header2', 'blah, blah'),
                          RequestHeader.new('Header3', 'foo')]
    meta_data_provider = MetaDataProvider.new('Ingenico', additional_request_headers: additional_headers)
    request_headers = meta_data_provider.meta_data_headers

    expect(request_headers.length).to eq(4)

    i = 1
    additional_headers.each do |header|
      expect(request_headers[i]).to eq(header)
      i += 1
    end
  end

  it 'refuses headers marked as prohibited' do
    MetaDataProvider.PROHIBITED_HEADERS.each do |name|
      additional_headers = [RequestHeader.new('Header1', 'Value1'),
                            RequestHeader.new(name, 'blood diamonds'),
                            RequestHeader.new('Header3', 'Value3')]
      expect{MetaDataProvider.new('Ingenico', additional_request_headers: additional_headers)}
          .to raise_error{|error| expect(error.message).to include(name)}
    end
  end
end
