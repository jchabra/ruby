require 'pry'

colors = ['blue', 'green', 'yellow']

puts "Enter a new color:"
color = gets.chomp
colors << color

person = {}
puts "Last Name?"
person [:last] = gets.chomp
puts "First Name?"
person [:first] = gets.chomp
puts "Age?"
person [:age] = gets.chomp

colors.each do |color| # This is an enumerator (a loop). ".each" goes through each thing in your array, one at a time. "|color|" is a local variable and it's always singular.
	puts "The color is #{color}"
end

(1..1000).each do |x| #(1..1000) creates a range
	puts "the power of the number is #{x**x}"
end

person.each do |key, value| #key, value are local variables to this "block"
	puts "The key is #{key} and value is #{value}."
end

binding.pry

