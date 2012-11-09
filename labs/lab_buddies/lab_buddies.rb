require 'pry'


load 'group.rb'

#students
people = ['Adrian', 'Larry', 'Jasmine', 'Raymond', 'Dustin', 'Aaron', 'Chris', 'Zahra', 'Avi', 'Gaurav', 'Audric', 'Jon', 'Derrick', 'Tim', 'Chang', 'Marc', 'Thomas']
groups = []

#randomize the group
random_people = people.shuffle #randomizes the list

#How many people to a group? //Answer = 3
puts "How many people to a group?"
number = gets.to_i

loops = random_people.length / number

(0..(loops-1)).each do |i|
	group = random_people.pop(number) #pops off the number of people the user inputs from the array
	groups << group
	puts "Group #{i+1}: #{group}"
end

groups(-1) << random_people


binding.pry


# OUTPUT: [p1, p2, p3] and another array [p4, p5, p6] -- randomly generated list. 



#It should have everyone in the list grouped up. If the number of people is not divisible, then tack that last person to a group.