require 'spec_helper'

RSpec.describe "Balance" do

  it "returns the account's balances", vcr: {record: :once} do
    client = BitstampClient.new(
      key: ENV["KEY"],
      secret: ENV["SECRET"],
      customer_id: ENV["CUSTOMER_ID"],
    )
    response = client.balance(nonce: (Time.now.to_f * 1_000).to_i)

    expect(response).to be_success

    expect(response.usd_balance).to be_a BigDecimal
    expect(response.btc_reserved).to be_a BigDecimal
    expect(response.eur_available).to be_a BigDecimal
    expect(response.btceur_fee).to be_a BigDecimal
  end

end
