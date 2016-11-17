require 'spec_helper'
require 'ingenico/connect/sdk/merchant/products/directory_params'

describe 'DirectoryParams' do
  subject(:params){Ingenico::Connect::SDK::Merchant::Products::DirectoryParams.new}

  it 'should output an empty list when no parameters are present' do
    expect(params.to_request_parameters).to eq([])
  end

  it 'accepts parameters' do
    params.country_code = 'NL'
    params.currency_code = 'EUR'
    expected = [Ingenico::Connect::SDK::RequestParam.new('countryCode', 'NL'), Ingenico::Connect::SDK::RequestParam.new('currencyCode', 'EUR')]

    expect(params.to_request_parameters).to include(expected)
  end

  it 'allows for deletion' do
    params.country_code = 'NL'
    params.currency_code = 'EUR'
    params.country_code = nil
    params.currency_code = nil

    expect(params.to_request_parameters).to eq([])
  end
end
