#Assignment: Towers of Honoi

#have 3 poles. 
#ask the user how many disks the user wants to play with.
#he object of the game is to move all the disks onto a different pole. 
#You can only move one disk at a time and you must follow size order -- a bigger disk can't go on a smaller disk. 

require 'pry'

disks_stacks = []
pegs = []

puts "How many disks?"
disks = gets.to_i
puts `clear`

(0..(disks-1)).each do |i|
	disks_stacks << (i+1)
end

pegs << disks_stacks
pegs << []
pegs << []

pegs[0].each do |i|
	puts "#{i}\t#{pegs[1]}\t#{pegs[2]}"
end

puts "P1\tP2\tP3"	

puts "Do you want to (p)lay or (q)uit?"
response = gets.chomp

while response != 'q'
	puts "Pick your disk."
	peg_start = gets.chomp.to_i-1
	disk_choice = pegs[peg_start][0]
	puts "You picked disk #{disk_choice}."

	puts "Pick which peg you want to move the piece to."
	peg_end = gets.chomp.to_i-1
	puts "You picked peg #{peg_end+1}"
	pegs[peg_end] << disk_choice
	pegs[peg_start].shift

	pegs[0].each do |i|
		puts "#{i}\t#{pegs[1]}\t#{pegs[2]}"
	end

	puts "P1\tP2\tP3"
	
	puts "Do you want to (p)lay or (q)uit?"
	response = gets.chomp
end


binding.pry
