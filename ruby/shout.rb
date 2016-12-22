module Shout
	def self.yell_angrily(words)
		words + '!!!' + ' :('
	end

	def self.yell_happily(words)
		'OMG ' + words.upcase + ' YESSSSSS'
	end
end

p Shout.yell_angrily("Uuuuuugh")
p Shout.yell_happily("It's Caturday")