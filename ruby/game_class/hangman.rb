class Hangman
	attr_accessor :given_word, :guess_letter
	attr_reader :dash_word
	def initialize(given_word)
		@given_word = given_word
		@dash_word = @given_word.gsub(/\w/,'-')
	end

	# def guesser
	# 	dash_word = given_word.each_char {|c| print c, '- ' }
	# end

	def check_word
		p "#{given_word} is #{given_word.length}"
	end

end


#user interface

puts "Hello, User One, please type word for User Two to guess."
game = Hangman.new(gets.chomp)

puts "Hello, User Two, your word is #{@dash_word}"

