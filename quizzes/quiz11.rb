#create a class called mystring
#mystring.length('hello world') -- create a test so that it will say that the length of the string is 11

require 'test/unit'

class Mystring 
	def self.length(x)
		x.length
	end
end

class MyTest < Test::Unit::TestCase
	def test_length	
		x = Mystring.length('hello world')
		assert_equal(11, x, "The answer should be 11.")
	end
end


# PLEASE DON'T SHOW MY CODE TO THE CLASS. PLEASE!!! :-(