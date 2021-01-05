require 'spec_helper'

module BitstampClient
  RSpec.describe BalanceResponse do

    described_class::KNOWN_FIELDS.each do |field|
      it "exposes #{field} as a BigDecimal" do
        response = described_class.new(body: {field => 2.22}.to_json)
        expect(response.send(field)).to eq 2.22
      end
    end

    context "parsed_body nil from JSON.parse error" do
      it "returns no value if parsed_body is nil" do
        response = described_class.new(body: {}.to_json)
        expect(response.usd_balance).to be_nil
      end
    end

    it "exposes unknown fields" do
      body = {
        some_new_field_that_bitstamp_added: 1,
      }

      response = described_class.new(body: body.to_json)

      expect(response.some_new_field_that_bitstamp_added).to eq 1
      expect { response.some_other_method }.to raise_error(NoMethodError)
    end

  end
end
