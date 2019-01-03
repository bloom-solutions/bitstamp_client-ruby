require 'spec_helper'

RSpec.describe "Placing market orders" do

  it "places a buy market order", vcr: {record: :once} do
    nonce = Time.now.to_i
    client = BitstampClient.new(CONFIG.slice(:key, :secret, :customer_id))

    response = client.place_market_order(
      trade_type: "buy",
      currency_pair: "btcusd",
      nonce: nonce,
      amount: 0.0018,
    )

    expect(response).to be_success
    order = response.order

    expect(order).to be_a BitstampClient::MarketOrder
    expect(order.id).to_not be_nil
    expect(order.datetime).to be_a DateTime
    expect(order.type).to eq "0"
    expect(order.price).to be_a BigDecimal
    expect(order.amount).to be_a BigDecimal
  end

  it "places a sell market order", vcr: {record: :once} do
    nonce = Time.now.to_i
    client = BitstampClient.new(CONFIG.slice(:key, :secret, :customer_id))

    response = client.place_market_order(
      trade_type: "sell",
      currency_pair: "btcusd",
      nonce: nonce,
      amount: 0.002,
    )

    expect(response).to be_success
    order = response.order

    expect(order).to be_a BitstampClient::MarketOrder
    expect(order.id).to_not be_nil
    expect(order.datetime).to be_a DateTime
    expect(order.type).to eq "1"
    expect(order.price).to be_a BigDecimal
    expect(order.amount).to be_a BigDecimal
  end

  it "exposes errors", vcr: {record: :once} do
    nonce = "abc"
    client = BitstampClient.new(CONFIG.slice(:key, :secret, :customer_id))

    response = client.place_market_order(
      trade_type: "sell",
      currency_pair: "btcusd",
      nonce: nonce,
      amount: 0.002,
    )

    expect(response).to_not be_success
    expect(response.status).to eq "error"
    expect(response.reason).to eq "Invalid nonce"
  end

end
