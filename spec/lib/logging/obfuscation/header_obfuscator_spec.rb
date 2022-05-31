require 'spec_helper'

HeaderObfuscator = Ingenico::Connect::SDK::Logging::Obfuscation::HeaderObfuscator
Obfuscation = Ingenico::Connect::SDK::Logging::Obfuscation

def test_obfuscate_header_with_match(name, original_value, expected_value,
                                     header_obfuscator=HeaderObfuscator.default_obfuscator)
  expected_value == header_obfuscator.obfuscate_header(name, original_value)
end

def test_obfuscate_header_with_no_match(name, original_value)
  original_value == HeaderObfuscator.default_obfuscator.obfuscate_header(name, original_value)
end

describe HeaderObfuscator do
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

    it 'works with a custom rule' do
      header_obfuscator = HeaderObfuscator.new(additional_rules={
        'content-type' => Obfuscation.obfuscate_all
      })

      expect(
        test_obfuscate_header_with_match("Authorization",
                                         "Basic QWxhZGRpbjpPcGVuU2VzYW1l",
                                         "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("authorization",
                                         "Basic QWxhZGRpbjpPcGVuU2VzYW1l",
                                         "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("AUTHORIZATION",
                                         "Basic QWxhZGRpbjpPcGVuU2VzYW1l",
                                         "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-Authentication-Token",
                                         "foobar", "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("x-gcs-authentication-token",
                                         "foobar", "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-AUTHENTICATION-TOKEN",
                                         "foobar", "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-CallerPassword", "foobar",
                                         "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("x-gcs-callerpassword", "foobar",
                                         "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("X-GCS-CALLERPASSWORD", "foobar",
                                         "********",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("Content-Type", "application/json",
                                         "****************",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("content-type", "application/json",
                                         "****************",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)

      expect(
        test_obfuscate_header_with_match("CONTENT-TYPE", "application/json",
                                         "****************",
                                         header_obfuscator=header_obfuscator)
      ).to be(true)
    end

  end
end
