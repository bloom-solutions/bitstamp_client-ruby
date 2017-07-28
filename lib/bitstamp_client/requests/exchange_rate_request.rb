module BitstampClient
  class ExchangeRateRequest < BaseRequest

    attribute :currency_pair, String

    private

    def path
      "/api/v2/ticker/:currency_pair"
    end

  end
end
