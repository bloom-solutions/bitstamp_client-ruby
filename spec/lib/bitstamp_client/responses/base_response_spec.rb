require 'spec_helper'

module BitstampClient
  RSpec.describe BaseResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:body, String) }
    end

  end
end
