module BitstampClient
  class PlaceMarketOrderRequest < BaseRequest

    attribute :trade_type, String
    attribute :currency_pair, String
    attribute :nonce, Integer
    attribute :amount, String
    attribute :signature, String, default: :default_signature

    private

    def path
      "/api/v2/:trade_type/market/:currency_pair/"
    end

    def default_action
      :post
    end

    def body
      {
        key: key,
        signature: signature,
        nonce: nonce,
        amount: amount,
      }
    end

    def headers
      { 'Content-Type' => 'application/x-www-form-urlencoded' }
    end

    def default_signature
      GenSignature.
        (key: key, secret: secret, nonce: nonce, customer_id: customer_id)
    end

  end
end
