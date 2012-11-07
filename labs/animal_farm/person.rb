#creating class for storing people
class Person
	#adding attributes so we have get and set functionaliy
	attr_accessor :name, :age, :gender

	#define method initialize so we can easily add attributes to each object
	def initialize(name, age, gender)
		@name = name
		@gender = gender
		@age = age
	end

	def to_s
		"#{name} is a #{gender} who is #{age} years old."
	end
end