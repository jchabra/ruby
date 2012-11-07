require 'pry'

# ------------ Part 2 ---------------

class Dog
	attr_accessor :name

	def initialize(n)
		@name = n
	end

	def to_s
		"#{name} is a dog! he likes to go woof!"
	end
end



class Person #creating a class called Person
	attr_accessor :name, :gender, :dogs #this creates to functions - a set and a get

	def initialize(n, g) #when you type in Person.new, the .new calls initialize immediately
		@name = n
		@gender = g
		@dogs = [] #setting to an empty array
	end

	def to_s
		"#{name} is a #{gender}"
	end

end


# ------- Notes because initialize isn't working for me -------
# p1 = Person.new('sally', 'female')
# => sally is a female

# p2 = Person.new('tom', 'male')
# => tom is a male

# people = []
# => []

# people << p1 << p2 
# => [sally is a female, tom is a male]

# people[1]
# => sally is a female

# people[1].gender
# => "female"

# people.each {|p| puts "cool : #{p}"} #this calls every person in "people" and calls out the puts
# => cool : sally is a female 
# => cool : tom is a male

# people.each {|p| puts "cool : #{p.gender}"} 
# => cool : female 
# => cool : male

# p1 = Person.new('sally', 'female')
# => sally is a female

# p2 = Person.new('tom', 'male')
# => tom is a male

# d1 = Dog.new('fido')
# => fido is a dog! he likes to go woof!

# d2 = Dog.new('fluffy')
# => fluffy is a dog! he likes to go woof!

# d3 = Dog.new('frank')
# => frank is a dog! he likes to go woof!

# d4 = Dog.new('rusty')
# => rusty is a dog! he likes to go woof!

# p1.dogs
# => []

# p1.dogs << d1 << d2
# => [fido is a dog! he likes to go woof!, fluffy is a dog! he likes to go woof!]

# p2.dogs << d3 << d4
# => [frank is a dog! he likes to go woof!, rusty is a dog! he likes to go woof!]

# people = []
# => []

# people << p1 << p2
# => [sally is a female, tom is a male]



# ------------- This is how we started the lecture: Part 1 ------------

# class Person #creating a class called Person

# 	def initialize(n, g) #when you type in Person.new, the .new calls initialize immediately
# 		@first_name = n
# 		@gender = g
# 	end

# 	def say_hello #this person object can now say "hello" -- method
# 		# puts "hello world" #in a function, puts always return nil
# 		"hello world"
# 	end

# 	def gender(g)
# 		"you are #{g}"
# 	end

# 	def set_name(n) #we are going to set the name
# 		@first_name = n #by adding @ sign, it will remember this even after you run it FOREVER - instance variable
# 	end

# 	def get_name #this will tell us what the name is - retrieve the name
# 		@first_name
# 	end

# 	def set_gender(n)
# 		@gender = n
# 	end

# 	def get_gender
# 		@gender
# 	end

# end

binding.pry


