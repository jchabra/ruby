# Name of Assignment: Subway Helper
# Author: Jasmine Chabra

# Part I

require 'pry'

# The stops for these trains:
# The N train = times square, 34th, 28th, 23rd and union square
n = ['ts', '34th', '28th-n', '23rd-n', 'us']

# The L train = 8th, 6th, union square, 3rd and 1st
l = ['8th', '6th', 'us', '3rd', '1st']

# The 6 train = grand central, 33rd, 28th, 23rd and union square
s = ['gs', '33rd', '28th-s', '23rd-s', 'us'] #can't start a variable with a number 

# Tell them it will take 3 stops.

mta = {} # this is a container (hash)

mta[:n] = n
mta[:l] = l
mta[:s] = s

# Ask the user a train: example N
puts "What train do you want to get on: #{mta.keys.join (', ')}?"
#puts mta.keys.join (', ') # this is the better way of showing variables, instead of hard-coding it
start_train = gets.chomp.to_sym #changes the string into a symbol
puts "Which stop: #{mta[start_train].join(', ')}?"
stop_a = gets.chomp

puts "What train do you want to get off at: #{mta.keys.join (', ')}?"
#puts mta.keys.join (', ') # this is the better way of showing variables, instead of hard-coding it
stop_train = gets.chomp.to_sym #changes the string into a symbol

puts "Which stop: #{mta[stop_train].join(', ')}?"
stop_b = gets.chomp

intersection = (mta[start_train] & mta[stop_train]).first #this finds the common item in the array and '.first' makes it a string

stop_a_index = mta[start_train].index(stop_a) #this is the array that is saying find the index of the first one
stop_a_intersection_index = mta[start_train].index(intersection) # find the index of the intersection
trip_a_length = (stop_a_index - stop_a_intersection_index).abs #.abs is the absolute value

stop_b_index = mta[start_train].index(stop_b) #this is the array that is saying find the index of the first one
stop_b_intersection_index = mta[start_train].index(intersection) # find the index of the intersection
trip_b_length = (stop_b_index - stop_b_intersection_index).abs #.abs is the absolute value

total_length_of_trip = trip_a_length + trip_b_length


binding.pry # this stops the code right here in the command term and allows you to "play" with it in command to see if it works

# # Ask the user where they want to get on: example times square 
# puts "Where do you want to get on?"

# # Ask the user where they want to get off: example 23rd
# puts "What stop do you want to get off at?"

# Part II
# Same as Part I, except that they can get off on a different train from where they started.
# Example: They get on the N at times square and go to the 6 train up to grand central, this would be 8 stops total.


#IMPT: index('select a stop in the array') --> the result will tell you the train

#google intersection operator for RUBY
