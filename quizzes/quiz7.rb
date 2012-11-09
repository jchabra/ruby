# create a Play class
# walk (instance method) --> "I am walking"

# run (class method) --> "I am running"

#x.run -- x should be part of the answer
#x.walk


require 'pry'

class Play

	def walk 
		puts "I am walking."
	end

	def self.run
		puts "I am running."
	end
end

Play.new.walk

Play.run


binding.pry
