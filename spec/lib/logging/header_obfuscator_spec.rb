require 'spec_helper'

LegacyHeaderObfuscator ||= Ingenico::Connect::SDK::Logging::HeaderObfuscator
ValueObfuscator ||= Ingenico::Connect::SDK::Logging::ValueObfuscator

describe LegacyHeaderObfuscator do
  subject(:sample) { LegacyHeaderObfuscator.new(obsfs) }
  context 'initialize' do
    let(:obsfs) { { 'k1' => ValueObfuscator.fixed_length(5),
                    'k2' => ValueObfuscator.keep_start_count(2) } }
    it 'is cass insensitive' do
      obsfs_copy = sample.instance_variable_get(:@obfuscators)
      expect(
        obsfs_copy['k1']
      ).to equal(obsfs_copy['K1'])
    end
  end

  it '.builder returns new Builder obj' do
    expect(
      LegacyHeaderObfuscator.builder.is_a? LegacyHeaderObfuscator::Builder
    ).to be(true)
  end

  context 'Builder' do
    it 'checks argument type' do
      b = LegacyHeaderObfuscator.builder
      expect {
        b.with_all(123)
      }.to raise_error(ArgumentError)

      expect {
        b.with_fixed_length(123, 123)
      }.to raise_error(ArgumentError)
    end

    it 'inherits parent methods' do
      b = LegacyHeaderObfuscator.builder
      expect {
        b.with_keep_start_count('k1', 123)
        b.with_keep_end_count('k2', 123)
      }.not_to raise_error
    end

    it 'implements build method' do
      expect(
        LegacyHeaderObfuscator.builder.build.is_a? LegacyHeaderObfuscator
      ).to be(true)
    end
  end
end
