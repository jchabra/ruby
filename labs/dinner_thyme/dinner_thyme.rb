#Assignment: DinnerThyme

require 'pry'

load 'food.rb'
load 'protein.rb'
load 'carb.rb'

# Two required classes: Protein (chicken, pork, etc.) and Carb (pasta, bread, potatoes, etc.)

dinner = []

#---ATTRIBUTES/METHODS----
#initialize
#calories per servings
#number of servings
#grain_type (whole wheat, etc.)
#animal_type (something to do with protein)
#prep time (how long will it take to prepare)
#to_s

puts "What do you want for dinner? (p)rotein, (c)arbs or (q)uit?"
response = gets.chomp

while response != 'q'
	
	if response == 'p'
		puts "What animal type?"
		animal_type = gets.chomp

		puts "How many servings will you be making?"
		servings = gets.to_i

		puts "How many calories is one serving?"
		calories = gets.to_i

		puts "How much time will it take? (minutes)"
		prep_time = gets.to_i

		p1 = Protein.new(animal_type, servings, calories, prep_time)
		dinner << p1


	elsif response == 'c'
		puts "What grain type?"
		grain_type = gets.chomp

		puts "How many servings will you be making?"
		servings = gets.to_i

		puts "How many calories is one serving?"
		calories = gets.to_i

		puts "How much time will it take? (minutes)"
		prep_time = gets.to_i

		c1 = Carb.new(grain_type, servings, calories, prep_time)
		dinner << c1
	end

	puts "What do you want for dinner? (p)rotein, (c)arbs or (q)uit?"
	response = gets.chomp
end

puts "#{dinner}"

#what are the total calories in meal (dinner)?
total_calories = 0
dinner.each {|x| total_calories = total_calories + x.calories}
puts "The total calories of your meal is #{total_calories}."

#what is the total prep time for the meal?
total_prep = 0
dinner.each {|x| total_prep = total_prep + x.prep_time}
puts "The total prep time of your meal is #{total_prep}."

binding.pry

#p1 = Protein.new('beef', 200, 3, 30)
#c1 = Carb.new('whole', 100, 2, 90)

# --------- PART 2 --------------

# change dinner to a "plate" array
# create a hash for dinner that will contain all of the plates for each day of the week
# create available_menus = {m1, m2, ...} ----- hash
# create a plate
# either --> choose existing dinner or --> create new dinner
# add plate to a dinner's day

# -------- Additinal Notes --------
# Week - menu["Sunday"] = plate1
			#["Saturday"] = plate7

# ----------- HOMEWORK -------------
#Create a person class that will have a name
#There is a person type (kid, adult)
#menus = [] ---> push m1, m2 into this menus array

#if person is a kid, cannot give them a menu for any day if that menu is > 1000 calories

#create a people hash {"p1.name","p2.name"}

#print out all of your people, print out their menus, the items on the menu, and their day








