require 'pry'
require 'active_support/all'

students = ['Adrian Bautista', 'Larry Buchanan', 'Jasmine Chabra', 'Raymond Chan', 'Dustin Coates', 'Aaron Fuchs', 'Chris Goodmacher', 'Zahra Jabini', 'Avinash Karnani', 'Gaurav Karnani', 'Audric Kim', 'Jonathan Ku', 'Derrick Lannaman', 'Tim LaTorre', 'Hsi-Chang Lin', 'Marc Whitman', 'Thomas Yang']
puts `clear`
puts "Group size?"
size = gets.to_f
is_lonely = (students.count % size.to_i) == 1 # modulus % = remainder

if is_lonely
  ((students.count / size) - 1).truncate.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"} 
	  							#.truncate = goes to the bottom - if the number is 5.9, it will round down to 5. 
  puts "Group z: #{students.to_sentence}"
else
  (students.count / size).ceil.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"} #to_sentence will turn it into a sentence (runs by the gem, active_support/all)
  						# .ceil = it takes you all the way to the top - if the number is 5.1, it will go to 6; 3.upto7 is similar to range
end