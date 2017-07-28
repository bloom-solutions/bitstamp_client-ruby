module BitstampClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)
    attribute :host, String
    api_action :order_book, args: [:currency_pair]
    api_action :exchange_rate, args: [:currency_pair]

    private

    def default_opts
      { host: host }
    end

  end
end
