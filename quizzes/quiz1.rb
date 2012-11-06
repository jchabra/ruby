#Quiz 1

require 'pry'

#Ask them for Name?
puts "What is your name?"
name = gets.chomp

#A: first number?
puts "Enter a number?"
a = gets.to_i

#B: second number?
puts "Enter a second number?"
b = gets.to_i

#C: third number?
puts "Enter a third number?"
c = gets.to_i

#D = (A + B) * C
d = (a + b) * c

#E = A^B
e = a**b

#F = SQUARE ROOT OF A * B
f = Math.sqrt(a * b)

#Then print out: Sally, your results: D = __, E = __, F = __
puts "#{name}, your results are: d = #{d} , e = #{e}, f = #{f}"