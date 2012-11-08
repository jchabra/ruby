require 'pry'

class Employee #parent class
	attr_accessor :name, :employee_id
end

class Dev < Employee #parent class that is inherting from another parent class. *You can't inherit more than one class at the same time.
	attr_accessor :language #DRY = Do not repeat yourself. DO NOT repeate code. 
	def to_s
		"#{name} loves #{language}"
	end
end


class JuniorDev < Dev #since we shouldn't be repeating code, you create a parent class. Here JuniorDev is "inheriting it." 
	def fix_bugs
		puts "#{name} with an id of #{employeee_id} loves #{language} is fixing bugs."
	end
end

class SeniorDev < Dev
	def delegate_bug_fixing
		puts "#{name} with an id of #{employeee_id} loves #{language} is telling jr devs to fix bugs."
	end
end

class QualityAssurance < Employee
	def spot_bugs
		puts "#{name} with an id of #{employeee_id} is spotting bugs."
	end
end

binding.pry




#-----iTerm ----
# j1 = JuniorDev.new
# => <JuniorDev.....>
# j1.class
# JuniorDev
# j1.class.ancestors
# JuniorDev, Dev, Employee #<--- it lists all of the classes it has inherited 




