# module Shout
# 	def self.yell_angrily(words)
# 		words + '!!!' + ' :('
# 	end

# 	def self.yell_happily(words)
# 		'OMG ' + words.upcase + ' YESSSSSS'
# 	end
# end

# p Shout.yell_angrily("Uuuuuugh")
# p Shout.yell_happily("It's Caturday")

module Shout
	def yell(words)
		puts "#{words.upcase}!!!"
	end
end

class Airline_Passenger
	include Shout
end

class DMV_Customer
	include Shout
end

airline_passenger = Airline_Passenger.new
airline_passenger.yell("5 hour delay?")

dmv_customer = DMV_Customer.new
dmv_customer.yell("I've been waiting for 3 hours")


