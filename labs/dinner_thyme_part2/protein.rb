class Protein < Food
	attr_accessor :animal_type

	def initialize(animal_type, servings, calories, prep_time)
		@animal_type = animal_type
		@servings = servings
		@calories = calories
		@prep_time = prep_time
	end

	def to_s
		"It will take #{prep_time} minutes to prepare #{servings} servings of #{animal_type} for a total of #{calories} calories."
	end
end