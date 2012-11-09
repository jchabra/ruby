require 'pry'

module Work
	def fix_bugs
		"fixing bugs"
	end

	def submit_code
		"submit code"
	end
end

module Play
	def ping_pong
		"ping pong"
	end

	def goof_off
		"goof off"
	end
end

class Employee
	def submit_time_card
		"submit time card"
	end
end


class Dev < Employee
	include Work
	include Play

	def codes #instance method: @x is an instance variable
		puts "I am coding here."
	end

	def self.snack #class method: self is the class you're already inside of.
		puts "I am snacking."
	end

	# def Dev.work #class method: 
	# 	puts "I am working."
	# end
end

class Calc
	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Calc.square(x)
		x * x
	end

	def sum
		numbers.inject(&:+)
	end
end


binding.pry