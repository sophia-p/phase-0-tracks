# class: Santa
# methods: 
# 	speak (print "Ho, ho, ho! Haaaappy holidays!")
# 	eat_milk_and_cookies  (take a cookie type as a parameter and 
# 			print "That was a good <type of cookie here>!")
# 	initialize (print "Initializing Santa instance ...")

class Santa
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

	def initialize
		p "Initializing Santa instance..."
	end
end

drunk_frat_boy = Santa.new
drunk_frat_boy.eat_milk_and_cookies("ginger snap")
drunk_frat_boy.speak
Chad = Santa.new
Chad.eat_milk_and_cookies("winterdoodle")
Chad.speak
ObjectSpace.each_object(Santa) {|x| p x}