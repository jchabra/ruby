class Group
	attr_accessor :group_number, :group

	def initialize
		@group_number = group_number
		@group = []
	end

	def to_s
		"Group #{group_number}"
	end

end
