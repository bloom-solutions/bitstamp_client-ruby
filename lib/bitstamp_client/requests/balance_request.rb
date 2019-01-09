module BitstampClient
  class BalanceRequest < BaseRequest

    attribute :nonce, Integer
    attribute :signature, String, default: :default_signature

    private

    def body
      {
        key: key,
        signature: signature,
        nonce: nonce,
      }
    end

    def path
      "/api/v2/balance/"
    end

    def action
      :post
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
