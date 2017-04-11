require "spec_helper"

RSpec.describe BitstampClient do
  it "has a version number" do
    expect(BitstampClient::VERSION).not_to be nil
  end
end
