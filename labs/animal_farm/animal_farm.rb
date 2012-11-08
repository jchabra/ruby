prot#Assignment Name: Animal Farm

load 'person.rb' #this will run the person.rb file
load 'animal.rb'
load 'farm.rb'

#====APP STORY ======
# First, we'll create a person, with three attributes name age gender
# store there person objects in a people array
# ask user: create a person or q, using p and Q selectors
# if user selects P, name? age? gender?; loop it.
# when exiting, display all the people in the array uinsg to_s 

# pry for debugging
require 'pry'

farms = {} #use a hash when you want to put info in a location, but you want to be able to search for them or locate them easily 
		   #use an array when you don't care about the locatio/order of the items in an array

# farms = [] #OLD SCHOOL: by creating an empty array, we're giving the new farm "names" a <home> (a place to go)

puts "Create a (f)arm, (p)erson, (a)nimal or (q)uit?"
response = gets.chomp

while response != "q"

	case response 
	when 'f'
		puts "Name?"
		name = gets.chomp
		new_farm = Farm.new(name)
		farms[name] = new_farm #this replaces the index number with the actual name of the farm
							   #can't push things into a hash; only arrays
							   #key names are impt! They should be unique. If it's the same name, then it overrides
							   #the original one. The original one disappears. 
	
	# OLD SCHOOL: farms << new_farm

	when 'p'
		puts "Name?"
		name = gets.chomp

		puts "Age?"
		age = gets.to_i

		puts "Gender?"
		gender = gets.chomp

		new_person = Person.new(name, age, gender)

		puts "Which farm do you want #{name} to go to? #{farms.keys.join(', ')}?" #USE WITH HASH!
		# puts "Which farm do you want #{name} to go to? #{farms.map {|f| f.name}.join(', ')}?" #WORKS WITH ARRAYS ONLY
		farm_name = gets.chomp

		farms[farm_name].people << new_person

		# ----OLD SCHOOL----
		# farm_found = nil #
		# farms.each do |farm| #this lists every farm name
		# 	if (farm.name == farm_name)
		# 		farm_found = farm
		# 	end
		# end
		# farm_found.people << new_person #this puts the new person in the people array in the farm object

	when 'a'
		puts "Name?"
		name = gets.chomp

		puts "Species?"
		species= gets.chomp

		puts "Gender?"
		gender = gets.chomp

		puts "Which farm do you want #{name} to go to? #{farms.keys.join(', ')}?" #USE WITH HASH!
		# puts "Which farm do you want #{name} to go to? #{farms.map {|f| f.name}.join(', ')}?" #WORKS WITH ARRAYS ONLY
		farm_name = gets.chomp

		farms[farm_name].animals << new_animal

		# ----OLD SCHOOL----
		# farm_found = nil
		# farms.each do |farm| #this lists every farm name
		# 	if (farm.name == farm_name)
		# 		farm_found = farm
		# 	end
		# end
		#farm_found.animals << new_animal #this puts the new animal in the animals array in the farm object

	end #end of case statement

puts "Create a (f)arm, (p)erson, (a)nimal or (q)uit?"
response = gets.chomp

end #end of while loop

binding.pry

#farms = [] #a list of farms
#ask them which animal or person will be part of the farm
#choose a farm


#f1.animals
#f1.people

#print out all of the farms and the people and/or animals in the farm




