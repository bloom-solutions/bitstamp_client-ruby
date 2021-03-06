module BitstampClient
  class ExchangeRateResponse < BaseResponse

    attribute(:exchange_rate, ExchangeRate, {
      lazy: true,
      default: :default_exchange_rate,
    })

    private

    def default_exchange_rate
      json = JSON.parse(body)
      ExchangeRate.new(
        bid: json["bid"],
        ask: json["ask"],
        mid_rate: [json["ask"].to_f, json["bid"].to_f].sum / 2,
        timestamp: json["timestamp"],
      )
    end

  end
end
