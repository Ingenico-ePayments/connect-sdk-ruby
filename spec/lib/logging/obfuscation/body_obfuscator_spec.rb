require 'spec_helper'

BodyObfuscator = Ingenico::Connect::SDK::Logging::Obfuscation::BodyObfuscator

def test_obfuscate_body_with_matches(original_resource, obfuscated_resource,
                                     body_obfuscator=BodyObfuscator.default_obfuscator)
  prefix = 'spec/fixtures/resources/logging/'
  body = IO.read(prefix + original_resource)
  expected = IO.read(prefix + obfuscated_resource)
  expected == body_obfuscator.obfuscate_body(body)
end

def test_obfuscate_body_with_no_matches(resource)
  prefix = 'spec/fixtures/resources/logging/'
  body = IO.read(prefix + resource)
  body == BodyObfuscator.default_obfuscator.obfuscate_body(body)
end

describe BodyObfuscator do
  context '.obfuscate_body()' do

    context 'with null body' do
      let(:body) { nil }
      it 'returns null body' do
        expect(
          BodyObfuscator.default_obfuscator.obfuscate_body(body)
        ).to be_nil
      end
    end

    context 'with empty body' do
      let(:body) { '' }
      it 'returns empty body' do
        expect(
          BodyObfuscator.default_obfuscator.obfuscate_body(body)
        ).to eq(body)
      end
    end

    it 'works with card' do
      expect(
        test_obfuscate_body_with_matches("bodyWithCardOriginal.json",
                                         "bodyWithCardObfuscated.json")
      ).to be(true)
    end

    it 'works with custom card rule' do
      def obfuscate_custom(value)
        # range describes the range of characters to replace with asterisks
        range = 6...(value.length - 4)
        value[range] = '*' * range.size
        value
      end

      body_obfuscator = BodyObfuscator.new(additional_rules={
        'cardNumber' => method(:obfuscate_custom)
      })

      expect(
        test_obfuscate_body_with_matches("bodyWithCardOriginal.json",
                                         "bodyWithCardCustomObfuscated.json",
                                         body_obfuscator=body_obfuscator)
      ).to be(true)
    end

    it 'works with iban' do
      expect(
        test_obfuscate_body_with_matches("bodyWithIbanOriginal.json",
                                         "bodyWithIbanObfuscated.json")
      ).to be(true)
    end

    it 'works with bin' do
      expect(
        test_obfuscate_body_with_matches("bodyWithBinOriginal.json",
                                         "bodyWithBinObfuscated.json")
      ).to be(true)
    end

    it 'works when there is no match' do
      expect(
        test_obfuscate_body_with_no_matches("bodyNoObfuscation.json")
      ).to be(true)
    end

    it 'works with object' do
      expect(
        test_obfuscate_body_with_matches("bodyWithObjectOriginal.json",
                                         "bodyWithObjectObfuscated.json")
      ).to be(true)
    end
  end
end
