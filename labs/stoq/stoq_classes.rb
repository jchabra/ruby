class User
	attr_accessor :name, :password, :cash

	def initialize (name, password, cash)
		@name = name
		@password = password
		@cash = cash
	end

	def to_s
		"Username: #{name}, Password: #{password} & Total Cash: $#{cash}"
	end
end

class Stock
	attr_accessor :symbol, :price, :shares

	def initialize
		@symbol = symbol
		@price = price
		@shares = shares
	end

	def to_s

	end
end

