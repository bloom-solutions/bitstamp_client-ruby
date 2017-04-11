module BitstampClient
  class OrderBookResponse < BaseResponse

    attribute(:order_book, OrderBook, {
      lazy: true,
      default: :default_order_book,
    })

    private

    def default_order_book
      OrderBook.new(JSON.parse(body))
    end

  end
end
