module BitstampClient
  class OrderBook < BaseModel

    attribute :timestamp, Integer
    attribute :bids, Array[BitstampClient::Order]
    attribute :asks, Array[BitstampClient::Order]

  end
end
