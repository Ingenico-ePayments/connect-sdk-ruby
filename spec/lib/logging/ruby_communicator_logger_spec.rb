require 'spec_helper'
require 'logger'
require 'English'

RubyCommunicatorLogger = Ingenico::Connect::SDK::Logging::RubyCommunicatorLogger

describe RubyCommunicatorLogger do

  # TODO: is it possbile that we run into a filename collision here?
  let(:filename) { "testing-#{(0...8).map { (65 + rand(26)).chr }.join}.log" }
  let(:logger) { Logger.new(RubyCommunicatorLogger.create_logfile(filename)) }
  let(:regex) { Regexp.new("#{tag}, .* -- : (.*)#{$RS}", Regexp::MULTILINE) }
  subject(:sample) { RubyCommunicatorLogger.new(logger, logLevel, errorLevel) }

  def expected_msg(msg, thrown=false)
    return msg unless thrown
    msg + $RS + thrown.backtrace.join($RS)
  end

  after do
    # delete the log files
    logger.close
    File.delete(filename)
  end

  context 'logging without error' do

    let(:errorLevel) { Logger::WARN }
    let(:msg) { 'Hello World' }

    context "with level 'INFO'" do
      let(:logLevel) { Logger::INFO }
      let(:tag) { 'I' }

      it 'logs with the correct logLevel and message' do
        sample.log(msg)
        line = IO.readlines(filename).last

        expect(line).to match(regex)
        expect(
          line.match(regex)[1] # first capture
        ).to eq(expected_msg(msg))
      end
    end

    context "with level 'WARN'" do
      let(:logLevel) { Logger::WARN }
      let(:tag) { 'W' }

      it 'logs with the correct logLevel and message' do
        sample.log(msg)
        line = IO.readlines(filename).last

        expect(line).to match(regex)
        expect(
          line.match(regex)[1] # idem
        ).to eq(expected_msg(msg))
      end
    end
  end

  context 'logging with error' do
    let(:errorLevel) { Logger::WARN }
    let(:logLevel) { Logger::INFO }
    let(:msg) { 'Some error message' }
    let(:tag) { 'W' }

    it 'logs with the errorLevel and message with backtrace' do
      def dummy_method
        raise 'Boom!'
      end

      begin
        dummy_method
      rescue => exception
        sample.log(msg, exception)
      end

      line = IO.read(filename)
      expect(line).to match(regex)
      expect(line.match(regex)[1]).to eq(expected_msg(msg, exception))
    end
  end
end
