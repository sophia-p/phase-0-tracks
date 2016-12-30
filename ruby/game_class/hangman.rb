class Hangman
	attr_accessor :given_word, :guess_letter
	attr_reader :dash_word
	def initialize(given_word)
		@given_word = given_word
	end

	def guesser(guess_letter)
		if @given_word.include? @guess_letter
			@dash_word = @dash_word.gsub('-',@guess_letter)
		end
	end

	def check_word
		@dash_word = @given_word.gsub(/\w/,'- ')
	end

end


#user interface

puts "Hello, User One, please type word for User Two to guess."
game = Hangman.new(gets.chomp)

puts "Hello, User Two, your word is #{game.check_word}. Start by guessing a letter"
guess = game.guesser(gets.chomp)



