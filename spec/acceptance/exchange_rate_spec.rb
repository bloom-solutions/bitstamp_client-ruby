require 'spec_helper'

RSpec.describe "Exchange Rate" do

  it "returns an exchange rate", vcr: {record: :once} do
    client = BitstampClient.new
    response = client.exchange_rate("btcusd")

    expect(response).to be_success

    exchange_rate = response.exchange_rate
    expect(exchange_rate.timestamp).to be_an Integer
    expect(exchange_rate.mid_rate).to be_an Float
    expect(exchange_rate.bid).to be_an Float
    expect(exchange_rate.ask).to be_an Float
  end

end
