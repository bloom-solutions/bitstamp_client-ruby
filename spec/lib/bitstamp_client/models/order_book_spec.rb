require 'spec_helper'

module BitstampClient
  RSpec.describe OrderBook, type: %i[virtus] do

    it "inherits from BaseModel" do
      expect(described_class < BaseModel).to be true
    end

    describe "attributes" do
      subject do
        described_class.new(
          JSON.parse(File.read(FIXTURES_DIR.join("order_book.json")))
        )
      end
      it { is_expected.to have_attribute(:timestamp, Integer) }
      it { is_expected.to have_attribute(:bids, Array[Order]) }
      it { is_expected.to have_attribute(:asks, Array[Order]) }
    end

  end
end
