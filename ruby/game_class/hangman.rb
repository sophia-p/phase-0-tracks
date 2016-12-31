class Hangman
	attr_accessor :given_word, :guess_letter, :guess_counter
	attr_reader :dash_word
	def initialize(given_word)
		@given_word = given_word
		@guess_counter = given_word.length
	end

	def guesser(guess_letter)
		@guess_letter = guess_letter
		if @given_word.include? @guess_letter
			index = @given_word.index(@guess_letter)
			@guessing_word = @dash_word.delete_at(index)
			@guessing_word = @dash_word.insert(index, @guess_letter).join(' ')
		else
			@dash_word
		end
	end

	def check_word
		@dash_word = (@given_word.gsub(/\w/,'- ')).rstrip!.split(' ')
	end

end


#user interface

puts "Hello, User One, please type a word for User Two to guess."
game = Hangman.new(gets.chomp)

 
puts "Hello, User Two, your word is #{game.check_word}"
while game.guess_counter > 0
	puts "Guess a letter"
	guess = game.guesser(gets.chomp)
	puts "#{guess}"
	game.guess_counter -=1
end




