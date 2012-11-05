#require 'pry' #put the gem name here

# this is a comment
# use this any time you need to explain something

puts "What is your name?"
first = gets

# version 1 - normal
puts "You typed in " + first #this is a string plus another string

# version 2 - string interpolation
puts "You typed in #{first}" #this version combines the strings but only if you use double quotes

# version 3 - single quotes - DOES NOT WORK
puts 'You typed in #{first}'

puts "Enter a number?"
a = gets #take the string "a"
a = a.to_i #and convert it into an integer (i)

puts "Enter a floating point number?"
b = gets
b = b.to_f

c = a + b
puts "The result of #{a} summed with #{b} is #{c}"

# this is how to debug using pry
#binding.pry 





puts "What is your age?"
age = gets.to_i #gets will get whatever string you typed in and then it will convert into an integer

if age < 5
	puts "You are a baby" #no semicolans
elsif (age >=5) && (age < 18) #parantheses are optional in ruby, but it makes code cleaner
	puts "You are a minor"
else
	puts "You are an adult"
end


puts "Enter a letter"
letter = gets.chomp #adds a new line? 



# case statement
case letter
when "a"
	puts "You typed in a"
when "b"
	puts "You typed in b"
when "c"
	puts "You typed in c"
when "d"
	puts "You typed in d"
end



# looping
puts "Enter a starting number" #prompt for a starting number
start = gets.to_i
puts "Enter an ending number"
stop = gets.to_i

while start <= stop #while loop - start integer is less than or equal to stop integer; while this condition is true, then do the loop. It will keep asking the question until it is true. 
	puts "Counting #{start}"
	start = start + 1 #start += 1 --> means itself plus 1
end #{} brackets replaced =pby end in Ruby



#methods
def square (a) #define a square; function that will square whatever the input is; (a) = is the input
	a * a #this is the entire function
end #the output is the last thing it does


def volume (l, w, h)
	l * w * h
end

puts "Length?"
length = gets.to_i #turns it into an integer
puts "Width?"
width = gets.to_i
puts "Height?"
height = gets.to_i
vol = volume(length, width, height) #knows l, w, h are these terms because it is in the same order
puts "The volume of #{length} and #{width} and #{height} is #{vol}"

puts "Enter a number to square" #this is how you will use the function above
b = gets.to_i
c = square(b)
puts "The square of #{b} is #{c}"























