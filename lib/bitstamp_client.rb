require "api_client_base"
require "typhoeus"
require "bitstamp_client/version"
require "bitstamp_client/client"
require "bitstamp_client/models/base_model"
require "bitstamp_client/models/order"
require "bitstamp_client/models/order_book"
require "bitstamp_client/requests/base_request"
require "bitstamp_client/requests/order_book_request"
require "bitstamp_client/responses/base_response"
require "bitstamp_client/responses/order_book_response"

module BitstampClient

  include APIClientBase::Base.module

  with_configuration do
    has :host, classes: String, default: "https://www.bitstamp.net"
  end

end
