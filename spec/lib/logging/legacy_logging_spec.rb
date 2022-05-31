require 'spec_helper'

PROPERTY_OBFUSCATOR = Ingenico::Connect::SDK::Logging::PropertyObfuscator.builder
  .with_keep_end_count("cardNumber", 4)
  .with_keep_end_count("expiryDate", 2)
  .with_all("cvv")
  .with_keep_end_count("iban", 4)
  .with_keep_end_count("accountNumber", 4)
  .with_keep_end_count("reformattedAccountNumber", 4)
  .with_keep_start_count("bin", 6)
  .with_all("value")
  .with_fixed_length("keyId", 8)
  .with_fixed_length("secretKey", 8)
  .with_fixed_length("publicKey", 8)
  .with_fixed_length("userAuthenticationToken", 8)
  .with_fixed_length("encryptedPayload", 8)
  .with_fixed_length("decryptedPayload", 8)
  .with_fixed_length("encryptedCustomerInput", 8)
  .build

HEADER_OBFUSCATOR = Ingenico::Connect::SDK::Logging::HeaderObfuscator.builder
  .with_fixed_length("Authorization", 8)
  .with_fixed_length("WWW-Authenticate", 8)
  .with_fixed_length("Proxy-Authenticate", 8)
  .with_fixed_length("Proxy-Authorization", 8)
  .with_fixed_length("X-GCS-Authentication-Token", 8)
  .with_fixed_length("X-GCS-CallerPassword", 8)
  .build


def test_obfuscate_body_with_matches(original_resource, obfuscated_resource)
  prefix = 'spec/fixtures/resources/logging/'
  body = IO.read(prefix + original_resource)
  expected = IO.read(prefix + obfuscated_resource)
  expected == PROPERTY_OBFUSCATOR.obfuscate(body)
end

def test_obfuscate_body_with_no_matches(resource)
  prefix = 'spec/fixtures/resources/logging/'
  body = IO.read(prefix + resource)
  body == PROPERTY_OBFUSCATOR.obfuscate(body)
end

def test_obfuscate_header_with_match(name, original_value, expected_value)
  expected_value == HEADER_OBFUSCATOR.obfuscate_header(name, original_value)
end

def test_obfuscate_header_with_no_match(name, original_value)
  original_value == HEADER_OBFUSCATOR.obfuscate_header(name, original_value)
end

describe Ingenico::Connect::SDK::Logging::PropertyObfuscator do
  context '.obfuscate_body()' do

    context 'with null body' do
      let(:body) { nil }
      it 'returns null body' do
        expect(
          PROPERTY_OBFUSCATOR.obfuscate(body)
        ).to be_nil
      end
    end

    context 'with empty body' do
      let(:body) { '' }
      it 'returns empty body' do
        expect(
          PROPERTY_OBFUSCATOR.obfuscate(body)
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
end

describe Ingenico::Connect::SDK::Logging::HeaderObfuscator do
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
