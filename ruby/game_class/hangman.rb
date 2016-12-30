class Hangman
	attr_accessor :given_word, :guess_letter
	attr_reader :dash_word
	def initialize(given_word)
		@given_word = given_word
	end

	def guesser(guess_letter)
		@guess_letter = guess_letter
		if @given_word.include? @guess_letter
			@dash_word = @dash_word.split(' ')
			index = @given_word.index(@guess_letter)
			@guessing_word = @dash_word.delete_at(index)
			@guessing_word = @dash_word.insert(index, @guess_letter)
		end
		return @guessing_word.join(' ')
	end

	def check_word
		@dash_word = (@given_word.gsub(/\w/,'- ')).rstrip!
	end

end


#user interface

puts "Hello, User One, please type word for User Two to guess."
game = Hangman.new(gets.chomp)

puts "Hello, User Two, your word is #{game.check_word}. Start by guessing a letter"
guess = game.guesser(gets.chomp)

puts "Your word is now #{guess}"



