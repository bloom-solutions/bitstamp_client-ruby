module BitstampClient
  class OrderBookRequest < BaseRequest

    attribute :currency_pair, String

    private

    def path
      "/api/v2/order_book/:currency_pair"
    end

  end
end
