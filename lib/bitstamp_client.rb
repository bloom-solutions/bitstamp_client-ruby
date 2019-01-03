require "api_client_base"
require "typhoeus"
require "bitstamp_client/version"
require "bitstamp_client/client"
require "bitstamp_client/models/base_model"
require "bitstamp_client/models/exchange_rate"
require "bitstamp_client/models/market_order"
require "bitstamp_client/models/order"
require "bitstamp_client/models/order_book"
require "bitstamp_client/requests/base_request"
require "bitstamp_client/requests/exchange_rate_request"
require "bitstamp_client/requests/order_book_request"
require "bitstamp_client/requests/place_market_order_request"
require "bitstamp_client/responses/base_response"
require "bitstamp_client/responses/exchange_rate_response"
require "bitstamp_client/responses/order_book_response"
require "bitstamp_client/responses/place_market_order_response"
require "bitstamp_client/services/gen_signature"

module BitstampClient

  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String, default: "https://www.bitstamp.net"
    has :key, classes: [String, NilClass]
    has :secret, classes: [String, NilClass]
    has :customer_id, classes: [String, NilClass]
  end

end
