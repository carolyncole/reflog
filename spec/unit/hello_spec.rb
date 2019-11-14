require 'spec_helper'
require 'hello'

describe 'Hello' do
  it 'says hello' do
    expect(Hello.say).to eq("Hello!")
  end
end
