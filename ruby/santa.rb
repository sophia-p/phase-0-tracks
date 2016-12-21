# class: Santa
# methods: 
# 	speak (print "Ho, ho, ho! Haaaappy holidays!")
# 	eat_milk_and_cookies  (take a cookie type as a parameter and 
# 			print "That was a good <type of cookie here>!")
# 	initialize (print "Initializing Santa instance ...")

class Santa
	def initialize(gender,ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"	
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
		@age = 21
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_made_at(reindeer_name)
		move_back = @reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(move_back)
	end

	def signup
		puts "gender: #{@gender}"
		puts "ethnicity: #{@ethnicity}"
		puts "favorite reindeer: #{@reindeer_ranking}"
		puts "age: #{@age}"
	end

	#setter method
	def gender=(new_gender)
		@gender = new_gender
	end

	#getter method
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

# drunk_frat_boy = Santa.new
# drunk_frat_boy.eat_milk_and_cookies("ginger snap")
# drunk_frat_boy.speak
Chad = Santa.new("male", "white")
Chad.signup
Chad.eat_milk_and_cookies("winterdoodle")
Chad.speak
Chad.celebrate_birthday
Chad.get_made_at("Dancer")
Chad.gender = "too drunk"
Chad.signup
puts "#{Chad.ethnicity} #{Chad.age} year old Santa spotted at O'Mulligan's"
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

len = example_ethnicities.length - 1

# for i in 0..len
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	i+=1
# end
# puts "Using a for loop"
# p santas 

# i = 0
# while i <=len
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	i+=1
# end
# p santas










