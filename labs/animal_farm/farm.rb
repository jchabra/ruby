#Name of Farm
#creating class for storing people
class Farm
	#adding attributes so we have get and set functionaliy
	attr_accessor :name, :people, :animals #you put the animals and people here because the farm will contain people and animals
											#The :people and :animals symbols are arrays

	#define method initialize so we can easily add attributes to each object
	def initialize(name)
		@name = name
		@people = []
		@animals = []
	end

	def to_s
		"The name of the farm is #{name}."
	end
end