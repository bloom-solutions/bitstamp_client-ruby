require 'spec_helper'

module BitstampClient
  RSpec.describe MarketOrder, type: %i[virtus] do

    describe "attributes" do
      it { is_expected.to have_attribute(:id, String) }
      it { is_expected.to have_attribute(:datetime, DateTime) }
      it { is_expected.to have_attribute(:type, String) }
      it { is_expected.to have_attribute(:price, BigDecimal) }
      it { is_expected.to have_attribute(:amount, BigDecimal) }
    end

    describe "#buy? and #sell?" do
      subject(:order) { build(:bitstamp_client_market_order, type: type) }

      context "type is '0'" do
        let(:type) { "0" }
        it { is_expected.to be_buy }
        it { is_expected.to_not be_sell }
      end

      context "type is '1'" do
        let(:type) { "1" }
        it { is_expected.to_not be_buy }
        it { is_expected.to be_sell }
      end
    end

  end
end
