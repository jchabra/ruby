class Carb < Food
	attr_accessor :grain_type

	def initialize(grain_type, servings, calories, prep_time)
		@grain_type = grain_type
		@servings = servings
		@calories = calories
		@prep_time = prep_time
	end

	def to_s
		"It will take #{prep_time} minutes to prepare #{servings} servings of #{grain_type} for a total of #{calories} calories."
	end
end
