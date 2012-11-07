#Quiz 3: Student

require 'pry'

#create a class called Student
#student will have these properties: name, dob, gender, gpa, major

class Student
	attr_accessor :name, :dob, :gender, :gpa, :major

	#initialize this student: s1 = Student.new(name, dob, gender, gpa, major)
	def initialize(n, d, g, gpa, m)
		@name = n
		@dob = d
		@gender = g
		@gpa = gpa
		@major = m
	end

end

#create a students = [] array
students = []

puts "Create a (s)tudent or (q)uit."
response = gets.chomp

while response != "q"

	puts "Name?"
	name = gets.chomp

	puts "Date of Birth?"
	dob = gets.chomp

	puts "Gender?"
	gender = gets.chomp

	puts "GPA?"
	gpa = gets.chomp

	puts "Major?"
	major = gets.chomp

	puts "Create a (s)tudent or (q)uit."
	response = gets.chomp

	student = Student.new(name, dob, gender, gpa, major)
	students << student

	def to_s
		"#{name} is a #{gender} student who was born on #{dob}. This student is majoring in #{major} and has a gpa of #{gpa}."
	end
end

puts "#{students}"



#print out students array
#then do the to_s method (create a sentence with the info)

