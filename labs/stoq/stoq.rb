# http://transparentech.com/projects/yahoofinance

#1) create a user using intereactive program
	#Name?
	#password?
	#how much $cash do they have?

#2) login as that user
	#give a list of all of the users
	#type in a name from the list
	#then ask the password. If the password is incorrect, you will NOT be able to log in.
	#once you login, you will be able to buy stock
	#EACH USER HAS HIS/HER OWN STOCK

#3) Once you log into your account, you should be able to purchase stock. 
	#what stock? give the symbol - ex: AAPL --- then the quote (lasttrade) of current stock shows up
	#how many shares do they want to buy? 
	#then deduct the (number of shares * current value of stock) from the total cash
	#if they don't have enough cash, then an error shows up - "NOT ENOUGH MONEY"
	#===== this is loop =======

#4) Show "STOQ" dashboard -- 
	#show a dashboard with all of your stocks: example apple, google, amazon, microsoft
	#What needs to be available to the user per stock
		#current price
		#change from last quote price
		#average of all of the times you requested a quote
		#how many shares? 
		#total: what is the $ the user has in that specific stock? 
	#it will loop ---- sleep 1 second so that it will loop

#-----------------------------------------------------------------------

require 'pry'
require 'yahoofinance'

load 'stoq_classes.rb'

users = {}
portfolios = {}
user_found = false

puts "Would you like to (c)reate a new account, (l)og on to an existing account?"
response = gets.chomp

while response != 'l'

	puts "Enter your name"
	name = gets.chomp

	puts "Enter your password"
	password = gets.chomp

	puts "Enter your cash amount"
	cash = gets.to_f

	users[name] = User.new(name, password, cash) #pushing this into the hash

	puts "Would you like to (c)reate a new account, (l)og on to an existing account?"
	response = gets.chomp

end

puts "What is your user name?"
user_name = gets.chomp

puts "What is your password?"
password = gets.chomp

users.each do |user|
	if (users[user_name].name == user_name) && (users[user_name].password == password)
		user_found = true
		puts "Login successful."
	else 
		user_found == false
		puts "Error! Please check your user name and/or password."
	end
end

if user_found == false
	puts "What is your user name?"
	user_name = gets.chomp

	puts "What is your password?"
	password = gets.chomp
elsif user_found == true
	puts "Welcome to your account #{user_name}!"
	puts "You have $#{cash} in your account."
end

puts "What would you like to do (1) purchase stock, (2) see balance, (3) see dashboard?"
selection = gets.chomp

	case selection
		when '1'
			puts "What stock would you like to purchase? Enter stock symbol."
			stock_symbol = gets.chomp.upcase
			quote_type = YahooFinance::StandardQuote
			quote_symbols = "#{stock_symbol}"
			quote = YahooFinance::get_quotes( quote_type, quote_symbols )[stock_symbol].lastTrade
			puts "#{stock_symbol} is trading #{quote}"
			puts "How many shares?"
			shares = gets.to_f
			total_amount = shares * quote
			puts "Total cost of your shares for #{stock_symbol} is #{total_amount}."
		when '2'
			
		when '3'
			# puts "#{user_name}'s Dashboard:"
	end

binding.pry

































