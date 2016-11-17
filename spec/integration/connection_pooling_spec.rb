require 'spec_helper'
require 'integration_setup'
require 'ingenico/connect/sdk/merchant/services/convert_amount_params'
require 'ingenico/connect/sdk/factory'
require 'yaml'

describe 'connection pooling with the server' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'runs with one connection per request' do
    run_connection_pooling_test(10, 10)
  end

  it 'runs with one connection per two requests' do
    run_connection_pooling_test(10, 5)
  end

  it 'runs with one connection for 10 requests' do
    run_connection_pooling_test(10, 1)
  end
end

class Event  # as per https://emptysqua.re/blog/an-event-synchronization-primitive-for-ruby/
  def initialize
    @lock = Mutex.new
    @cond = ConditionVariable.new
    @flag = false
  end

  def set
    @lock.synchronize do
      @flag = true
      @cond.broadcast
    end
  end

  def wait
    @lock.synchronize do
      unless @flag
        @cond.wait(@lock)
      end
    end
  end
end

# sends *request_count* requests with a maximum number of connections in the connection pool equal to *max_connections*
def run_connection_pooling_test(request_count, max_connections)
  configuration = Integration.init_communicator_configuration(max_connections: max_connections)
  begin
    communicator = Ingenico::Connect::SDK::Factory.create_communicator_from_configuration(configuration)
    flag = Event.new
    runner_threads = Array.new(request_count){ |i| Thread.new{run_request(i, communicator, flag)} }
    flag.set
  ensure
    communicator.close unless communicator.nil?
  end
  results = Array.new(request_count){ |i| runner_threads[i].value }  # returned values are arrays of size 2
  puts "running times of #{request_count} threads using #{max_connections} connections:"
  puts "each pair is the thread's start and end time in milliseconds"
  results.each do |pair|
    puts pair[0].to_s + ' ' + pair[1].to_s
  end
end

def run_request(i, communicator, flag)
  request = Ingenico::Connect::SDK::Merchant::Services::ConvertAmountParams.new
  request.source = 'USD'
  request.target = 'EUR'
  request.amount = 100*(i+1)

  client = Ingenico::Connect::SDK::Factory.create_client_from_communicator(communicator)
  flag.wait
  start_time = Time.now
  client.merchant(Integration::MERCHANT_ID).services.convert_amount(request)
  return [start_time.to_i*1000, Time.now.to_i*1000]
end
