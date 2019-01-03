module BitstampClient
  class BaseRequest

    include APIClientBase::Request.module
    attribute :key, String
    attribute :secret, String
    attribute :nonce, String
    attribute :customer_id, String

    private

    def headers
      {
        "Content-Type" => "application/json",
        "Accept" => "application/json",
      }
    end

  end
end
