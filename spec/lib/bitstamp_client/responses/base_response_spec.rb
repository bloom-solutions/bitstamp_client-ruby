require 'spec_helper'

module BitstampClient
  RSpec.describe BaseResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:body, String) }
    end

    context "response status is 200 but 'status' field is 'error'" do
      subject(:response) { described_class.new(raw_response: raw_response) }
      let(:body) do
        {status: "when this is filled it's already error"}.to_json
      end
      let(:raw_response) do
        instance_double(Typhoeus::Response, success?: true, body: body)
      end

      it { is_expected.to_not be_success }
    end

    describe "#parsed_body" do
      context "body isn't json" do
        let(:response) do
          described_class.new(body: "<html>Some error</html>")
        end
        subject(:parsed_body) { response.parsed_body}
        it { is_expected.to be_nil }
      end
    end

  end
end
