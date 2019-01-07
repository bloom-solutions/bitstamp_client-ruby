FactoryBot.define do

  factory :bitstamp_client_order_book, class: "BitstampClient::OrderBook" do
    timestamp { Time.now.to_i }

    bids do
      [
        FactoryBot.build(:bitstamp_client_order),
        FactoryBot.build(:bitstamp_client_order),
      ]
    end

    asks do
      [
        FactoryBot.build(:bitstamp_client_order),
        FactoryBot.build(:bitstamp_client_order),
      ]
    end
  end

  factory :bitstamp_client_order, class: "BitstampClient::Order" do
    rate { 2500 }
    volume { 2 }
  end

  factory :bitstamp_client_market_order, class: "BitstampClient::MarketOrder" do
    sequence(:id) {|n| n}
    datetime { DateTime.now }
    type { "0" }
    price { 4000.99 }
    amount { 0.01 }
  end

end
