require 'test/unit'

class Mathematics
	def self.factorial(x) #factorial is a class method
		(1..x).inject(&:*)
	end
end


class MyTest < Test::Unit::TestCase
	def test_simple #you need to have the word "test" for it to run
		assert_equal(1,1) #if the stuff in the () is equal, then this thing has passed. Assert 1 and 1 are equal.
	end

	def test_addition
		x = 3 + 5
		assert_equal(8, x, "The answer should be an 8") #8 is the number I am expecting, but x is the actual value
	end

	def test_factorial
		x = Mathematics.factorial(5)
		assert_equal(120, x, "Your code needs fixing") #120 is the answer I expect, x is the value that will come back, ".." is the error message
	end
end


#This is how you would read this: "class MyTest < Test::Unit::TestCase" ===> NAME SPACING
# module Test
# 	module Unit
# 		class TestCase
# 		end
# 	end
# end
