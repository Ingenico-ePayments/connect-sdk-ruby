require 'spec_helper'

ParamRequest ||= Ingenico::Connect::SDK::ParamRequest
RequestParam ||= Ingenico::Connect::SDK::RequestParam

describe ParamRequest do

  it 'accepts strings' do
    validate_add_parameter('foo', 'false')
  end

  it 'accepts Fixnums' do
    validate_add_parameter('foo', 1234567890)
  end

  it 'accepts Bignums' do
    validate_add_parameter('foo', 2**33-2)
  end

  it 'accepts booleans' do
    validate_add_parameter('foo', false)
  end

  it 'accepts a list of strings' do
    validate_add_parameter('foo', ['bar'])
  end

  it 'accepts a list of Fixnums' do
    validate_add_parameter('foo', [1337])
  end

  it 'accepts a list of booleans' do
    validate_add_parameter('foo', [true, false])
  end

  it 'does not accept a float' do
    expect{validate_add_parameter('bar', 3.14)}.to raise_error(ArgumentError)
  end

  it 'does not accept a list of a list' do
    expect{validate_add_parameter('bar', [['foo']])}.to raise_error(ArgumentError)
  end


  # Checks if the parameter pair _name_ _value_ can be added to a ParamRequest
  def validate_add_parameter(name, value)
    list = []
    ParamRequest.new.send(:add_parameter, list, name, value)

    if value.instance_of?(Array)
      expected = value.collect{|val| RequestParam.new(name, val)}
    else
      expected = [RequestParam.new(name, value)]
    end
    expect(list).to match_array(expected)
  end
end
