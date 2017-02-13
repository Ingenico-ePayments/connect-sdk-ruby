require 'spec_helper'

include Ingenico::Connect::SDK::Logging

describe ValueObfuscator do
  let(:fixed_length) { 10 }
  let(:keep_start_count) { 20 }
  let(:keep_end_count) { 30 }

  it 'cannot be explicitly instantiated' do
    expect{ValueObfuscator.new(fixed_length,
                              keep_start_count,
                              keep_end_count)
    }.to raise_error(NoMethodError)

    expect{ValueObfuscator.private_new(fixed_length,
                              keep_start_count,
                              keep_end_count)
    }.to raise_error(NoMethodError)
  end

  it 'can be initialized correctly' do
    sample = ValueObfuscator.send(:private_new, fixed_length,
                                  keep_start_count, keep_end_count)
    expect(sample.instance_variable_get(:@fixed_length)).to eq(10)
    expect(sample.instance_variable_get(:@keep_start_count)).to eq(20)
    expect(sample.instance_variable_get(:@keep_end_count)).to eq(30)
  end

  it 'has the correct class variable ALL' do
    sample = ValueObfuscator.ALL
    expect(sample.instance_variable_get(:@fixed_length)).to eq(0)
    expect(sample.instance_variable_get(:@keep_start_count)).to eq(0)
    expect(sample.instance_variable_get(:@keep_end_count)).to eq(0)
  end

  it 'can be initialized only with fixed_length' do
    sample = ValueObfuscator.fixed_length(fixed_length)
    expect(sample.instance_variable_get(:@fixed_length)).to eq(10)
    expect(sample.instance_variable_get(:@keep_start_count)).to eq(0)
    expect(sample.instance_variable_get(:@keep_end_count)).to eq(0)
  end

  it 'can be initialized only with keep_start_count' do
    sample = ValueObfuscator.keep_start_count(keep_start_count)
    expect(sample.instance_variable_get(:@fixed_length)).to eq(0)
    expect(sample.instance_variable_get(:@keep_start_count)).to eq(20)
    expect(sample.instance_variable_get(:@keep_end_count)).to eq(0)
  end

  it 'can be initialized only with keep_end_count' do
    sample = ValueObfuscator.keep_end_count(keep_end_count)
    expect(sample.instance_variable_get(:@fixed_length)).to eq(0)
    expect(sample.instance_variable_get(:@keep_start_count)).to eq(0)
    expect(sample.instance_variable_get(:@keep_end_count)).to eq(30)
  end

  context '.repeat_mask' do
    it 'returns the correct mask' do
      sample = ValueObfuscator.ALL
      expect(sample.send(:repeat_mask, 5)).to eq('*' * 5)
    end
  end

  context '.obfuscate_value' do
    subject(:sample) { ValueObfuscator.send(:private_new, fixed_length,
                                            keep_start_count, keep_end_count) }
    let(:value) { 'str' }

    it 'returns nil if value is nil' do
      expect(sample.obfuscate_value(nil)).to be_nil
    end

    it 'returns empty string if value has length 0' do
      expect(sample.obfuscate_value('')).to eq ('')
    end

    it 'calls repeak_mask(@fixed_length) if @fixed_length is not 0' do
      expect(
        sample.obfuscate_value('str')
      ).to eq(sample.send(:repeat_mask, fixed_length))
    end

    it 'calls repeak_mask(value.length) if using ALL' do
      expect(
        ValueObfuscator.ALL.obfuscate_value(value)
      ).to eq(sample.send(:repeat_mask, value.length))
    end

    context '.keep_start_count or .keep_end_count' do
      subject(:sample) { ValueObfuscator.keep_start_count(5) }

      it 'returns orignal value if value is too short' do
        expect(
          sample.obfuscate_value('str')
        ).to eq('str')
      end

      it 'returns masked string if value is long enough' do
        str = 'this str is long enough'
        expect(
          sample.obfuscate_value(str)
        ).to eq('this ' + '*' * (str.length - 5))
      end
    end
  end
end
