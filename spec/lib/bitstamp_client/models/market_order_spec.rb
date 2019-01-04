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

  end
end
