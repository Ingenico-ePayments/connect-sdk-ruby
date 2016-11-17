require 'spec_helper'
require 'ingenico/connect/sdk/merchant/tokens/delete_token_params'

DeleteTokenParams ||= Ingenico::Connect::SDK::Merchant::Tokens::DeleteTokenParams
RequestParam ||= Ingenico::Connect::SDK::RequestParam

describe 'DeleteTokenParams' do

  let(:params){params = DeleteTokenParams.new}

  context 'to_request_parameters' do
    it 'should return an empty list as default' do
      expect(params.to_request_parameters).to eq([])
    end

    it 'should be able to convert set parameters to RequestParameters' do
      params.mandate_cancel_date = '20160610'
      expect(params.to_request_parameters).to eq([RequestParam.new('mandateCancelDate', '20160610')])
    end
  end
end
