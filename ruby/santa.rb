# class: Santa
# methods: 
# 	speak (print "Ho, ho, ho! Haaaappy holidays!")
# 	eat_milk_and_cookies  (take a cookie type as a parameter and 
# 			print "That was a good <type of cookie here>!")
# 	initialize (print "Initializing Santa instance ...")

class Santa
	attr_reader :ethnicity, :age, :reindeer_ranking
	attr_accessor :gender
	def initialize(gender,ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"	
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
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

	# #setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# #getter method
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end


santa = Santa.new("male", "white")
santa.signup
santa.eat_milk_and_cookies("winterdoodle")
santa.speak
santa.celebrate_birthday
santa.get_made_at("Dancer")
santa.gender = "too drunk"
santa.signup
puts "#{santa.ethnicity}, #{santa.age} year old Santa spotted at O'Mulligan's"
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
len = example_ethnicities.length 

len.times.each do |i|
  santas << Santa.new(example_genders[i],example_ethnicities[i])
end

# len = example_ethnicities.length - 1

# for i in 0..len
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	i+=1
# end
# p santas

# santas.each do |santa|
# 	santa.celebrate_birthday
# 	santa.celebrate_birthday
# 	santa.signup
# end

# santas.each do |santa|
# 	20.times do
# 	santa.celebrate_birthday
# 	end
# 	santa.signup
# end

# santas.each do |santa|
# 	p santa.age
# end

# santas.each do |santa|
# 	santa.gender = "N/A"
# 	santa.signup
# end


# i = 0
# while i <=len
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# 	i+=1
# end
# p santas

50.times.each do |santa|
	santas << Santa.new(example_genders.sample,example_ethnicities.sample)
	end
santas.each do |santa|
	p "#{santa.ethnicity}, #{santa.gender}, #{santa.age} year old Santa seen drunk in Times Square with an equally drunk #{santa.reindeer_ranking.sample}"
	end












