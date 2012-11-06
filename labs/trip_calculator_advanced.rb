require 'pry'

puts "Going on a trip? (y)es or (n)o?"
response = gets.chomp

while response != 'n'
	#Ask the user questions
	puts "How far are you going (miles)?"
	distance = gets.to_f

	puts "How fast are you going (MPH)?"
	speed = gets.to_f

	puts "How much is gas per gallon?"
	gas_price = gets.to_f

	puts "What is the MPG of your car?"
	mpg = gets.to_f

	puts "How much money do you have?"
	money = gets.to_f

	# number of gallons needed to complete trip
	gallons_needed = distance / mpg

	# total distance of trip in miles divided by miles per hour will give you the time
	time = distance / speed

	#this is the amount of money that's left after 
	money_left = money - (gallons_needed * gas_price) 

	if gallons_needed > (money / gas_price)
		puts "Sorry, you do not have enough money for the trip."
	elsif 
		puts "You will have $#{money_left.round(2)} when you arrive in #{time.round(1)}."
	end

puts "Going on a trip? (y)es or (n)o?"
response = gets.chomp

end

def trip_calculator(d, s, g, mpg, m)
	results = trip_calculator(how_far, how_fast, gas_price, mpg, money)
	results.to_a
end





# Then tell the user:

# Sorry, you do not have enough money for the trip.

# You will have $32.98 when you arrive in 6.7 hours.


