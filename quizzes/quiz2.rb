# Quiz 2

require 'pry'

#Sum up the numbers between 250 and 180,000
(250..180000).each do |x|
	puts "the sum of the numbers between 250 and 180,000 is #{x+x}"
end # I know this is wrong. Please help. 

colors = ['blue', 'green', 'yellow'] # Create a colors array: 
puts "Here is a colors array: ['blue', 'green', 'yellow']"

puts "Enter a new color or (q)uit" # Prompt the user to either enter in a new color or quit
color = gets.chomp

while color != "q"
	colors << color # Add all the colors entered into the colors array. 
	puts "This is the new list of colors: #{colors}" # Display the colors entered upon exit

	puts "Enter a new color or (q)uit"
	color = gets.chomp
end