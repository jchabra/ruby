require 'pry'

# Suppose a home loan of $200,000 with a fixed yearly interest rate of 6.5% for 30 years.

puts "Do you want to calculate your mortgage? (y)es or (n)o?"
response = gets.chomp

while response != "n"

	#what is the home loan amount?
	puts "What is the home loan amount?"
	loan = gets.to_f

	#what is the fixed yearly interest rate? 
	puts "What is the fixed yearly interest rate?"
	interest = gets.to_f
	interest = interest / 100

	# what is the time period?
	puts "What is the time period"
	time = gets.to_f

	# need to find the loan/time
	yearly_payment = loan/time 

	# interest per year
	monthly_payment = (interest * yearly_payment) / 12

# ANSWER: How much is the monthly payment?
puts "Your monthly payment is #{monthly_payment.round(2)}" 

puts "Do you want to calculate your mortgage? (y)es or (n)o?"
response = gets.chomp

end