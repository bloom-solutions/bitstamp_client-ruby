require "factory_bot"
require "bitstamp_client/factories"

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
