class JuniorDev
	attr_accessor :name, :employeee_id

	def fix_bugs
		puts "#{name} with an id of #{employeee_id} is fixing bugs."
	end
end

class SeniorDev
	attr_accessor :name, :employeee_id

	def delegate_bug_fixing
		puts "#{name} with an id of #{employeee_id} is telling jr devs to fix bugs."
	end
end