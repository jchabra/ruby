#create a Mathematics class
#Mathematics.factorial(number) = answer

require 'pry'

class Mathematics
	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Mathematics.factorial(n)
	  if n == 0
	    1
	  else
	    n * factorial(n-1)
	  end
	end
end

binding.pry

