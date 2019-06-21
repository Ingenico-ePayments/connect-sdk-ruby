require 'spec_helper'

Obfuscator ||= Ingenico::Connect::SDK::Logging::Obfuscator
ValueObfuscator ||= Ingenico::Connect::SDK::Logging::ValueObfuscator

describe Obfuscator do
  subject(:sample) { Obfuscator.new(obsfs, case_insensitive) }
  context 'initialize' do
    let(:obsfs) { { 'k1' => ValueObfuscator.fixed_length(5),
                    'k2' => ValueObfuscator.keep_start_count(2) } }

    context 'case sensitive' do
      let(:case_insensitive) { false }
      it 'deep-copies obfuscators' do
        obsfs_copy = sample.instance_variable_get(:@obfuscators)
        obsfs['k2'] = nil
        expect(obsfs_copy).not_to be_nil
      end
    end

    context 'case insensitive' do
      let(:case_insensitive) { true }
      it 'deep-copies obfuscators' do
        obsfs_copy = sample.instance_variable_get(:@obfuscators)
        expect(obsfs_copy['K2']).to equal(obsfs_copy['k2'])
        obsfs['k2'] = nil
        expect(obsfs_copy).not_to be_nil
      end
    end
  end

  context '.obfuscate_value' do
    let(:obsfs) { { 'k1' => ValueObfuscator.fixed_length(10),
                    'k2' => ValueObfuscator.keep_start_count(1) } }
    let(:case_insensitive) { false }
    it 'uses the correct obfuscator' do
      str = 'str'

      expect(
        sample.obfuscate_value('k1', str)
      ).to eq('*' * 10)

      expect(
        sample.obfuscate_value('k2', str)
      ).to eq('s**')

      expect(
        sample.obfuscate_value('k3', str)
      ).to eq(str)
    end
  end
end
