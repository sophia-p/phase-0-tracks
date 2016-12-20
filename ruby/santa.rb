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

	def signup
		puts "gender: #{@gender}"
		puts "ethnicity: #{@ethnicity}"
		puts "favorite reindeer: #{@reindeer_ranking}"
		puts "age: #{@age}"

	end
end

# drunk_frat_boy = Santa.new
# drunk_frat_boy.eat_milk_and_cookies("ginger snap")
# drunk_frat_boy.speak
# Chad = Santa.new("male", "white")
# Chad.signup
# Chad.eat_milk_and_cookies("winterdoodle")
# Chad.speak
# Chad.signup
santas = []
santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
p santas
