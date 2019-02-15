module BitstampClient
  class OrderBookResponse < BaseResponse

    attribute(:order_book, OrderBook, {
      lazy: true,
      default: :default_order_book,
    })

    private

    def default_order_book
      return nil if parsed_body.nil?
      OrderBook.new(parsed_body)
    end

  end
end
