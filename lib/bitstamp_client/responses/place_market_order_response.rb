module BitstampClient
  class PlaceMarketOrderResponse < BaseResponse

    attribute(:order, BitstampClient::MarketOrder, {
      lazy: true,
      default: :default_order,
    })
    attribute :status, String, lazy: true, default: :default_status
    attribute :reason, String, lazy: true, default: :default_reason

    private

    def default_order
      MarketOrder.new(parsed_body)
    end

    def default_status
      parsed_body["status"]
    end

    def default_reason
      parsed_body["reason"]
    end

  end
end
