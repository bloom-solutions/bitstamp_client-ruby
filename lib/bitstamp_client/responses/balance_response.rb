module BitstampClient
  class BalanceResponse < BaseResponse

    KNOWN_FIELDS = %i[
      usd_balance
      btc_balance
      eur_balance
      xrp_balance
      usd_reserved
      btc_reserved
      eur_reserved
      xrp_reserved
      usd_available
      btc_available
      eur_available
      xrp_available
      btcusd_fee
      btceur_fee
      eurusd_fee
      xrpusd_fee
      xrpeur_fee
      xrpbtc_fee
      fee
    ].freeze

    KNOWN_FIELDS.each do |field|
      attribute field, BigDecimal, default: :"default_#{field}"

      define_method :"default_#{field}" do
        parsed_body[field.to_s]
      end
    end

    def method_missing(method_name, *args)
      super if !parsed_body.has_key?(method_name.to_s)

      self.class.define_method(method_name) do
        BigDecimal.new(parsed_body[method_name.to_s])
      end

      self.send(method_name)
    end

    private


    def default_order_book
      OrderBook.new(JSON.parse(body))
    end

  end
end
