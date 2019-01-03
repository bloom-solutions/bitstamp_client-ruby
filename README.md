# BitstampClient

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/bitstamp_client`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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
client = BitstampClient.new
response = client.order_book("btcusd")
response.success? # true
order_book = response.order_book
order_book.timestamp # unix timestamp
order_book.bids # Array of Order instances
order_book.asks # Array of Order instances
```

For more, see the files in `spec/acceptance`.

## Development

- Setup `spec/config.yml` (see `spec/config.yml.sample`). Since Bitstamp does not have a test API, you'll need to put real credentials for the tests here. Best to create a subaccount that has a limited set of funds.
- Make changes
- `rspec spec` to run the specs

## Factories

You may include FactoryGirl factories in the gem in your tests to easily build models in the gem by `require "bitstamp_client/factories"`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bloom-solutions/bitstamp_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

