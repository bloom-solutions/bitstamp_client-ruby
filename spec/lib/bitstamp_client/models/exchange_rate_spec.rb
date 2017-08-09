require 'spec_helper'

module BitstampClient
  RSpec.describe ExchangeRate, type: %i[virtus] do

    it "inherits from BaseModel" do
      expect(described_class < BaseModel).to be true
    end

    describe "attributes" do
      subject { described_class.new }
      it { is_expected.to have_attribute(:base_currency, String) }
      it { is_expected.to have_attribute(:counter_currency, String) }
      it { is_expected.to have_attribute(:mid_rate, Float) }
      it { is_expected.to have_attribute(:bid, Float) }
      it { is_expected.to have_attribute(:ask, Float) }
      it { is_expected.to have_attribute(:timestamp, Integer) }
    end

    describe "#currency_pair" do
      it "merges base_currency and counter_currency" do
        exchange_rate = described_class.new(
          base_currency: "BTC",
          counter_currency: "USD",
        )
        expect(exchange_rate.currency_pair).to eq "BTCUSD"
      end

    end

  end
end
