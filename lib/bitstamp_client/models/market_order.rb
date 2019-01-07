module BitstampClient
  class MarketOrder < BaseModel

    BUY_CODE = "0".freeze
    SELL_CODE = "1".freeze

    attribute :id, String
    attribute :datetime, DateTime
    attribute :type, String
    attribute :price, BigDecimal
    attribute :amount, BigDecimal
    attribute :buy, Boolean, default: :default_buy, lazy: true
    attribute :sell, Boolean, default: :default_sell, lazy: true

    private

    def default_buy
      type == BUY_CODE
    end

    def default_sell
      type == SELL_CODE
    end

  end
end
