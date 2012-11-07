#Animal Class

#Name
#Species
#Gender

#creating class for storing people
class Animal
	#adding attributes so we have get and set functionaliy
	attr_accessor :name, :species, :gender

	#define method initialize so we can easily add attributes to each object
	def initialize(name, species, gender)
		@name = name
		@species = species
		@gender = gender

	end

	def to_s
		"#{name} is a #{gender} who is a #{species}."
	end
end