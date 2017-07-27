module BitstampClient
  class ExchangeRate < BaseModel

    attribute :base_currency, String
    attribute :counter_currency, String
    attribute :mid_rate, Float
    attribute :buy, Float
    attribute :sell, Float
    attribute :timestamp, Integer

    def currency_pair
      [base_currency, counter_currency].join
    end

  end
end
