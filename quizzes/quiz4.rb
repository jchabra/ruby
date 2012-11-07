#prompt the user to enter a number 

#create a numbers = [] array
numbers = []

#Do you want to type in a (n)umber or (q)uit?
puts "Do you want to type in a (n)umber or (q)uit?"
response = gets.chomp

#go through a loop where you ask the question
while response !='q'
	
	puts "What number?"
	number = gets.to_i
	numbers << number

	puts "Do you want to type in a (n)umber or (q)uit?"
	response = gets.chomp
end

puts "Here is your list of numbers: #{numbers}"

def square (x) 
	x * x 
end

puts "I DON'T KNOW HOW TO SQUARE AN ARRAY. PLEASE HELP!"

# y = numbers.map #I DON'T KNOW HOW TO DO THIS. PLEASE HELP! 
# puts "Here is the list of numbers squared: #{y}"

#------ADDITIONAL INSTRUCTIONS -----
#then you have a numbers array (n)
#example: numbers = [3, 5, 7, 9]
#then take the existing array and create a new array which will be the SQUARE of that array
#create a square(x) function where the output is y 
#square(x)
#y = 
#end
#.map takes an existing and creates a new array
#should be able to print out the original and the new array