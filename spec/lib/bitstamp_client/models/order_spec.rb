require 'spec_helper'

module BitstampClient
  RSpec.describe Order do

    describe "initialization" do
      context "given an array with two elements: rate and volume" do
        subject { described_class.new([588.22, 2.2]) }
        its(:rate) { is_expected.to eq 588.22 }
        its(:volume) { is_expected.to eq 2.2 }
      end

      context "given a two arguments: rate and volume" do
        subject { described_class.new(588.22, 2.2) }
        its(:rate) { is_expected.to eq 588.22 }
        its(:volume) { is_expected.to eq 2.2 }
      end

      context "given a hash" do
        subject { described_class.new(rate: 588.22, volume: 2.2) }
        its(:rate) { is_expected.to eq 588.22 }
        its(:volume) { is_expected.to eq 2.2 }
      end
    end

  end
end
