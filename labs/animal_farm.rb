#Assignment: Animal Farm

require 'pry'

people = []

#Create a Person Class

class Person
	attr_accessor :name, :age, :gender

	def initialize (n, a, g)
		@name = n
		@age = a
		@gender = g
	end
end


puts "Create a (p)erson or (q)uit."
response = gets.chomp

while response != "q"

	puts "Name?"
	name = gets.chomp

	puts "Age?"
	age = gets.to_i

	puts "Gender?"
	gender = gets.chomp

	puts "Create a (p)erson or (q)uit."
	response = gets.chomp

	person = Person.new(name, age, gender)
	people << person

end

	def to_s
		"#{people.name}"
	end


binding.pry

#Do you want to create a (p)erson, (a)nimal, (f)arm, or (q)uit?



