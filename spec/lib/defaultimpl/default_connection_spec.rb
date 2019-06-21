require 'spec_helper'
require 'uri'
require 'stringio'
require 'sinatra'

DefaultConnection ||= Ingenico::Connect::SDK::DefaultImpl::DefaultConnection
StdoutCommunicatorLogger ||= Ingenico::Connect::SDK::Logging::StdoutCommunicatorLogger

describe DefaultConnection do
  let(:connect_timeout) { 10 }
  let(:socket_timeout) { 10 }
  let(:max_connections) { 10 }
  let(:proxy_configuration) { nil }
  subject(:connection) do
    described_class.new(connect_timeout: connect_timeout,
                          socket_timeout: socket_timeout,
                          max_connections: max_connections,
                          proxy_configuration: proxy_configuration)
  end

  context 'construction' do
    context 'without proxy' do
      let(:proxy_configuration) { nil }
      let(:max_connections) { nil }

      it 'has the correct timeout values' do
        expect(
          connection.instance_variable_get(:@connect_timeout)
        ).to eq(connect_timeout)

        expect(
          connection.instance_variable_get(:@socket_timeout)
        ).to eq(socket_timeout)

        expect(
          connection.instance_variable_get(:@proxy_configuration)
        ).to be_nil
      end
    end

    context 'with proxy' do
      let(:uri) { URI('http://test-proxy') }

      context 'without authentication' do
        let(:proxy_configuration) { Ingenico::Connect::SDK::ProxyConfiguration.new(address: uri) }

        it 'has the correct timeout values and proxy settings' do
          expect(
            connection.instance_variable_get(:@connect_timeout)
          ).to eq(connect_timeout)

          expect(
            connection.instance_variable_get(:@socket_timeout)
          ).to eq(socket_timeout)

          expect(
            connection.instance_variable_get(:@proxy_configuration).host
          ).to eq('test-proxy')

          expect(
            connection.instance_variable_get(:@proxy_configuration).port
          ).to eq(80)

          expect(
            connection.instance_variable_get(:@proxy_configuration).scheme
          ).to eq('http')
        end
      end

      context 'with authentication' do
        let(:username) { 'test-username' }
        let(:password) { 'test-password' }
        let(:proxy_configuration) do
          Ingenico::Connect::SDK::ProxyConfiguration.new(address: uri,
                                      username: username,
                                      password: password)
        end

        it 'has the correct timeout values and proxy settings' do
          expect(
            connection.instance_variable_get(:@connect_timeout)
          ).to eq(connect_timeout)

          expect(
            connection.instance_variable_get(:@socket_timeout)
          ).to eq(socket_timeout)

          pc = connection.instance_variable_get(:@proxy_configuration)

          expect(pc.host).to eq('test-proxy')
          expect(pc.port).to eq(80)
          expect(pc.scheme).to eq('http')
          expect(pc.username).to eq(username)
          expect(pc.password).to eq(password)
        end
      end
    end
  end # construction

  context 'sending and receiving' do

    class DummyResponse
      def pop
        self
      end

      def status_code
        200
      end

      def content
        StringIO.new(body || '')
      end

      attr_accessor :headers, :body, :content_type, :uri
    end

    context 'without proxy' do
      before :example do
        # mock the HTTPClient obj inside DefaultConnection
        # for each type of requests so no real requests will be made
        client = connection.instance_variable_get(:@http_client)
        allow(client).to receive(:get_async) do |uri, hash|
          dummy_response = DummyResponse.new
          dummy_response.headers = hash[:header]
          dummy_response.uri = uri
          dummy_response
        end

        allow(client).to receive(:delete_async) do |uri, hash|
          dummy_response = DummyResponse.new
          dummy_response.headers = hash[:header]
          dummy_response.uri = uri
          dummy_response
        end

        allow(client).to receive(:post_async) do |uri, hash|
          dummy_response = DummyResponse.new
          dummy_response.headers = hash[:header]
          dummy_response.uri = uri
          dummy_response.body = hash[:body]
          dummy_response
        end

        allow(client).to receive(:put_async) do |uri, hash|
          dummy_response = DummyResponse.new
          dummy_response.headers = hash[:header]
          dummy_response.uri = uri
          dummy_response.body = hash[:body]
          dummy_response
        end

        allow(client).to receive(:request_async) do |_method, uri, hash|
          dummy_response = DummyResponse.new
          dummy_response.headers = hash[:header]
          dummy_response.uri = uri
          dummy_response.body = hash[:body]
          dummy_response
        end
      end

      let(:headers) { { 'Content-Type' => 'application/json', 'header1' => 'dummy', 'header2' => 'yammy' } }
      let(:sdk_headers) { headers.map {|k, v| Ingenico::Connect::SDK::ResponseHeader.new(k, v) } }
      let(:uri) { URI('http://foobar.com/v1/1234/services/convert/amount?source=EUR&amount=1000&target=USD') }

      def expected_header_str(headers)
        headers.inject('') { |str, (k, v)| %Q{#{str}#{k}="#{v}", }}.chomp(', ')
      end

      def sdk_headers_to_s(sdk_headers)
        sdk_headers.inject('') { |s, h| s + h.name + ':' + h.value + ',' }
      end

      it 'sends the correct get request' do
        response_headers = nil
        connection.get(uri, sdk_headers) { |s, h, c| response_headers = h }
        expect(sdk_headers_to_s(response_headers)).to eq(sdk_headers_to_s(sdk_headers))
      end

      it 'sends the correct delete request' do
        response_headers = nil
        connection.delete(uri, sdk_headers) { |s, h, c| response_headers = h }
        expect(sdk_headers_to_s(response_headers)).to eq(sdk_headers_to_s(sdk_headers))
      end

      context 'with body' do
        let(:body) { 'dummy body' }

        it 'sends the correct post request' do
          response_headers = nil
          response_body = ''
          connection.post(uri, sdk_headers, body) { |s, h, c| response_headers, response_body = h, c.read.force_encoding('UTF-8') }
          expect(ResponseHeader.get_header_value(response_headers, 'Content-Type')).to eq('application/json')
          expect(response_body).to eq(body)
        end

        it 'sends the correct put request' do
          response_headers = nil
          response_body = ''
          connection.put(uri, sdk_headers, body) { |s, h, c| response_headers, response_body = h, c.read.force_encoding('UTF-8') }
          expect(ResponseHeader.get_header_value(response_headers, 'Content-Type')).to eq('application/json')
          expect(response_body).to eq(body)
        end
      end

      context 'with logging' do
        let(:logger) { StdoutCommunicatorLogger.INSTANCE }
        let(:request_regex) do
          # captures:
          #   1) uuid
          #   2) method
          #   3) uri
          #   4) headers
          %r{\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2} Outgoing request \(requestId='([-a-zA-Z0-9]+)'\):
  method:       '([A-Z]+)'
  uri:          '(.+)'
  headers:      '(.*)'}
        end

        let(:request_with_body_regex) do
          # captures:
          #   1) uuid
          #   2) method
          #   3) uri
          #   4) headers
          #   5) content_type
          #   6) body
          %r{\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2} Outgoing request \(requestId='([-a-zA-Z0-9]+)'\):
  method:       '([A-Z]+)'
  uri:          '(.+)'
  headers:      '(.*)'
  content-type: '(.+)'
  body:         '(.+)'}
        end

        let(:response_regex) do
          # captures:
          #   1) status-cde
          #   2) headers
          #   3) content-type
          #   4) body
          %r{\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2} Incoming response \(requestId='([-a-zA-Z0-9]+)'.*\):
  status-code:  '(\d+)'
  headers:      '(.*)'
  content-type: '(.*)'
  body:         '(.*)'}
        end

        let(:regex) { Regexp.new(request_regex.to_s + "\n" + response_regex.to_s) }

        let(:with_body_regex) do
          Regexp.new(request_with_body_regex.to_s + "\n" + response_regex.to_s)
        end

        before :example do
          $stdout = StringIO.new
          connection.enable_logging(logger)
        end

        after :example do
          connection.disable_logging
          $stdout.close
          $stdout = STDOUT
        end

        # TODO: DELETE is basically the same, do we need to test it?
        it 'logs the correct get request' do
          connection.get(uri, sdk_headers) { |s, h, c| }
          expect($stdout.string).to match(regex)
          match_info = $stdout.string.match(regex)
          expect(match_info[2]).to eq('GET')
          expect(match_info[3]).to eq(uri.path + '?' + uri.query)
          expect(match_info[4]).to eq(expected_header_str(headers))
        end

        # TODO: same for PUT
        context 'with body' do
          let(:body) { 'dummy body' }
          it 'logs the correct post request' do
            connection.post(uri, sdk_headers, body) { |s, h, c| }
            expect($stdout.string).to match(with_body_regex)
            match_info = $stdout.string.match(with_body_regex)
            expect(match_info[2]).to eq('POST')
            expect(match_info[3]).to eq(uri.path + '?' + uri.query)
            headers['Content-Type'] = 'application/json' # with body
            expect(match_info[4]).to eq(expected_header_str(headers))
            expect(match_info[5]).to eq('application/json')
            expect(match_info[6]).to eq(body)
          end
        end
      end
    end
  end # sending and receiving

  context 'connection' do
    server = nil
    before :context do
      WebMock.allow_net_connect!
      server = Thread.new do
        class DummyServer < Sinatra::Application
          prefix = 'spec/fixtures/resources/defaultimpl/'

          get '/convert_amount.json' do
            content_type :json
            IO.read(prefix + 'convertAmount.json')
          end

          get '/' do
            'testing'
          end

          run!
        end
      end
      sleep 1 # wait for the server
    end

    after :context do
      Thread.kill(server) # shutdown the server
      WebMock.disable_net_connect!
    end

    before :example do
      connection.close
    end

    let(:uri) { URI('http://localhost:4567/convert_amount.json') }
    let(:sdk_headers) { [] }

    it 'uses persistent connection if HTTP 1.1 is supported' do
      100.times { connection.get(uri, sdk_headers) { |x, y| } }
      expect(connection.session_count).to eq(1)
    end

    it 'retrieves the correct json file' do
      response_body = ''
      connection.get(uri, sdk_headers) { |status, headers, body| response_body = body.read.force_encoding('UTF-8') }
      prefix = 'spec/fixtures/resources/defaultimpl/'
      expect(response_body).to eq(IO.read(prefix + 'convertAmount.json'))
    end

    it 'can explicitly close connections' do
      connection.get(uri, sdk_headers) { |x, y| }

      connection.close
      expect(connection.session_count).to eq(0)

      connection.get(uri, sdk_headers) { |x, y| }
    end
  end
end
