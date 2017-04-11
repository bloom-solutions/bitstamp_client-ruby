require 'spec_helper'

RSpec.describe "Order book" do

  it "returns an order book", vcr: {record: :once} do
    client = BitstampClient.new
    response = client.order_book("btcusd")

    expect(response).to be_success

    order_book = response.order_book
    expect(order_book.timestamp).to be_an Integer
    expect(order_book.bids).to_not be_empty
    expect(order_book.asks).to_not be_empty

    highest_bid = order_book.bids.first
    expect(highest_bid).to be_an BitstampClient::Order

    lowest_ask = order_book.asks.last
    expect(lowest_ask).to be_an BitstampClient::Order

    expect(highest_bid.rate <= lowest_ask.rate).to be true
  end

end
