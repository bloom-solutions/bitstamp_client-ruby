module BitstampClient
  class MarketOrder < BaseModel

    attribute :id, String
    attribute :datetime, DateTime
    attribute :type, String
    attribute :price, BigDecimal
    attribute :amount, BigDecimal

  end
end
