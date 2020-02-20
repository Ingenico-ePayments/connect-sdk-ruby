require 'spec_helper'

LoggingUtil = Ingenico::Connect::SDK::Logging::LoggingUtil

def test_obfuscate_body_with_matches(original_resource, obfuscated_resource)
  prefix = 'spec/fixtures/resources/logging/'
  body = IO.read(prefix + original_resource)
  expected = IO.read(prefix + obfuscated_resource)
  expected == LoggingUtil.obfuscate_body(body)
end

def test_obfuscate_body_with_no_matches(resource)
  prefix = 'spec/fixtures/resources/logging/'
  body = IO.read(prefix + resource)
  body == LoggingUtil.obfuscate_body(body)
end

def test_obfuscate_header_with_match(name, original_value, expected_value)
  expected_value == LoggingUtil.obfuscate_header(name, original_value)
end

def test_obfuscate_header_with_no_match(name, original_value)
  original_value == LoggingUtil.obfuscate_header(name, original_value)
end

describe LoggingUtil do
  context '.obfuscate_body()' do

    context 'with null body' do
      let(:body) { nil }
      it 'returns null body' do
        expect(
          LoggingUtil.obfuscate_body(body)
        ).to be_nil
      end
    end

    context 'with empty body' do
      let(:body) { '' }
      it 'returns empty body' do
        expect(
          LoggingUtil.obfuscate_body(body)
        ).to eq(body)
      end
    end

    it 'works with card' do
      expect(
        test_obfuscate_body_with_matches("bodyWithCardOriginal.json",
                                         "bodyWithCardObfuscated.json")
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

  context '.obfuscate_header()' do
    it 'works when there is a match' do
      expect(
        test_obfuscate_header_with_match("Authorization",
                                         "Basic QWxhZGRpbjpPcGVuU2VzYW1l",
                                         "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("authorization",
                                         "Basic QWxhZGRpbjpPcGVuU2VzYW1l",
                                         "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("AUTHORIZATION",
                                         "Basic QWxhZGRpbjpPcGVuU2VzYW1l",
                                         "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-Authentication-Token",
                                         "foobar", "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("x-gcs-authentication-token",
                                         "foobar", "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-AUTHENTICATION-TOKEN",
                                         "foobar", "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-CallerPassword", "foobar",
                                         "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("x-gcs-callerpassword", "foobar",
                                     "********")
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-CALLERPASSWORD", "foobar",
                                         "********")
      ).to be(true)
    end

    it 'works when there is no match' do
      expect(
        test_obfuscate_header_with_no_match("Content-Type",
                                            "application/json")
      ).to be(true)

      expect(
        test_obfuscate_header_with_no_match("content-type",
                                            "application/json")
      ).to be(true)

      expect(
        test_obfuscate_header_with_no_match("CONTENT-TYPE",
                                            "application/json")
      ).to be(true)
    end
  end
end
