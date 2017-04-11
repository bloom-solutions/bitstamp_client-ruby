module BitstampClient
  class Order < BaseModel

    attribute :rate, Float
    attribute :volume, Float

    def initialize(*args)
      return super(*args) if args.first.is_a?(Hash)

      arg = args.flatten
      self.rate = arg.first
      self.volume = arg.last
    end

  end
end
