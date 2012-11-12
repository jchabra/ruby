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
require 'active_support/all'
require_relative 'stock'
require_relative 'user'
require_relative 'factory'

@users = {} #users are saved in a hash

puts `clear`
puts "(c)reate a user, (b)uy stock, (s)how dashbord or (q)uit?" 
response = gets.chomp
while response != 'q'
  case response
  when 'c'
    create_user
  when 'b'
    user_name = choose_user
    user = @users[user_name]
    buy_stock(user) if user.login #if login is correct, then the user can buy stock
  when 's'
    user_name = choose_user
    user = @users[user_name]
    show_dashboard(user)
  end

  puts `clear`
  puts "(c)reate a user, (b)uy stock, (s)how dashbord or (q)uit?"
  response = gets.chomp
end

binding.pry
































