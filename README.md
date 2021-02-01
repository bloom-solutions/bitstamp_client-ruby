# BitstampClient

API wrapper for Bitstamp.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bitstamp_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bitstamp_client

## Usage

```ruby
# Orderbook
client = BitstampClient.new
response = client.order_book("btcusd")
response.success? # true
order_book = response.order_book
order_book.timestamp # unix timestamp
order_book.bids # Array of Order instances
order_book.asks # Array of Order instances
```

```ruby
# Balance
client = BitstampClient.new
response = client.balance(nonce: ...)
response.success? # true

response.usd_balance  # BigDecimal
response.btc_reserved # BigDecimal
```

For more, see the files in `spec/acceptance`.

## Development

- Make a copy of `.env` and name it `.env.local`
- Make changes
- `rspec spec` to run the specs

## Factories

You may include FactoryGirl factories in the gem in your tests to easily build models in the gem by `require "bitstamp_client/factories"`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bloom-solutions/bitstamp_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

