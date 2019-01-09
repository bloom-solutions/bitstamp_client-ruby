module BitstampClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)
    attribute :host, String
    attribute :key, String
    attribute :secret, String
    attribute :customer_id, String
    api_action :order_book, args: [:currency_pair]
    api_action :exchange_rate, args: [:currency_pair]
    api_action :place_market_order
    api_action :balance

    private

    def default_opts
      { host: host, key: key, secret: secret, customer_id: customer_id }
    end

  end
end
