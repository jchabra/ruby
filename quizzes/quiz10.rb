#prompt user for a number? 
puts "Input a number."
#that number will go into a variable called response
response = gets.to_i

#response.explode #this will cause an error, but there should be no error


begin
	total = response**2
rescue
	total.explode
	retry
end

puts "the square of #{response} is #{total}."
#"the square of (10) is (100)" -- figure out a way for it to say this without it blowing up



# PLEASE DON'T SHOW MY CODE TO THE CLASS. PLEASE!!! :-(



