puts "(n)umber or (q)uit"
response = gets.chomp

while response != 'q'
	puts "you typed in #{response}"
#	response = response.to_i


	# ====== GUARDING AGAINST EXPLOSIONS =========
	begin #any code that might "blow up", put it between begin and rescue. For example, if the "response = response.to_i" 
		  #line isn't in there, then it will run anyway. 
		  puts "entering in begin"
	response.times { puts "x" }
	rescue #rescue will only run, if the code after begin "explodes"
		puts "entering in rescue"
		response = response.to_i
		retry #will create an infinite loop if the code btw begin and rescue is constantly exploding
	end
	#============================================

	# ========= CAUSING AN EXPLOSION =============
	if response == 'r'
		raise "looks like an error!" #raise -- raises an exception (causes an explosion). 
	end

	# ============================================

	puts "(n)umber or (q)uit"
	response = gets.chomp
end



