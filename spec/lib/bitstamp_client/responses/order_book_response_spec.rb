require 'spec_helper'

module BitstampClient
  RSpec.describe OrderBookResponse do

    it "inherits from BaseResponse" do
      expect(described_class < BaseResponse).to be true
    end

    describe "#order_book" do
      let(:response) do
        described_class.new(
          body: File.read(FIXTURES_DIR.join("order_book.json")),
        )
      end

      it "is the order book model" do
        order_book = response.order_book
        expect(order_book.timestamp).to eq 1491814164
        first_bid = order_book.bids.first
        expect(first_bid.rate).to eq 1209.0
        expect(first_bid.volume).to eq 5.28345814
        first_ask = order_book.asks.first
        expect(first_ask.rate).to eq 1209.9
        expect(first_ask.volume).to eq 1.08397861
      end
    end

  end
end
