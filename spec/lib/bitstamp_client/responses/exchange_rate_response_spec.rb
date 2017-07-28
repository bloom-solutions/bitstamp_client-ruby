require "spec_helper"

module BitstampClient
  RSpec.describe ExchangeRateResponse do

    it "inherits from BaseResponse" do
      expect(described_class < BaseResponse).to be true
    end

    describe "#exchange_rate" do
      let(:response) do
        described_class.new(
          body: File.read(FIXTURES_DIR.join("exchange_rate.json")),
        )
      end

      it "is the exchange rate model" do
        exchange_rate = response.exchange_rate
        expect(exchange_rate.mid_rate).to eq ([2647.95, 2645.29].sum / 2)
        expect(exchange_rate.buy).to eq 2645.29
        expect(exchange_rate.sell).to eq 2647.95
      end
    end

  end
end
