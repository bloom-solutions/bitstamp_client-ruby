module BitstampClient
  class PlaceMarketOrderResponse < BaseResponse

    attribute(:order, BitstampClient::MarketOrder, {
      lazy: true,
      default: :default_order,
    })
    attribute :status, String, lazy: true, default: :default_status
    attribute :reason, String, lazy: true, default: :default_reason
    attribute :parsed_body, Hash, lazy: true, default: :default_parsed_body

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

    def default_parsed_body
      JSON.parse(body)
    end

  end
end
